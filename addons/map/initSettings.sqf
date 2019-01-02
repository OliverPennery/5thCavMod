
[
    QGVAR(BFT_Enable),
    "CHECKBOX",
    [localize LSTRING(BFT_Enable_DisplayName), localize LSTRING(BFT_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(BFT_Module_DisplayName)],
    false,
    true,
    {
        params ["_value"];
        GVAR(BFT_Enable) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(BFT_HideAi),
    "CHECKBOX",
    [localize LSTRING(BFT_HideAi_DisplayName), localize LSTRING(BFT_HideAi_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(BFT_Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(BFT_HideAi) = _value;
    }
] call CBA_Settings_fnc_init;

[
    QGVAR(BFT_Delay),
    "SLIDER",
    [localize LSTRING(BFT_Delay_DisplayName), localize LSTRING(BFT_Delay_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(BFT_Module_DisplayName)],
    [0, 300, 15, 1],
    true,
    {
        params ["_value"];
		GVAR(BFT_Delay) = _value;
    }
] call CBA_Settings_fnc_init;
[
    QGVAR(fTMarkers_Enabled),
    "CHECKBOX",
    [localize LSTRING(fTMarkers_Enabled_DisplayName), localize LSTRING(fTMarkers_Enabled_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(fTMarkers_Module_DisplayName)],
    [true],
    nil,
    {
        params ["_value"];
        GVAR(fTMarkers_Enabled) = _value;
    }
] call CBA_Settings_fnc_init;
[
    QGVAR(fTMarkers_Delay),
    "SLIDER",
    [localize LSTRING(fTMarkers_Delay_DisplayName), localize LSTRING(fTMarkers_Delay_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(fTMarkers_Module_DisplayName)],
    [0.2,20,1,1],
    nil,
    {
        params ["_value"];
        GVAR(fTMarkers_Delay) = _value;
    }
] call CBA_Settings_fnc_init;
[
    QGVAR(fTMarkers_ColorTeams),
    "CHECKBOX",
    [localize LSTRING(fTMarkers_ColorTeams_DisplayName), localize LSTRING(fTMarkers_ColorTeams_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(fTMarkers_Module_DisplayName)],
    [true],
    nil,
    {
        params ["_value"];
        GVAR(fTMarkers_ColorTeams) = _value;
    }
] call CBA_Settings_fnc_init;
