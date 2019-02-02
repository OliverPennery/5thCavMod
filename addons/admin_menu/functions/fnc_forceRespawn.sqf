#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _parentDisplay = ctrlParent _btnControl;

private _id = ([_parentDisplay, _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        _x remoteExecCall ["forceRespawn", _x];
    } forEach playableUnits - entities "HeadlessClient_F";

    ["Forced Respawn Everyone!", 2] call FUNC(clientLog);
    [format ["%1 Forced Everyone To Respawn", name player], 2, true] call FUNC(log);
}else{
    _unit = _id call BIS_fnc_objectFromNetId;
    [_unit] remoteExecCall  ["forceRespawn", _unit];
    
    [format ["%1 Forced Respawned!", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Forced %2 To Respawn", name player, (name _unit)], 2, true] call FUNC(log);
};
