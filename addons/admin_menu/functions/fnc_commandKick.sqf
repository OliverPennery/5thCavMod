#include "script_component.hpp"

params ["_btnControl"];

if ((call BIS_fnc_admin) != 0) then {
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
        [format ["Kicked %1", name player, _unit], 2] call FUNC(clientLog);
        [format ["%1 Kicked %2", name player, _unit], 2, true] call FUNC(log);

        serverCommand format ['#kick %1', _unit];
        }];

}else{
    _btnControl ctrlAddEventHandler["ButtonClick", {
        private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
        [format ["Kicked %1", name player, _unit], 2] call FUNC(clientLog);
        [format ["%1 Kicked %2", name player, _unit], 2, true] call FUNC(log);
        
        [GVAR(ServerCommandPassword), (format ['#kick %1', _unit])] remoteExecCall ["serverCommand", 2];
        }];
};
