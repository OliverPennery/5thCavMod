#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#missions';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#missions'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #missions", 2] call FUNC(clientLog);
        [format ["%1 Ran #missions", name player], 2, true] call FUNC(log);

        serverCommand '#missions';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #missions", 2] call FUNC(clientLog);
        [format ["%1 Ran #missions", name player], 2, true] call FUNC(log);
        
        ['bill', '#missions'] remoteExecCall ["serverCommand", 2];
        }];
};
