#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

setPlayerRespawnTime 99999;
[{time>0},{setPlayerRespawnTime 99999;},[]] call CBA_fnc_waitUntilAndExecute;

if (GVAR(CustomRespawnMode) != 3) then {
    [[player, GVAR(NumberOfRespawns)] call BIS_fnc_respawnTickets] call BIS_fnc_MP;
};
[{time>0},{
    if (GVAR(CustomRespawnMode) == 1 || GVAR(CustomRespawnMode) == 2) then {
        _medVic = call compile format["%1_%2",GVAR(medVicString),(call ace_common_fnc_playerSide)];
        if (isNil {_medVic}) then {
            _medVicgen = call (compile GVAR(medVicString));
            if (isNil {_medVicgen}) then {
                systemchat localize LSTRING(medVic_errorMessage);
                diag_log "No medvic found";
            } else {
                GVAR(medVic) = _medVicgen;
                diag_log "Setting Gen Medvic";
            };
        } else {
            GVAR(medVic) = _medVic;
            diag_log "Setting Side MedVic";
        };
        if (GVAR(CustomRespawnMode) == 1) then {
            call FUNC(medDeploy);
        };
    };
},[]] call CBA_fnc_waitUntilAndExecute;
