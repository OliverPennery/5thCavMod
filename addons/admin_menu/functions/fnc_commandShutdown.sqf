#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#shutdown';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {[GVAR(ServerCommandPassword), '#shutdown'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #shutdown", 2] call FUNC(clientLog);
        [format ["%1 Ran #shutdown", name player], 2, true] call FUNC(log);

        serverCommand '#shutdown';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #shutdown", 2] call FUNC(clientLog);
        [format ["%1 Ran #shutdown", name player], 2, true] call FUNC(log);
        
        [GVAR(ServerCommandPassword), '#shutdown'] remoteExecCall ["serverCommand", 2];
        }];
};
