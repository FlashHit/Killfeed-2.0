local weaponTable = {
	["U_M16A4_M320_HE"] = "[M320]",
	["U_M16A4_M320_LVG"] = "[M320 LVG]",
	["U_M16A4_M320_SMK"] = "[M320 SMOKE]",
	["U_M16A4_M26_Flechette"] = "[M26 DART]",
	["U_M16A4_M26_Slug"] = "[M26 SLUG]",
	["U_M16A4_M26_Buck"] = "[M26 MASS]",
	["U_M16A4_M320_SHG"] = "[M320 BUCK]",
	["U_M416_M26_Slug"] = "[M26 SLUG]",
	["U_M416_M26_Frag"] = "[M26 FRAG]",
	["U_M416_M320_SHG"] = "[M320 BUCK]",
	["U_M416_M320_SMK"] = "[M320 SMOKE]",
	["U_M416_M26_Buck"] = "[M26 MASS]",
	["U_M416_M26_Flechette"] = "[M26 DART]",
	["U_M416_M320_LVG"] = "[M320 LVG]",
	["U_M416_M320_HE"] = "[M320]",
	["U_AEK971_M320_SHG"] = "[GP-30 DART]",
	["U_AEK971_M320_HE"] = "[GP-30]",
	["U_AEK971_M320_SMK"] = "[GP-30 SMOKE]",
	["U_AEK971_M320_LVG"] = "[GP-30 LVG]",
	["U_AN94_M320_HE"] = "[GP-30]",
	["U_AN94_M320_SMK"] = "[GP-30 SMOKE]",
	["U_AN94_M320_LVG"] = "[GP-30 LVG]",
	["U_AN94_M320_SHG"] = "[GP-30 BUCK]",
	["U_G3A3_M26_Frag"] = "[M26 FRAG]",
	["U_G3A3_M26_Buck"] = "[M26 MASS]",
	["U_G3A3_M26_Flechette"] = "[M26 DART]",
	["U_G3A3_M26_Slug"] = "[M26 SLUG]",
	["U_AK74M_M26Mass_Frag"] = "[M26 FRAG]",
	["U_AK74M_M26Mass"] = "[M26 MASS]",
	["U_AK74M_M26Mass_Slug"] = "[M26 SLUG]",
	["U_AK74M_M26Mass_Flechette"] = "[M26 DART]",
	["U_AK74M_M320_HE"] = "[GP-30]",
	["U_AK74M_M320_SHG"] = "[GP-30 DART]",
	["U_AK74M_M320_SMK"] = "[GP-30 SMOKE]",
	["U_AK74M_M320_LVG"] = "[GP-30 LVG]",
	["U_SCAR-L_M320_LVG"] = "[M320 LVG]",
	["U_SCAR-L_M26_Frag"] = "[M26 FRAG]",
	["U_SCAR-L_M26_Buck"] = "[M26 MASS]",
	["U_SCAR-L_M320_SHG"] = "[M320 BUCK]",
	["U_SCAR-L_M320_HE"] = "[M320]",
	["U_SCAR-L_M26_Slug"] = "[M26 SLUG]",
	["U_SCAR-L_M26_Flechette"] = "[M26 DART]",
	["U_SteyrAug_M26_Buck"] = "[M26 MASS]",
	["U_SteyrAug_M320_SMK"] = "[M320 SMOKE]",
	["U_SteyrAug_M26_Flechette"] = "[M26 DART]",
	["U_SteyrAug_M320_HE"] = "[M320]",
	["U_SteyrAug_M320_LVG"] = "[M320 LVG]",
	["U_SteyrAug_M26_Frag"] = "[M26 FRAG]",
	["U_SteyrAug_M26_Slug"] = "[M26 SLUG]",
	["U_SteyrAug_M320_SHG"] = "[M320 BUCK]",
	["U_M26Mass_Flechette"] = "[M26 DART]",
	["U_M26Mass_Slug"] = "[M26 SLUG]",
	["U_M26Mass"] = "[M26 MASS]",
	["U_M16A4_M26_Frag"] = "[M26 FRAG]",
	["U_M320_SMK"] = "[M320 SMOKE]",
	["U_M320_HE"] = "[M320]",
	["U_M26Mass_Frag"] = "[M26 FRAG]",
	["U_M320_SHG"] = "[M320 BUCK]",
	["U_M320_LVG"] = "[M320 LVG]",
	["U_Glock18"] = "[G18]",
	["U_Glock18_Silenced"] = "[G18 SUPP.]",
	["U_M15"] = "[M15 AT MINE]",
	["U_Knife"] = "[KNIFE]",
	["U_M4A1_RU"] = "[M4A1]",
	["U_M9_Silenced"] = "[M9 SUPP.]",
	["U_SG553LB"] = "[SG553]",
	["U_M39EBR"] = "[M39 EMR]",
	["U_L96"] = "[L96]",
	["U_MP5K"] = "[M5K]",
	["U_EODBot"] = "[EOD BOT]",
	["U_UGS"] = "[T-UGS]",
	["U_M1911_Tactical"] = "[M1911 S-TAC]",
	["U_SKS"] = "[SKS]",
	["U_ASVal"] = "[AS VAL]",
	["U_Ammobag"] = "[AMMO BOX]",
	["U_M240"] = "[M240B]",
	["U_870"] = "[870MCS]",
	["U_Pecheneg"] = "[PKP PECHENEG]",
	["U_QBU-88_Sniper"] = "[QBU-88]",
	["U_MP443"] = "[MP443]",
	["U_Jackhammer"] = "[MK3A1]",
	["U_M40A5"] = "[M40A5]",
	["U_RPG7"] = "[RPG-7V2]",
	["U_M27IAR_RU"] = "[M27 IAR]",
	["U_RPK-74M"] = "[RPK-74M]",
	["U_Claymore"] = "[M18 CLAYMORE]",
	["U_MK11"] = "[MK11 MOD 0]",
	["U_M9"] = "[M9]",
	["U_QBZ-95B"] = "[QBZ-95B]",
	["U_Taurus44"] = "[.44 MAGNUM]",
	["U_PP-19"] = "[PP-19]",
	["U_HK417"] = "[M417]",
	["U_M1911_Silenced"] = "[M1911 SUPP.]",
	["U_M93R_Laser"] = "[93R]",
	["U_SVD_US"] = "[SVD]",
	["U_C4"] = "[C4 EXPLOSIVES]",
	["U_M249"] = "[M249]",
	["U_SPAS12"] = "[SPAS-12]",
	["U_A91"] = "[A-91]",
	["U_MP443_Silenced"] = "[MP443 SUPP.]",
	["U_M67"] = "[M67 GRENADE]",
	["U_MK11_RU"] = "[MK11 MOD 0]",
	["U_M9_RU"] = "[M9]",
	["U_MP443_US"] = "[MP443]",
	["U_UMP45"] = "[UMP-45]",
	["U_FGM148"] = "[FGM-148 JAVELIN]",
	["U_Glock17_Silenced"] = "[G17C SUPP.]",
	["U_RadioBeacon"] = "[RADIO BEACON]",
	["U_P90"] = "[P90]",
	["U_MG36"] = "[MG36]",
	["U_LSAT"] = "[LSAT]",
	["U_SAIGA_20K"] = "[SAIGA 12K]",
	["U_PP2000"] = "[PP-2000]",
	["U_M98B"] = "[M98B]",
	["U_SOFLAM"] = "[SOFLAM]",
	["U_Taurus44_Silenced"] = "[.44 MAGNUM]",
	["U_AK74M"] = "[AK-74M]",
	["U_Medkit"] = "[MEDIC KIT]",
	["U_FAMAS"] = "[FAMAS]",
	["U_SteyrAug"] = "[AUG A3]",
	["U_M416"] = "[U_M416]",
	["U_Defib"] = "[DEFIBRILLATOR]",
	["U_KH2002"] = "[KH2002]",
	["U_L85A2"] = "[L85A2]",
	["U_AEK971"] = "[AEK-971]",
	["U_SCAR-L"] = "[SCAR-L]",
	["U_M4A1"] = "[M4A1]",
	["U_AKS74u_US"] = "[AKS-74u]",
	["U_SMAW"] = "[SMAW]",
	["U_HK53"] = "[G53]",
	["U_Glock17"] = "[G17C]",
	["U_L86"] = "[L86A2]",
	["U_M16A4"] = "[M16A3]",
	["U_Repairtool"] = "[REPAIR TOOL]",
	["U_SV98"] = "[SV98]",
	["U_MP443_TacticalLight"] = "[MP443 TACT.]",
	["U_SVD"] = "[SVD]",
	["U_Taurus44_Scoped"] = "[.44 SCOPED]",
	["U_Knife_Razor"] = "[ACB-90]",
	["U_FIM92"] = "[FIM-92 STINGER]",
	["U_F2000"] = "[F2000]",
	["U_M16_Burst"] = "[M16A4]",
	["U_M39EBR_Posh"] = "[M39 EMR]",
	["U_MagpulPDR"] = "[PDW-R]",
	["U_MP412Rex"] = "[MP412 REX]",
	["U_M1911"] = "[M1911]",
	["U_M1911_Lit"] = "[M1911 TACT.]",
	["U_AN94"] = "[AN-94]",
	["U_M60"] = "[M60E4]",
	["U_QBB-95"] = "[QBB-95]",
	["U_M4"] = "[M4]",
	["U_M27IAR"] = "[M27 IAR]",
	["U_Sa18IGLA"] = "[SA-18 IGLA]",
	["U_SCAR-H"] = "[SCAR-H]",
	["U_AKS74u"] = "[AKS-74u]",
	["U_RPK-74M_US"] = "[RPK-74M]",
	["U_M1014"] = "[M1014]",
	["U_USAS-12"] = "[USAS-12]",
	["U_M93R"] = "[93R]",
	["U_MAV"] = "[MAV]",
	["U_AK74M_US"] = "[AK-74M]",
	["U_M16A4_RU"] = "[M16A3]",
	["U_M9_TacticalLight"] = "[M9 TACT.]",
	["U_M224"] = "[M224 MORTAR]",
	["U_G36C"] = "[G36C]",
	["U_DAO-12"] = "[DAO-12]",
	["U_MP7"] = "[MP7]",
	["U_JNG90"] = "[JNG-90]",
	["U_Taurus44_GM"] = "[.44 MAGNUM]",
	["U_MP443_GM"] = "[MP443]",
	["U_M93R_GM"] = "[93R]",
	["U_P90_GM"] = "[P90]",
	["U_Type88"] = "[TYPE 88 LMG]",
	["U_MTAR"] = "[MTAR-21]",
	["U_ACR"] = "[ACW-R]",
	["U_Crossbow_Scoped_RifleScope"] = "[XBOW]",
	["U_G3A3"] = "[G3A3]",
	["U_Crossbow_Scoped_Cobra"] = "[XBOW]",
	["U_M9_GM"] = "[M9]",
}
local vehicleTable = {
	["LAV25"] = "[LAV-25]",
	["BMP2"] = "[BMP-2M]",
	["GAZ-3937_Vodnik"] = "[GAZ-3937 VODNIK]",
	["HumveeArmored"] = "[M1114 HMMWV]",
	["TOW2"] = "[M220 TOW LAUNCHER]",
	["Kornet"] = "[9M133 KORNET LAUNCHER]",
	["EODBot"] = "[EOD BOT]",
	["MAV"] = "[MAV]",
	["SOFLAM_Projectile"] = "[SOFLAM]",
	["RadioBeacon_Projectile"] = "[RADIO BEACON]",
	["T-UGS_Vehicle"] = "[T-UGS]",
	["9K22_Tunguska_M"] = "[9K22 TUNGUSKA-M]",
	["9K22_Tunguska_M_AI"] = "[9K22 TUNGUSKA-M]",
	["Humvee"] = "[M1114 HMMWV]",
	["A10_THUNDERBOLT"] = "[A-10 THUNDERBOLT]",
	["A10_THUNDERBOLT_spjet"] = "[A-10 THUNDERBOLT]",
	["AAV-7A1"] = "[AAV-7A1 AMTRAC]",
	["AH1Z"] = "[AH-1Z VIPER]",
	["AH1Z_coop"] = "[AH-1Z VIPER]",
	["AH6_Littlebird"] = "[AH-6J LITTLE BIRD]",
	["AH6_Littlebird_EQ"] = "[AH-6J LITTLE BIRD]",
	["BMP2_SP007"] = "[BMP-2M]",
	["Centurion_C-RAM"] = "[CENTURION C-RAM]",
	["Centurion_C-RAM_Carrier"] = "[CENTURION C-RAM]",
	["CivilianCar_03_Vehicle"] = "[CIVILIAN CAR]",
	["CivilianCar_03_Vehicle_SPJet"] = "[CIVILIAN CAR]",
	["AGM-144_Hellfire_TV"] = "[TV MISSILE]",
	["DeliveryVan_Vehicle"] = "[DELIVERY VAN]",
	["Dummy_AK74"] = "[AK-74M]",
	["Dummy_Flashbang"] = "[FLASHBANG]",
	["Dummy_HeliEngine"] = "[HELIENGINE]",
	["Dummy_HGrenade"] = "[M67 GRENADE]",
	["Dummy_RPG7"] = "[RPG-7V2]",
	["Dummy_SHG"] = "[M320 BUCK]",
	["Dummy_SVD"] = "[SVD]",
	["F16"] = "[F/A-18E SUPER HORNET]",
	["F18_Wingman"] = "[F/A-18E SUPER HORNET]",
	["GrowlerITV"] = "[GROWLER ITV]",
	["GrowlerITV_Valley"] = "[GROWLER ITV]",
	["HumveeArmored_hmg"] = "[M1114 HMMWV]",
	["Ka-60"] = "[KA-60 KASATKA]",
	["LAV_AD"] = "[LAV-AD]",
	["LAV25_AI"] = "[LAV-25]",
	["M1Abrams"] = "[M1 ABRAMS]",
	["M1Abrams_AI_SP007"] = "[M1 ABRAMS]",
	["M1Abrams_SP007"] = "[M1 ABRAMS]",
	["M1Abrams_SP_Rail"] = "[M1 ABRAMS]",
	["Mi28"] = "[MI-28 HAVOC]",
	["Pantsir-S1"] = "[PANTSIR-S1]",
	["Paris_SUV"] = "[SUV]",
	["Paris_SUV_Coop"] = "[SUV]",
	["Sniper_SUV"] = "[SUV]",
	["PoliceVan_Vehicle"] = "[POLICE VAN]",
	["RHIB"] = "[RHIB BOAT]",
	["Su-25TM"] = "[SU-25TM FROGFOOT]",
	["Su-35BM Flanker-E"] = "[SU-35BM FLANKER-E]",
	["Su37"] = "[SU-37]",
	["T90"] = "[T-90A]",
	["T90_SP007"] = "[T-90A]",
	["T90_T55_SP007"] = "[T-90A]",
	["TechnicalTruck"] = "[TECHNICAL TRUCK]",
	["TechnicalTruck_Restricted"] = "[TECHNICAL TRUCK]",
	["VDV Buggy"] = "[VDV Buggy]",
	["Venom"] = "[UH-1Y VENOM]",
	["Venom_coop"] = "[UH-1Y VENOM]",
	["Villa_SUV"] = "[SUV]",
	["Wz11_SP_Paris"] = "[Z-11W]",
	["2S25_SPRUT-SD"] = "[SPRUT-SD]",
	["AC130"] = "[GUNSHIP]",
	["HIMARS"] = "[M142]",
	["M1128-Stryker"] = "[M1128]",
	["QuadBike"] = "[QUAD BIKE]",
	["STAR_1466"] = "[BM-23]",
	["HumveeModified"] = "[PHOENIX]",
	["VanModified"] = "[RHINO]",
	["VodnikModified_V2"] = "[BARSUK]",
	["C130"] = "[GUNSHIP]",
	["Humvee_ASRAD"] = "[HMMWV ASRAD]",
	["KLR650"] = "[DIRTBIKE]",
	["LAV25_Paradrop"] = "[LAV-25]",
	["VodnikPhoenix"] = "[VODNIK AA]",
	["BTR90"] = "[BTR-90]",
	["DPV"] = "[DPV]",
	["F35B"] = "[F-35]",
	["SkidLoader"] = "[SKID LOADER]",
	["Z-11w"] = "[Z-11W]",
	    
}

Events:Subscribe('Player:Killed', function(p_Player, p_Inflictor, p_Position, p_Weapon, p_IsRoadKill, p_IsHeadShot, p_WasVictimInReviveState, p_Info)
	
	local args = {p_Player.name, p_Player.teamId, p_Player.squadId}
	local s_Inflictor
	
	if p_Inflictor ~= nil then
		
		s_Inflictor = p_Inflictor
		
	else
	
		s_Inflictor = p_Player
	
	end
		
	args[4] = s_Inflictor.name
	args[5] = s_Inflictor.teamId
	args[6] = s_Inflictor.squadId
	
	if p_Player.name == s_Inflictor.name then
		
		if p_Weapon == "Death" or p_Weapon == "DamageArea" or p_Weapon == "SoldierCollision" then
			args[7] = "IS NO MORE"
		else
			args[7] = "SUICIDE"
		end
		
	elseif p_Player.teamId == s_Inflictor.teamId then
	
		args[7] = "TEAMKILL"

	elseif s_Inflictor.controlledControllable ~= nil and s_Inflictor.controlledControllable.data:Is("VehicleEntityData") then
		
		args[7] = vehicleTable[VehicleEntityData(s_Inflictor.controlledControllable.data).controllableType:gsub(".+/.+/","")]
			
	else
		
		if p_Weapon == "Death" or p_Weapon == "DamageArea" or p_Weapon == "SoldierCollision" then
		
			args[7] = "KILLED"
		
		elseif p_Info.weaponUnlock ~= nil then
		
			args[7] = weaponTable[_G[p_Info.weaponUnlock.typeInfo.name](p_Info.weaponUnlock).debugUnlockId]
			
		else
		
			args[7] = p_Weapon
			
		end
		
	end
	
	args[8] = p_IsRoadKill
	args[9] = p_IsHeadShot
	args[10] = p_WasVictimInReviveState
	
	NetEvents:Broadcast('Killfeed', args)
	
end)

Events:Subscribe('Server:RoundOver', function(roundTime, winningTeam)
    NetEvents:Broadcast('Server:RoundOver')
end)

Events:Subscribe('Server:RoundReset', function()
    NetEvents:Broadcast('Server:RoundReset')
end)
