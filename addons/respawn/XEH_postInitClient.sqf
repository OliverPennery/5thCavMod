#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

[[player, GVAR(NumberOfRespawns)] call BIS_fnc_respawnTickets] call BIS_fnc_MP;
setPlayerRespawnTime GVAR(RespawnTime);

if (GVAR(CustomRespawnMode) == 1) then {
	if (isNull call (compile GVAR(medVicString))) then {
		systemchat localize LSTRING(medVic_errorMessage);
	} else {
		GVAR(medVic) = call (compile GVAR(medVicString));
	};
	call FUNC(medDeploy);
};