#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _unit = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _unit == 0) then{
    {
        if (isPlayer _x and !isDamageAllowed _x) then
        {
            _x allowDamage true;
        }else {
            if (isPlayer _x and isDamageAllowed _x) then {
                _x allowDamage false;
            };
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Toggled Damage For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Damage For Everyone", name player], 2, true] call FUNC(log);
}else{
    _unit = _unit call BIS_fnc_objectFromNetId;
    if (!isDamageAllowed _unit) then
    {
        _unit allowDamage true;

        [format ["Toggled Damage On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Damage On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else {
        _unit allowDamage false;
        
        [format ["Toggled Damage Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Damage Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
