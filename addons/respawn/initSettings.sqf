[
    QGVAR(CustomRespawnMode),
    "LIST",
    [localize LSTRING(CustomRespawnMode_DisplayName), localize LSTRING(CustomRespawnMode_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Core_Module_DisplayName)],
    [[3,0,1,2],[LSTRING(CustomRespawnMode_3_DisplayName),LSTRING(CustomRespawnMode_0_DisplayName),LSTRING(CustomRespawnMode_1_DisplayName),LSTRING(CustomRespawnMode_2_DisplayName)],0],
    true,
    {
        params ["_value"];
        GVAR(CustomRespawnMode) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(NumberOfRespawns),
    "SLIDER",
    [localize LSTRING(NumberOfRespawns_DisplayName), localize LSTRING(NumberOfRespawns_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Core_Module_DisplayName)],
    [0,20,1,0],
    true,
    {
        params ["_value"];
        GVAR(NumberOfRespawns) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(RespawnTime),
    "SLIDER",
    [localize LSTRING(RespawnTime_DisplayName), localize LSTRING(RespawnTime_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)], localize LSTRING(Core_Module_DisplayName)],
    [1,600,60,0],
    true,
    {
        params ["_value"];
        GVAR(RespawnTime) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(MedVicString),
    "EDITBOX",
    [localize LSTRING(MedVic_DisplayName), localize LSTRING(MedVic_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)],localize LSTRING(Vehicle_Module_DisplayName)],
    ["medVic"],
    true,
    {
        params ["_value"];
        GVAR(MedVicString) = _value;
    }
] call CBA_fnc_addSetting;

[
    QGVAR(medVicDeployTime),
    "SLIDER",
    [localize LSTRING(medVicDeployTime_DisplayName), localize LSTRING(medVicDeployTime_Description)],
    [format ["5th Cav %1", localize LSTRING(Module_DisplayName)],localize LSTRING(Vehicle_Module_DisplayName)],
    [0.5,20,5,1],
    true,
    {
        params ["_value"];
        GVAR(medVicDeployTime) = _value;
    }
] call CBA_fnc_addSetting;
