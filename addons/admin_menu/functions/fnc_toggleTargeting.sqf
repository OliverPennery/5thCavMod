#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _unit = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _unit == 0) then{
    {
        if (isPlayer _x and !captive _x) then
        {
            _x setCaptive true;
        }else {
            if (isPlayer _x and captive _x) then {
                _x setCaptive false;
            };
        };
    } forEach allPlayers - entities "HeadlessClient_F";
    ["Toggled Targeting for Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Targeting for Everyone", name player], 2, true] call FUNC(log);
}else{
    _unit = _unit call BIS_fnc_objectFromNetId;
    if (!captive _unit) then
    {
        //_unit setCaptive true;
        [_unit, true] remoteExecCall ["setCaptive", _unit];

        [format ["Toggled Targeting Off for %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Targeting Off for %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else {
        _unit setCaptive false;
        [_unit, false] remoteExecCall ["setCaptive", _unit];

        [format ["Toggled Targeting On for %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Targeting On for %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
