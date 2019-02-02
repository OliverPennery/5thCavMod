#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#unlock';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#unlock'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #unlock", 2] call FUNC(clientLog);
        [format ["%1 Ran #unlock", name player], 2, true] call FUNC(log);
        
        serverCommand '#unlock';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #unlock", 2] call FUNC(clientLog);
        [format ["%1 Ran #unlock", name player], 2, true] call FUNC(log);

        ['bill', '#unlock'] remoteExecCall ["serverCommand", 2];
        }];
};
