local s_EndOfRound = false
local s_LevelLoaded = true
local s_CumulatedTime = 0

NetEvents:Subscribe('Killfeed', function(p_Args)
	
	local s_PlayerName = p_Args[1]
	local s_PlayerTeam = p_Args[2]
	local s_PlayerSquad = p_Args[3]
	local s_InflictorName = p_Args[4]
	local s_InflictorTeam = p_Args[5]
	local s_InflictorSquad = p_Args[6]
	local s_Weapon = p_Args[7]
	local s_IsRoadKill = p_Args[8]
	local s_IsHeadShot = p_Args[9]
	local s_WasVictimInReviveState = p_Args[10]
	
	
	local s_LocalPlayer = PlayerManager:GetLocalPlayer()
	
	if s_LocalPlayer == nil then
		return
	end
	
	if s_LocalPlayer.name == s_PlayerName or s_LocalPlayer.name == s_InflictorName then
		return
	end
	
	local s_PlayerRelation = GetPlayerRelation(s_LocalPlayer.teamId, s_LocalPlayer.squadId, s_PlayerTeam, s_PlayerSquad)
	local s_InflictorRelation = GetPlayerRelation(s_LocalPlayer.teamId, s_LocalPlayer.squadId, s_InflictorTeam, s_InflictorSquad)
	
	local s_Table = {s_PlayerName, s_InflictorName, s_PlayerRelation, s_InflictorRelation, s_Weapon, s_IsRoadKill, s_IsHeadShot, s_WasVictimInReviveState}
	WebUI:ExecuteJS(string.format("OnKill('%s')", json.encode(s_Table)))
	
end)

Events:Subscribe('Player:Connected', function(p_Player)
	
	if s_EndOfRound then
		return
	end
	
	local s_LocalPlayer = PlayerManager:GetLocalPlayer()
	
	if s_LocalPlayer ~= nil and s_LocalPlayer.name ~= p_Player.name then
		
		local s_PlayerRelation = GetPlayerRelation(s_LocalPlayer.teamId, s_LocalPlayer.squadId, p_Player.teamId, p_Player.squadId)
		local s_Table = {p_Player.name, s_PlayerRelation}
		WebUI:ExecuteJS(string.format("OnConnected('%s')", json.encode(s_Table)))
	
	end
	
end)

Events:Subscribe('Player:Deleted', function(p_Player)
	
	if s_EndOfRound then
		return
	end
	
	local s_LocalPlayer = PlayerManager:GetLocalPlayer()
	
	if s_LocalPlayer ~= nil and s_LocalPlayer.name ~= p_Player.name then
		
		local s_PlayerRelation = GetPlayerRelation(s_LocalPlayer.teamId, s_LocalPlayer.squadId, p_Player.teamId, p_Player.squadId)
		local s_Table = {p_Player.name, s_PlayerRelation}
		WebUI:ExecuteJS(string.format("OnLeft('%s')", json.encode(s_Table)))
	
	end
	
end)

function GetPlayerRelation(p_LocalPlayerTeam, p_LocalPlayerSquad, p_PlayerTeam, p_PlayerSquad)
	-- Case spectator
	if p_LocalPlayerTeam == TeamId.TeamNeutral then
	
		if p_PlayerTeam == TeamId.Team1 then
			
			return "friendly"
		
		end
	
	-- Case same team
	elseif p_LocalPlayerTeam == p_PlayerTeam then
		
		if p_LocalPlayerSquad == p_PlayerSquad then
			return "squad"
		end
		
		return "friendly"
		
	end
	
	return "enemy"
	
end

NetEvents:Subscribe('Server:RoundOver', function()
    s_EndOfRound = true
end)

Events:Subscribe('Level:Destroy', function()
    s_EndOfRound = true
end)

Events:Subscribe('Level:Loaded', function()
	s_LevelLoaded = true
end)

-- We need 3 seconds more until we unlock the Player:Connected events
-- because it gets triggered after every mapload for all players
Events:Subscribe('Engine:Update', function(p_DeltaTime)
    
	if s_LevelLoaded == false then
		return
	end
	
	s_CumulatedTime = s_CumulatedTime + p_DeltaTime
	
	if s_CumulatedTime >= 3 then
	
		s_EndOfRound = false
		s_CumulatedTime = 0
		s_LevelLoaded = false
		
	end
	
end)

-- Block the kill feed
Hooks:Install('UI:CreateKillMessage', 1, function(p_Hook)
	p_Hook:Return()
end)