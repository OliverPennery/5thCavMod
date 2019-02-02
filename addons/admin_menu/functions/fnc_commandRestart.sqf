#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#restart';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#restart'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #restart", 2] call FUNC(clientLog);
        [format ["%1 Ran #restart", name player], 2, true] call FUNC(log);

        serverCommand '#restart';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #restart", 2] call FUNC(clientLog);
        [format ["%1 Ran #restart", name player], 2, true] call FUNC(log);
        
        ['bill', '#restart'] remoteExecCall ["serverCommand", 2];
        }];
};
