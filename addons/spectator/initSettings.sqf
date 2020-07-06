[
    QGVAR(enableUnitIcons),
    "CHECKBOX",
    [localize LSTRING(enableUnitIcons), localize LSTRING(enableUnitIcons_Description)],
    format ["5th Cav %1", localize LSTRING(Module_DisplayName)],
    true,
    false,
    {
        params ["_value"];
        GVAR(enableUnitIcons) = _value;
    }
] call CBA_fnc_addSetting;
[
    QGVAR(trackProjectilesOnOpen),
    "CHECKBOX",
    [localize LSTRING(trackProjectilesOnOpen), localize LSTRING(trackProjectilesOnOpen_Description)],
    format ["5th Cav %1", localize LSTRING(Module_DisplayName)],
    false,
    false,
    {
        params ["_value"];
        GVAR(trackProjectilesOnOpen) = _value;
    }
] call CBA_fnc_addSetting;
[
    QGVAR(showSpectatorList),
    "CHECKBOX",
    [localize LSTRING(showSpectatorList), localize LSTRING(showSpectatorList_Description)],
    format ["5th Cav %1", localize LSTRING(Module_DisplayName)],
    true,
    false,
    {
        params ["_value"];
        GVAR(showSpectatorList) = _value;
    }
] call CBA_fnc_addSetting;
