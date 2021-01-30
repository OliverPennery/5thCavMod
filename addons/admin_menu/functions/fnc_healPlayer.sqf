#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        ["ace_medical_treatment_fnc_fullHealLocal", _x, _x] call CBA_fnc_targetEvent;
        _x setDamage 0;
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Healed Everyone", 2] call FUNC(clientLog);
    [format ["%1 Healed Everyone", name player], 2, true] call FUNC(log);

}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    ["ace_medical_treatment_fnc_fullHealLocal", _unit, _unit] call CBA_fnc_targetEvent;
    _unit setDamage 0;

    [format ["Healed %1", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Healed %2", name player, (name _unit)], 2, true] call FUNC(log);
};
