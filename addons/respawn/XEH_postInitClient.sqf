#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

[[player, GVAR(NumberOfRespawns)] call BIS_fnc_respawnTickets] call BIS_fnc_MP;
setPlayerRespawnTime GVAR(RespawnTime);
