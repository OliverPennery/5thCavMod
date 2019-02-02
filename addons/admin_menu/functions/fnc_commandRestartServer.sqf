#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#restartserver';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {[GVAR(ServerCommandPassword), '#restartserver'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #restartserver", 2] call FUNC(clientLog);
        [format ["%1 Ran #restartserver", name player], 2, true] call FUNC(log);

        serverCommand '#restartserver';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #restartserver", 2] call FUNC(clientLog);
        [format ["%1 Ran #restartserver", name player], 2, true] call FUNC(log);
        
        [GVAR(ServerCommandPassword), '#restartserver'] remoteExecCall ["serverCommand", 2];
        }];
};
