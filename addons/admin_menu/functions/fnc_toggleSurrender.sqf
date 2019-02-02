#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        if (_x getVariable ["ace_captives_isSurrendering", false]) then{
            [_x, false] call ACE_captives_fnc_setSurrendered;
        }else{
            [_x, true] call ACE_captives_fnc_setSurrendered;
        };
    } forEach allPlayers - entities "HeadlessClient_F";
    ["Toggled Surrender For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Surrender For Everyone", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if (_unit getVariable ["ace_captives_isSurrendering", false]) then{
        //[_unit, false] call ACE_captives_fnc_setSurrendered;
        [_unit, false] remoteExecCall ["ACE_captives_fnc_setSurrendered", _unit];

        [format ["Toggled Surrender Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Surrender Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else{
        //[_unit, true] call ACE_captives_fnc_setSurrendered;
        [_unit, true] remoteExecCall ["ACE_captives_fnc_setSurrendered", _unit];

        [format ["Toggled Surrender On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Toggled Surrender On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
