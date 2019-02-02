#include "script_component.hpp"

params ["_btnControl"];

/* if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {serverCommand format ['#ban %1', (name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId))]; }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {[GVAR(ServerCommandPassword), (format ['#ban %1', (name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId))])] remoteExecCall ["serverCommand", 2];}];
}; */


if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
        [format ["Banned %1", name player, _unit], 2] call FUNC(clientLog);
        [format ["%1 banned %2", name player, _unit], 2, true] call FUNC(log);

        serverCommand format ['#exec ban %1', _unit];
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
        [format ["Banned %1", name player, _unit], 2] call FUNC(clientLog);
        [format ["%1 banned %2", name player, _unit], 2, true] call FUNC(log);

        [GVAR(ServerCommandPassword), (format ['#exec ban %1', _unit])] remoteExecCall ["serverCommand", 2];
        }];
};
