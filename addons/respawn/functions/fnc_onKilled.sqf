#include "script_component.hpp"

setPlayerRespawnTime 99999;

[{[true] call ace_spectator_fnc_setSpectator;}, [], 0.5] call CBA_fnc_waitAndExecute;


switch (GVAR(CustomRespawnMode)) do {
    // --- Standard respawn_west ticket system
    case 0 :
    {
        SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
        [{
            if (alive player) then {
                SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                if ([player,nil,true] call BIS_fnc_respawnTickets > 0) then {
                    if (playerRespawnTime > 1) then {
                        _respawnTime = _respawnTime - 1;
                        setPlayerRespawnTime _respawnTime;
                        SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
                        if (_respawnTime % 10 == 0) then{
                            format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                        };
                    };
                } else {
                    if (playerRespawnTime % 10 == 0) then{
                        systemChat "Respawn Unavailable";
                        setPlayerRespawnTime 99999;
                    };
                };
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;
    };

    // --- Universal vehicle deploy respawn, the vehicle need to be deployed to respawn
    case 1 :
    {
        SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
        [player] remoteExecCall [QFUNC(addPlayerToQueue), 2];
        [{
            if (alive player) then {
                SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                if ((GETMVAR(GVAR(deployed),false)) and ((side GVAR(medVic) == (call ace_common_fnc_playerSide)) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and (((count fullCrew [GVAR(medVic), "cargo", true]) - (count fullCrew [GVAR(medVic), "cargo"])) > 0) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
                    if (_respawnTime > 1) then{
                        _respawnTime = _respawnTime - 1;
                        SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
                        if (_respawnTime % 10 == 0) then{
                            format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                        };
                    }else{
                        if ((CAV_DQ find player) == 0) then{
                            setPlayerRespawnTime 0;
                        }else{
                            private _place = (CAV_DQ find player);
                            if (_place != -1) then{
                                format ["You are place %1 in the queue.", _place] remoteExecCall ["systemChat", player];
                            }else{
                                format ["The respawn queue is broken with %1!", name player] remoteExecCall ["globalChat", 0];
                            }
                        };
                    };
                } else {
                    if (playerRespawnTime % 10 == 0) then{
                        systemChat "Respawn Unavailable";
                        setPlayerRespawnTime 99999;
                    };
                };
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;
    };

    // --- Respawn using the RHS M1085A1P2B Medical Truck with its tent deploy system
    case 2 :
    {
        SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
        [{
            if (alive player) then {
                SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
                if ((GVAR(medVic) animationSourcePhase 'deploy_tent' == 1) and ((side GVAR(medVic) == (call ace_common_fnc_playerSide)) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
                    if (playerRespawnTime > 1) then {
                        _respawnTime = _respawnTime - 1;
                        setPlayerRespawnTime _respawnTime;
                        SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
                        if (_respawnTime % 10 == 0) then{
                            format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                        };
                    };
                } else {
                    if (playerRespawnTime % 10 == 0) then{
                        systemChat "Respawn Unavailable";
                        setPlayerRespawnTime 99999;
                    };
                };
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;
    };

    case 3:
    {
        systemchat localize LSTRING(Disabled_errorMessage);
    };

    default {"Custom Respawn Error" remoteExecCall ["hint", 0];};
};

[{(playerRespawnTime <= 0.2)}, {[false] call ace_spectator_fnc_setSpectator;}] call CBA_fnc_waitUntilAndExecute;
