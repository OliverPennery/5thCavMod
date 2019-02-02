#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand format ['#debug %1', (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1401))];}];
}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {[GVAR(ServerCommandPassword), (format ['#debug %1', (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1401))])] remoteExecCall ["serverCommand", 2];}];
}; */


if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _cmd = (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1401));
        [format ["Ran #Debug %1", _cmd], 2] call FUNC(clientLog);
        [format ["%1 Ran #Debug %2", name player, _cmd], 2, true] call FUNC(log);

        serverCommand format ['#debug %1', _cmd];
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _cmd = (ctrlText ((ctrlParent (_this # 0)) displayCtrl 1401));
        [format ["Ran #Debug %1", _cmd], 2] call FUNC(clientLog);
        [format ["%1 Ran #Debug %2", name player, _cmd], 2, true] call FUNC(log);

        [GVAR(ServerCommandPassword), (format ['#debug %1', _cmd])] remoteExecCall ["serverCommand", 2];
        }];
};
