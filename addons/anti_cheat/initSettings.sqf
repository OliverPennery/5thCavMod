
[
    QGVAR(AC_Enable),
    "CHECKBOX",
    [localize LSTRING(AC_Enable_DisplayName), localize LSTRING(AC_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Module_Description)],
    true,
    true,
    {
        params ["_value"];
        GVAR(AC_Enable) = _value;
    }
] call CBA_Settings_fnc_init;
