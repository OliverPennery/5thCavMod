#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        if (_x getVariable ["ace_captives_isHandcuffed", false]) then{
            [_x, false] call ACE_captives_fnc_setHandcuffed;
        }else{
            [_x, true] call ACE_captives_fnc_setHandcuffed;
        };
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Toggled Captive For Everyone", 2] call FUNC(clientLog);
    [format ["%1 Toggled Captive For Everyone", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if (_unit getVariable ["ace_captives_isHandcuffed", false]) then{
        //[_unit, false] call ACE_captives_fnc_setHandcuffed;
        [_unit, false] remoteExecCall ["ACE_captives_fnc_setHandcuffed", _unit];

        [format ["Unset Captive Off For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Unset Captive Off For %2", name player, (name _unit)], 2, true] call FUNC(log);
    }else{
        //[_unit, true] call ACE_captives_fnc_setHandcuffed;
        [_unit, true] remoteExecCall ["ACE_captives_fnc_setHandcuffed", _unit];

        [format ["Set Captive On For %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Set Captive On For %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
};
