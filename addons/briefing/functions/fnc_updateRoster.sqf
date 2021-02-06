#include "script_component.hpp"

//systemChat "Update Roster";

_text = "<t size='1.5'>GROUP LEADERS + MEDICS</t><br /><br />";

_grps = allGroups select {side _x == (call ace_common_fnc_playerSide)};

_grps = _grps select {
    {
        [_x] call ace_common_fnc_isPlayer;
    } count units _x > 0;
};

{
    private _grp = [_x] call EFUNC(common,getGroup);
    private ["_sWFreq", "_lRFreq"];
    //systemChat str(_grp);
    if (!isNil {_grp}) then
    {
        _sWFreq = ((CAV_FREQS select 0) select (_grp select 3));
        _lRFreq = ((CAV_FREQS select 1) select (_grp select 4));
    } else {
        _sWFreq = "##";
        _lRFreq = "##";
    };

    _text = _text + format ["<t color='%3'>%1 - %2</t> - SW:%4 / LR:%5", (str(_x) select [2]), (name leader _x), ("#0080FF"), _sWFreq, _lRFreq] + "<br />";
    {
        if (([_x] call ace_medical_treatment_fnc_isMedic) && {_x != leader group _x}) then {
            _text = _text + format["<t color='%2'>|- %1 [M]</t>", (name _x), ("#B40404")] + "<br />";
        };
    } forEach units _x;
} forEach _grps;

((findDisplay 12) displayCtrl 31051) ctrlSetStructuredText (parseText _text);
