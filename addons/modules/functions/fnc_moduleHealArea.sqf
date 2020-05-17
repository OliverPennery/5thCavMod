#include "script_component.hpp"

if (hasInterface && !isServer) exitWith {};

params [
    ["_logic",objNull,[objNull]],
    ["_units",[],[[]]],
    ["_activated", true]
];



if (_activated) then {
    private _area = _logic getVariable ["objectArea",[0,0,0,false,0]];

    if ((_area param [0, 0]) == 0) exitWith {WARNING_1("Bad size? %1",_area);};

    /* format ["%1\n%2\n%3\n%4\n%5", _logic,_units,_activated,_area,(getPos _logic)] remoteExec ["hint", 0]; */
    [{
        (_this select 0) params ["_area"];
        {
            /* [_x] call ace_medical_treatment_fnc_fullHealLocal; */
            [_x, _x] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal;
        }forEach (allPlayers inAreaArray _area);
    },1, [[(getPos _logic)] + _area]] call CBA_fnc_addPerFrameHandler;
};
