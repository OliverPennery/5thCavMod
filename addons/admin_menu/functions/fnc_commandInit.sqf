#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#init';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#init'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #init", 2] call FUNC(clientLog);
        [format ["%1 Ran #init", name player], 2, true] call FUNC(log);

        serverCommand '#init';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #init", 2] call FUNC(clientLog);
        [format ["%1 Ran #init", name player], 2, true] call FUNC(log);
        
        ['bill', '#init'] remoteExecCall ["serverCommand", 2];
        }];
};
