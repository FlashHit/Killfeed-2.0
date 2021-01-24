import React, { useEffect, useRef, useState } from "react";

import Kill from "./helpers/Kill";

import { username } from 'react-lorem-ipsum';

import './App.scss';

import headshot from "./assets/img/aim.svg";
import roadkill from "./assets/img/car-run-over-man.svg";

const App: React.FC = () => {
    /*
    * Debug
    */
    let debugMode: boolean = false;
    if (!navigator.userAgent.includes('VeniceUnleashed')) {
        if (window.location.ancestorOrigins === undefined || window.location.ancestorOrigins[0] !== 'webui://main') {
            debugMode = true;
        }
    }

    const [feed, setFeed] = useState<Kill[]>([]);
    const [showFeed, setShowFeed] = useState<boolean>(false);

    const setRandomKill = () => {
        addKill({
            type: 'kill',
            playerName: username(),
            inflictorName: username(),
            playerRelation: 'enemy',
            inflictorRelation: 'friendly',
            weapon: '[MK11 MOD 0]',
            isRoadkill: (Math.random() < 0.5),
            isHeadshot: (Math.random() < 0.5),
        });
    }

    const setRandomConnect = () => {
        addKill({
            type: 'connect',
            playerName: username(),
            playerRelation: 'enemy',
        });
    }

    const setRandomLeave = () => {
        addKill({
            type: 'left',
            playerName: username(),
            playerRelation: 'friendly',
        });
    }

    const addKill = (kill: Kill) => {
        setFeed((prevState: any) => [
            kill,
            ...prevState.slice(0, 3),
        ]);
    }

    const getRelationClass = (relation: string) => {
        switch (relation) {
            case "squad":
                return "relationSquad";
            case "enemy":
                return "relationEnemy";
            default:
            case "friendly":
                return "relationFriendly";
        }
    }
    
    var interval: any = null;
    useEffect(() => {
        if (interval !== null) {
            clearTimeout(interval);
        }

        setShowFeed(true);
        
        interval = setTimeout(() => {
            setShowFeed(false);
        }, 3000);

        return () => {
            clearTimeout(interval);
        }
    }, [feed]);

    /* Window */
    window.OnKill = (p_DataJson: any) => {
        addKill({
            type: 'kill',
            playerName: p_DataJson.playerName,
            playerRelation: p_DataJson.playerRelation,
            inflictorName: p_DataJson.inflictorName,
            inflictorRelation: p_DataJson.inflictorRelation,
            weapon: p_DataJson.weapon,
            isRoadkill: p_DataJson.isRoadkill,
            isHeadshot: p_DataJson.isHeadshot,
        });
    }

    window.OnConnected = (p_DataJson: any) => {
        addKill({
            type: 'connect',
            playerName: p_DataJson.playerName,
            playerRelation: p_DataJson.playerRelation,
        });
    }

    window.OnLeft = (p_DataJson: any) => {
        addKill({
            type: 'left',
            playerName: p_DataJson.playerName,
            playerRelation: p_DataJson.playerRelation,
        });
    }

    return (
        <>
            {debugMode &&
                <style dangerouslySetInnerHTML={{
                    __html: `
                    body {
                        background: #333;
                    }

                    #debug {
                        display: block !important;
                        opacity: 0.1;
                    }
                `}} />
            }
            <div id="debug">
                <button onClick={() => setRandomKill()}>Random Kill</button>
                <button onClick={() => setRandomConnect()}>Random Connect</button>
                <button onClick={() => setRandomLeave()}>Random Leave</button>
            </div>

            <div id="VuKillfeed" className={showFeed ? "showFeed" : "hideFeed"}>
                {feed.map((kill: Kill, index: number) => (
                    <div className="feedItem" key={index}>
                        {kill.type === 'kill'
                        ?
                            <>
                                <span className={"inflictor " + getRelationClass(kill.inflictorRelation)}>
                                    {kill.inflictorName}
                                </span>
                                {!kill.isRoadkill ?
                                    <>
                                        <span className={"weapon"}>
                                            {kill.weapon}
                                        </span>
                                        {kill.isHeadshot &&
                                            <span className={"icon isHeadshot"}>
                                                <img src={headshot} alt="isHeadshot" />
                                            </span>
                                        }
                                    </>
                                    :
                                    <span className={"icon isRoadkill"}>
                                        <img src={roadkill} alt="isRoadkill" />
                                    </span>
                                }
                                <span className={"player " + getRelationClass(kill.playerRelation)}>
                                    {kill.playerName}
                                </span>
                            </>
                        :
                            <>
                                <span className={"player " + getRelationClass(kill.playerRelation)}>
                                    {kill.playerName}
                                </span>
                                {kill.type === 'connect'
                                ?
                                    <span className={"weapon"}>
                                        CONNECTED
                                    </span>
                                :
                                    <span className={"weapon"}>
                                        DISCONNECTED
                                    </span>
                                }
                            </>
                        }
                    </div>
                ))}
            </div>
        </>
    );
};

export default App;

declare global {
    interface Window {
        OnKill: (p_DataJson: any) => void;
        OnConnected: (p_DataJson: any) => void;
        OnLeft: (p_DataJson: any) => void;
    }
}
