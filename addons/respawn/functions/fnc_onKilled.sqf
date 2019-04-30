#include "script_component.hpp"

setPlayerRespawnTime 99999;

SETMVAR(GVAR(playerRespawnTime),GVAR(respawnTime));

[{[true] call ace_spectator_fnc_setSpectator;}, [], 0.5] call CBA_fnc_waitAndExecute;

if (alive player) then {
    [format ["%1 Respawn Time Failed To SET!", player]] remoteExecCall ["hint", 0];
};

[{
    if(GVAR(playerRespawnTime) < 0) then {
        setPlayerRespawnTime 0;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
},1,[]] call CBA_fnc_addPerFrameHandler;


switch (GVAR(CustomRespawnMode)) do {
    // --- Standard respawn_west ticket system
    case 0 :
    {
        [{
            if (alive player) then {
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETMVAR(GVAR(playerRespawnTime),GVAR(respawnTime));
                if ([player,nil,true] call BIS_fnc_respawnTickets > 0) then {
                    _respawnTime = _respawnTime - 1;
                    setPlayerRespawnTime _respawnTime;
                    SETMVAR(GVAR(playerRespawnTime),_respawnTime);
                    if (_respawnTime % 10 == 0) then {
                        format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                    };
                } else {
                    if (playerRespawnTime % 10 == 0) then {
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
        [{
            if (alive player) then {
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETMVAR(GVAR(playerRespawnTime),GVAR(respawnTime));
                if ((GETVAR(GVAR(medVic),GVAR(deployed),false)) and ((side GVAR(medVic) == (call ace_common_fnc_playerSide)) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
                    if (_respawnTime % 10 == 0) then {
                        format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                    };
                    _respawnTime = _respawnTime - 1;
                    SETMVAR(GVAR(playerRespawnTime),_respawnTime);
                } else {
                    if (playerRespawnTime % 10 == 0) then {
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
        [{
            if (alive player) then {
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETMVAR(GVAR(playerRespawnTime),GVAR(RespawnTime));
                if ((GVAR(medVic) animationSourcePhase 'deploy_tent' == 1) and ((side GVAR(medVic) == (call ace_common_fnc_playerSide)) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
                    _respawnTime = _respawnTime - 1;
                    SETMVAR(GVAR(playerRespawnTime),_respawnTime);
                    if (_respawnTime % 10 == 0) then {
                        format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                    };
                } else {
                    if (playerRespawnTime % 10 == 0) then {
                        systemChat "Respawn Unavailable";
                        setPlayerRespawnTime 99999;
                    };
                };
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;
    };

    case 3:
    {
        [{
            if (alive player) then {
                [_this select 1] call CBA_fnc_removePerFrameHandler;
            } else {
                private _respawnTime = GETMVAR(GVAR(playerRespawnTime),GVAR(RespawnTime));
                _respawnTime = _respawnTime - 1;
                SETMVAR(GVAR(playerRespawnTime),_respawnTime);
                if (_respawnTime % 10 == 0) then {
                    format ["%1 Seconds Until Respawn!", (_respawnTime)] remoteExecCall ["systemChat", player];
                };
            };
        }, 1, []] call CBA_fnc_addPerFrameHandler;
    };

    default {"Custom Respawn Error" remoteExecCall ["hint", 0];};
};

[{(playerRespawnTime <= 0.2)}, {[false] call ace_spectator_fnc_setSpectator;}] call CBA_fnc_waitUntilAndExecute;
