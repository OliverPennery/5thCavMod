[
    QGVAR(switchFreqOnJoin),
    "CHECKBOX",
    [localize LSTRING(switchFreqOnJoin), localize LSTRING(switchFreqOnJoin_Description)],
    format ["5th Cav %1", localize LSTRING(Module_DisplayName)],
    true,
    false,
    {
        params ["_value"];
        GVAR(switchFreqOnJoin) = _value;
    }
] call CBA_fnc_addSetting;
[
    QGVAR(allowSideEject),
    "CHECKBOX",
    [localize LSTRING(allowSideEject), localize LSTRING(allowSideEject_Description)],
    format ["5th Cav %1", localize LSTRING(Module_DisplayName)],
    true,
    true,
    {
        params ["_value"];
        GVAR(allowSideEject) = _value;
    }
] call CBA_fnc_addSetting;
