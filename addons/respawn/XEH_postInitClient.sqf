#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

setPlayerRespawnTime 99999;

if (GVAR(CustomRespawnMode) != 3) then {
    [[player, GVAR(NumberOfRespawns)] call BIS_fnc_respawnTickets] call BIS_fnc_MP;
};

if (GVAR(CustomRespawnMode) == 1 || GVAR(CustomRespawnMode) == 2) then {
    _medVic = call (compile GVAR(medVicString));
    //systemChat str(_medvic);
    if (isNull _medVic) then {
        systemchat localize LSTRING(medVic_errorMessage);
    } else {
        GVAR(medVic) = _medVic;
    };
    if (GVAR(CustomRespawnMode) == 1) then {
        call FUNC(medDeploy);
    };
};
