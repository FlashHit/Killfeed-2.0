interface Kill {
    type: string;
    playerName: string;
    inflictorName?: string;
    playerRelation: string;
    inflictorRelation?: string;
    weapon?: string;
    isRoadkill?: boolean;
    isHeadshot?: boolean;
}

export default Kill;
