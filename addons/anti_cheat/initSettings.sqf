
[
    QGVAR(AA_Enable),
    "CHECKBOX",
    [localize LSTRING(AA_Enable_DisplayName), localize LSTRING(AA_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AA_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(AA_Enable) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(AA_AK_Enable),
    "CHECKBOX",
    [localize LSTRING(AA_AK_Enable_DisplayName), localize LSTRING(AA_AK_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AA_Module_DisplayName)],
    false,
    true,
    {
        params ["_value"];
        GVAR(AA_AK_Enable) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(AA_AK_Amt),
    "SLIDER",
    [localize LSTRING(AA_AK_Amt_DisplayName), localize LSTRING(AA_AK_Amt_DisplayName)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AA_Module_DisplayName)],
    [0, 15, 3, 0],
    true,
    {
        params ["_value"];
		GVAR(AA_AK_Amt) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(AA_AK_XLA_Enable),
    "CHECKBOX",
    [localize LSTRING(AA_AK_XLA_Enable_DisplayName), localize LSTRING(AA_AK_XLA_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AA_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(AA_AK_XLA_Enable) = _value;
    }
] call CBA_Settings_fnc_init;
