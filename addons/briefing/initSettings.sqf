[
    QGVAR(enableRoster),
    "CHECKBOX",
    [localize LSTRING(enableRoster), localize LSTRING(enableRoster_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Roster)],
    true,
    false,
    {
        params ["_value"];
        GVAR(enableRoster) = _value;
    }
] call CBA_fnc_addSetting;
[
    QGVAR(enableSafeStart),
    "CHECKBOX",
    [localize LSTRING(enableSafeStart), localize LSTRING(enableSafeStart_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(SafeStart)],
    false,
    true,
    {
        params ["_value"];
        GVAR(enableSafeStart) = _value;
    }
] call CBA_fnc_addSetting;
