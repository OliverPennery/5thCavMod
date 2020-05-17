#include "script_component.hpp"

if (hasInterface && !isServer) exitWith {};

params [
    ["_logic",objNull,[objNull]],
    ["_units",[],[[]]],
    ["_activated", true]
];



if (_activated) then {
    private _area = _logic getVariable ["objectArea",[0,0,0,false,0]];
    private _spDisable = _logic getVariable ["spDisable", true];

    if ((_area param [0, 0]) == 0) exitWith {WARNING_1("Bad size? %1",_area);};

    /* format ["%1\n%2\n%3\n%4\n%5\n%6", _logic,_units,_activated,_area,_spDisable,(getPos _logic)] remoteExec ["hint", 0]; */
    /* hint str (allVariables _logic); */

    if (_spDisable and !(isMultiplayer))then{
        [false] call EFUNC(briefing,toggleSafeStartGlobal);
    }else{
        private _trg = createTrigger ["EmptyDetector", (getPos _logic)];
        _trg setTriggerArea _area;
        _trg setTriggerActivation ["ANYPLAYER", "PRESENT", false];
        _trg setTriggerStatements ["this", QUOTE([false] call EFUNC(briefing,toggleSafeStartGlobal);),""];
    };

};
