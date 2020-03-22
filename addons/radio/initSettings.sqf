
[
    QGVAR(Player_Preset_Enable),
    "CHECKBOX",
    [localize LSTRING(Player_Preset_Enable_DisplayName), localize LSTRING(Player_Preset_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(Player_Preset_Enable) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(Vehicler_Preset_Enable),
    "CHECKBOX",
    [localize LSTRING(Vehicler_Preset_Enable_DisplayName), localize LSTRING(Vehicler_Preset_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    false,
    true,
    {
        params ["_value"];
        GVAR(Vehicler_Preset_Enable) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(Preset_Side),
    "LIST",
    [localize LSTRING(Preset_Side_DisplayName), localize LSTRING(Preset_Side_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    [["west","east","resistance"], ["West","East","Independent"], 0],
    true,
    {
        params ["_value"];
		GVAR(Preset_Side) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(giveAssetsRadios),
    "CHECKBOX",
    [localize LSTRING(giveAssetsRadios_DisplayName), localize LSTRING(giveAssetsRadios_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(giveAssetsRadios) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(giveLeadersRadios),
    "CHECKBOX",
    [localize LSTRING(giveLeadersRadios_DisplayName), localize LSTRING(giveLeadersRadios_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(giveLeadersRadios) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(giveSoldiersRadios),
    "CHECKBOX",
    [localize LSTRING(giveSoldiersRadios_DisplayName), localize LSTRING(giveSoldiersRadios_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(giveSoldiersRadios) = _value;
    }
] call CBA_Settings_fnc_init;
