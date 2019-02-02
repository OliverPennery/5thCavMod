#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand '#reassign';}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', '#reassign'] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #reassign", 2] call FUNC(clientLog);
        [format ["%1 Ran #reassign", name player], 2, true] call FUNC(log);

        serverCommand '#reassign';
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        ["Ran #reassign", 2] call FUNC(clientLog);
        [format ["%1 Ran #reassign", name player], 2, true] call FUNC(log);
        
        ['bill', '#reassign'] remoteExecCall ["serverCommand", 2];
        }];
};
