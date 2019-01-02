#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

[[player, GVAR(NumberOfRespawns)] call BIS_fnc_respawnTickets] call BIS_fnc_MP;
setPlayerRespawnTime GVAR(RespawnTime);

if (GVAR(CustomRespawnMode) == 1) then {
	if (GETMVAR(GVAR(medVicString),objNull) == objNull) then {
		systemChat "medVic not found";
	} else {
		GVAR(medVic) = GETMVAR(GVAR(medVicString));
	};
	call FUNC(medDeploy);
};