
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
] call CBA_fnc_addSetting;

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
] call CBA_fnc_addSetting;
//TODO FIX CBA DROPDOWN
[
    QGVAR(Preset_Side),
    "LIST",
    [localize LSTRING(Preset_Side_DisplayName), localize LSTRING(Preset_Side_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Presets_Module_DisplayName)],
    [[0,1,2], ["West","East","Independent"], 0],
    true,
    {
        params ["_value"];
        GVAR(Preset_Side) = ["west","east","independent"] # _value;
    }
] call CBA_fnc_addSetting;
