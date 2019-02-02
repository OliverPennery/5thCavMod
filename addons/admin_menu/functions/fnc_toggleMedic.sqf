#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        if ([_x] call ace_medical_fnc_isMedic) then{
            _x setVariable ["ace_medical_medicClass",0, true];
        }else{
            _x setVariable ["ace_medical_medicClass",1, true];
        };
    } forEach allPlayers - entities "HeadlessClient_F";
    
    ["Toggled Medic For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Medic For Everyone", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if ([_unit] call ace_medical_fnc_isMedic) then{
        _unit setVariable ["ace_medical_medicClass",0, true];

        [format ["Toggled Medic Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Medic Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else{
        _unit setVariable ["ace_medical_medicClass",1, true];

        [format ["Toggled Medic On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 SToggled Medic On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
