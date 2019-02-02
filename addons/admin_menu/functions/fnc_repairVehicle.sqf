#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _unit = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _unit == 0) then{
    {
        if (isPlayer _x and !isNull objectParent _x) then {
            (vehicle _x) setDamage 0;
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Repaired All Player's Vehicles", 2] call FUNC(clientLog);
    [format ["%1 Repaired All Player's Vehicles", name player], 2, true] call FUNC(log);
}else{
    _unit = _unit call BIS_fnc_objectFromNetId;
    if (!isNull objectParent _unit) then
    {
        (vehicle _unit) setDamage 0;
    };
    
    [format ["Repaired %1 Vehicle", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Repaired %2 Vehicle", name player, (name _unit)], 2, true] call FUNC(log);
};
