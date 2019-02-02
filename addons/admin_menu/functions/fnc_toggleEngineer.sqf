#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        if ([_x] call ace_repair_fnc_isEngineer) then{
            _x setVariable ["ACE_IsEngineer",0, true];
        }else{
            _x setVariable ["ACE_IsEngineer",1, true];
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Toggled Engineer For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Engineer For Everyone", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if ([_unit] call ace_repair_fnc_isEngineer) then{
        _unit setVariable ["ACE_IsEngineer",0, true];

        [format ["Toggled Engineer Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Engineer Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else{
        _unit setVariable ["ACE_IsEngineer",1, true];
        
        [format ["Toggled Engineer On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Engineer On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
