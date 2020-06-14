
[
    QGVAR(AM_Enable),
    "CHECKBOX",
    [localize LSTRING(AM_Enable_DisplayName), localize LSTRING(AM_Enable_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    true,
    false,
    {
        params ["_value"];
        GVAR(AM_Enable) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(ServerCommandPassword),
    "EDITBOX",
    [localize LSTRING(ServerCommandPassword_DisplayName), localize LSTRING(ServerCommandPassword_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(ServerCommandPassword) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Admin_UID),
    "EDITBOX",
    [localize LSTRING(AM_Admin_UID_DisplayName), localize LSTRING(AM_Admin_UID_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Admin_UID) = (_value splitString ",");
    }
] call CBA_fnc_addSetting;
//TODO FIX CBA DROPDOWN
[
    QGVAR(AM_Default_Menu),
    "LIST",
    [localize LSTRING(AM_Default_Menu_DisplayName), localize LSTRING(AM_Default_Menu_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    [[0,1,2,3,4,5,6,7],
     ["Main", "Commands", "Console", "Debug", "Functions", "Loadout Viewer", "Respawn", "SpecPort"],
     0],
    false,
    {
        params ["_value"];
        GVAR(AM_Default_Menu) = [QGVAR(main), QGVAR(commands), QGVAR(console), QGVAR(debug), QGVAR(functions), QGVAR(loadoutViewer), QGVAR(respawn),QGVAR(specPort)] # _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_1_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_1_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 1",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_1_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_1_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_1_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_1_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_2_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_2_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 2",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_2_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_2_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_2_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_2_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_3_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_3_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 3",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_3_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_3_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_3_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_3_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_4_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_4_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 4",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_4_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_4_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_4_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_4_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_5_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_5_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 5",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_5_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_5_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_5_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_5_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_6_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_6_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 6",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_6_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_6_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_6_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_6_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_7_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_7_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 7",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_7_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_7_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_7_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_7_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_8_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_8_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 8",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_8_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_8_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_8_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_8_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_9_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_9_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 9",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_9_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_9_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_9_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_9_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_10_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_10_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 10",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_10_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_10_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_10_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_10_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_11_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_11_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 11",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_11_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_11_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_11_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_11_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_12_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_12_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 12",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_12_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_12_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_12_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_12_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_13_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_13_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 13",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_13_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_13_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_13_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_13_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_14_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_14_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 14",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_14_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_14_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_14_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_14_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_15_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_15_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 15",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_15_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_15_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_15_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_15_Func) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_16_Name),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_16_Name_DisplayName), localize LSTRING(AM_Func_Btn_Name_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "Function 16",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_16_Name) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(AM_Func_Btn_16_Func),
    "EDITBOX",
    [localize LSTRING(AM_Func_Btn_16_Func_DisplayName), localize LSTRING(AM_Func_Btn_Func_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(AM_Module_DisplayName)],
    "",
    true,
    {
        params ["_value"];
        GVAR(AM_Func_Btn_16_Func) = _value;
    }
] call CBA_fnc_addSetting;
