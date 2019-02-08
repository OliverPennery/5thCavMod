#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_editIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;
private _time = 1;

if (!isNil "_editIdc") then {
    _time = parseNumber(([(ctrlParent (_btnControl # 0)), _editIdc] call FUNC(getEditData)) # 1);
};

if (count _id == 0) then{
    [_time] remoteExecCall ["setPlayerRespawnTime", 0];

    [format ["Set Everyones Respawn Time To %1", _time], 2] call FUNC(clientLog);
    [format ["%1 Set Everyones Respawn Time To %2", name player, _time], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    [_time] remoteExecCall ["setPlayerRespawnTime", _unit];

    [format ["%1 Set Respawn Time To %2", (name _unit), _time], 2] call FUNC(clientLog);
    [format ["%1 Set %2 Respawn Time To %3", name player, (name _unit), _time], 2, true] call FUNC(log);
};
