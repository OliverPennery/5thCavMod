#include "script_component.hpp"

setPlayerRespawnTime 99999;

[{[true] call ace_spectator_fnc_setSpectator;}, [], 0.5] call CBA_fnc_waitAndExecute;


switch (GVAR(CustomRespawnMode)) do {
	// --- Standard respawn_west ticket system
	case 0 :
	{
		[{
			if (alive player) then {
				SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				[_this select 1] call CBA_fnc_removePerFrameHandler;
			} else {
				_respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				if ([player,nil,true] call BIS_fnc_respawnTickets > 0) then {
					if (playerRespawnTime > 1) then {
						_respawnTime = _respawnTime - 1;
						setPlayerRespawnTime _respawnTime;
						SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
					};
				} else {
					setPlayerRespawnTime 99999;
				};
			};
		}, 1, []] call CBA_fnc_addPerFrameHandler;
	};

	// --- Universal vehicle deploy respawn, the vehicle need to be deployed to respawn
	case 1 :
	{
		[{
			if (alive player) then {
				SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				[_this select 1] call CBA_fnc_removePerFrameHandler;
			} else {
				_respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				if 	((GVAR(medVic) getVariable 'deployed') and ((side GVAR(medVic) == side player) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and (((count fullCrew [GVAR(medVic), "cargo", true]) - (count fullCrew [GVAR(medVic), "cargo"])) > 0) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
					if (playerRespawnTime > 1) then {
						_respawnTime = _respawnTime - 1;
						setPlayerRespawnTime _respawnTime;
						SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
					};
				} else {
					setPlayerRespawnTime 99999;
				};
			};
		}, 1, []] call CBA_fnc_addPerFrameHandler;
	};

	// --- Respawn using the RHS M1085A1P2B Medical Truck with its tent deploy system
	case 2 :
	{
		[{
			if (alive player) then {
				SETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				[_this select 1] call CBA_fnc_removePerFrameHandler;
			} else {
				_respawnTime = GETVAR(player,GVAR(playerRespawnTime),GVAR(RespawnTime));
				if ((GVAR(medVic) animationSourcePhase 'deploy_tent' == 1) and ((side GVAR(medVic) == side player) or (side GVAR(medVic) == civilian)) and (getDammage GVAR(medVic) != 1) and ([player,nil,true] call BIS_fnc_respawnTickets > 0)) then {
					if (playerRespawnTime > 1) then {
						_respawnTime = _respawnTime - 1;
						setPlayerRespawnTime _respawnTime;
						SETVAR(player,GVAR(playerRespawnTime),_respawnTime);
					};
				} else {
					setPlayerRespawnTime 99999;
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

[{
	if (alive player) then {
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	} else {
		if (playerRespawnTime > 900) then {
			systemChat "Respawn Unavailable";
		} else {
			format ["%1 Seconds Until Respawn!", (playerRespawnTime)] remoteExecCall ["systemChat", player];
		};
	};
},10 , []] call CBA_fnc_addPerFrameHandler;

[{(playerRespawnTime <= 0.2)}, {[false] call ace_spectator_fnc_setSpectator;}] call CBA_fnc_waitUntilAndExecute;
