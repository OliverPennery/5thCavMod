#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand format ['#monitor %1', (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1402))];}];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {['bill', (format ['#monitor %1', (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1402))])] remoteExecCall ["serverCommand", 2];}];
}; */

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _cmd = (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1400));
        [format ["Ran #monitor %1", _cmd], 2] call FUNC(clientLog);
        [format ["%1 Ran #monitor %2", name player, _cmd], 2, true] call FUNC(log);

        serverCommand format ['#monitor %1', _cmd];
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _cmd = (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1400));
        [format ["Ran #monitor %1", _cmd], 2] call FUNC(clientLog);
        [format ["%1 Ran #monitor %2", name player, _cmd], 2, true] call FUNC(log);

        ['bill', (format ['#monitor %1', _cmd])] remoteExecCall ["serverCommand", 2];
        }];
};
