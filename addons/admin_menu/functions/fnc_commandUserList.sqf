#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#userlist';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#userlist'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #userlist", 2] call FUNC(clientLog);
        [format ["%1 Ran #userlist", name player], 2, true] call FUNC(log);

        serverCommand '#userlist';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #userlist", 2] call FUNC(clientLog);
        [format ["%1 Ran #userlist", name player], 2, true] call FUNC(log);
        
        ['bill', '#userlist'] remoteExecCall ["serverCommand", 2];
        }];
};
