#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#debug off';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {[GVAR(ServerCommandPassword), '#debug off'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #debug off", 2] call FUNC(clientLog);
        [format ["%1 Ran #debug off", name player], 2, true] call FUNC(log);

        serverCommand '#debug off';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #debug off", 2] call FUNC(clientLog);
        [format ["%1 Ran #debug off", name player], 2, true] call FUNC(log);
        
        [GVAR(ServerCommandPassword), '#debug off'] remoteExecCall ["serverCommand", 2];
        }];
};
