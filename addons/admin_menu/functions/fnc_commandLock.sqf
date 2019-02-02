#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#lock';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#lock'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #lock", 2] call FUNC(clientLog);
        [format ["%1 Ran #lock", name player], 2, true] call FUNC(log);

        serverCommand '#lock';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #lock", 2] call FUNC(clientLog);
        [format ["%1 Ran #lock", name player], 2, true] call FUNC(log);
        
        ['bill', '#lock'] remoteExecCall ["serverCommand", 2];
        }];
};
