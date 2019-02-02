#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    _vics = [];
    {
        if (isPlayer _x and !isNull objectParent _x) then {
            _vic = vehicle _x;
            if !(_vic in _vics) then {
                _vics pushBack _vic
            }
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    {
        if (!isDamageAllowed _x) then{
            _x allowDamage true;
        }else {
            if (isDamageAllowed _x) then {
                _x allowDamage false;
            };
        };
    } forEach _vics;
    ["Toggled Everyones Vehicle Damage!", 2] call FUNC(clientLog);
    [format ["%1 Toggled Everyones Vehicle Damage", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if (!isNull objectParent _unit) then {
        _vic = vehicle _unit;
        if (!isDamageAllowed _vic) then
        {
            _vic allowDamage true;
            [format ["Toggled %1 Vehicle Damage On!", (name _unit)], 2] call FUNC(clientLog);
            [format ["%1 Toggled %2 Vehicle Damage On", name player, (name _unit)], 2, true] call FUNC(log);
        }else {
            _vic allowDamage false;
            [format ["Toggled %1 Vehicle Damage Off!", (name _unit)], 2] call FUNC(clientLog);
            [format ["%1 Toggled %2 Vehicle Damage Off", name player, (name _unit)], 2, true] call FUNC(log);
        };
    }else{
        [format ["%1 Not In Vehicle!", (name _unit)], 0] call FUNC(clientLog);
        [format ["%1 Tried To %2 Toggle Vehicle", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
