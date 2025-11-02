import React, { useEffect, useState } from 'react';

import './App.scss';

import clsx from 'clsx';
import headshotIcon from './assets/img/skull-crack.png';
import roadkillIcon from './assets/img/broken-bone.png';

/*
 * Debug
 */

/*
let debugMode: boolean = false;
if (!navigator.userAgent.includes('VeniceUnleashed')) {
    if (window.location.ancestorOrigins === undefined || window.location.ancestorOrigins[0] !== 'webui://main') {
        debugMode = true;
    }
}
*/

const App: React.FC = () => {
    const [feed, setFeed] = useState<Kill[]>([]);
    const [showFeed, setShowFeed] = useState<boolean>(false);

    /*
    const setRandomKill = () => {
        addKill({
            type: 'kill',
            playerName: 'test',
            inflictorName: 'test',
            playerRelation: 'enemy',
            inflictorRelation: 'friendly',
            weapon: '[MK11 MOD 0]',
            isRoadkill: Math.random() < 0.5,
            isHeadshot: Math.random() < 0.5,
        });
    };

    const setRandomConnect = () => {
        addKill({
            type: 'connect',
            playerName: 'test',
            playerRelation: 'enemy',
        });
    };

    const setRandomLeave = () => {
        addKill({
            type: 'left',
            playerName: 'test',
            playerRelation: 'friendly',
        });
    };
    */

    const addKill = (kill: Kill) => {
        setFeed((prevState: Kill[]) => [kill, ...prevState.slice(0, 3)]);
    };

    const getRelationClass = (relation: string) => {
        switch (relation) {
            case 'squad':
                return 'relationSquad';
            case 'enemy':
                return 'relationEnemy';
            default:
            case 'friendly':
                return 'relationFriendly';
        }
    };

    useEffect(() => {
        setShowFeed(true);

        const interval = setTimeout(() => {
            setShowFeed(false);
        }, 4000);

        return () => {
            clearTimeout(interval);
        };
    }, [feed]);

    /* Window */
    window.OnKill = (p_DataJson: any) => {
        p_DataJson = JSON.parse(p_DataJson);
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
    };

    window.OnConnected = (p_DataJson: any) => {
        p_DataJson = JSON.parse(p_DataJson);
        addKill({
            type: 'connect',
            playerName: p_DataJson.playerName,
            playerRelation: p_DataJson.playerRelation,
        });
    };

    window.OnLeft = (p_DataJson: any) => {
        p_DataJson = JSON.parse(p_DataJson);
        addKill({
            type: 'left',
            playerName: p_DataJson.playerName,
            playerRelation: p_DataJson.playerRelation,
        });
    };

    return (
        <>
            {/*
            {debugMode ? (
                <style
                    dangerouslySetInnerHTML={{
                        __html: `
                    body {
                        background: #333;
                    }

                    #debug {
                        display: flex;
                        opacity: 0.1;
                    }
                `,
                    }}
                />
            ) : null}
            <div id="debug">
                <a href="#" onClick={() => setRandomKill()}>
                    Random Kill
                </a>
                <a href="#" onClick={() => setRandomConnect()}>
                    Random Connect
                </a>
                <a href="#" onClick={() => setRandomLeave()}>
                    Random Leave
                </a>
            </div>
            */}
            <div id="VuKillfeed" className={showFeed ? 'showFeed' : ''}>
                {feed.map((kill: Kill, index: number) => (
                    <div className="feedItem" key={index}>
                        {kill.type === 'kill' ? (
                            <>
                                <span className={clsx('inflictor', getRelationClass(kill.inflictorRelation as string))}>
                                    {kill.inflictorName}
                                </span>
                                {!kill.isRoadkill ? (
                                    <>
                                        <span className="weapon">
                                            {kill.weapon}
                                            {kill.isHeadshot ? (
                                                <span className="icon">
                                                    <img src={headshotIcon} alt="" />
                                                </span>
                                            ) : null}
                                        </span>
                                    </>
                                ) : (
                                    <span className="weapon">
                                        [Roadkill]
                                        <span className="icon">
                                            <img src={roadkillIcon} alt="" />
                                        </span>
                                    </span>
                                )}
                                <span className={clsx('player', getRelationClass(kill.playerRelation))}>
                                    {kill.playerName}
                                </span>
                            </>
                        ) : (
                            <>
                                <span className={clsx('player', getRelationClass(kill.playerRelation))}>
                                    {kill.playerName}
                                </span>
                                {kill.type === 'connect' ? (
                                    <span className="weapon">CONNECTED</span>
                                ) : (
                                    <span className="weapon">DISCONNECTED</span>
                                )}
                            </>
                        )}
                    </div>
                ))}
            </div>
        </>
    );
};

export default App;

declare global {
    interface Window {
        OnKill: (p_DataJson: unknown) => void;
        OnConnected: (p_DataJson: unknown) => void;
        OnLeft: (p_DataJson: unknown) => void;
    }
}
