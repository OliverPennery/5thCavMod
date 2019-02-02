#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _unit = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _unit == 0) then{
    {
        if (isPlayer _x and !isObjectHidden _x) then
        {
            [_x, true] remoteExecCall ["hideObjectGlobal", 2];
        }else {
            if (isPlayer _x and isObjectHidden _x) then {
                _x hideObjectGlobal false;
                [_x, false] remoteExecCall ["hideObjectGlobal", 2];
            };
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Toggled Invisable For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Invisable For Everyone", name player], 2, true] call FUNC(log);
}else{
    _unit = _unit call BIS_fnc_objectFromNetId;
    if (!isObjectHidden _unit) then
    {
        //_unit hideObjectGlobal true;
        [_unit, true] remoteExecCall ["hideObjectGlobal", 2];

        [format ["Toggled Invisable On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Invisable On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else {
        //_unit hideObjectGlobal false;
        [_unit, false] remoteExecCall ["hideObjectGlobal", 2];
        
        [format ["Toggled Invisable Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Invisable Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
