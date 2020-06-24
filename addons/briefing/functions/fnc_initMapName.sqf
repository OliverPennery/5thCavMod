#include "script_component.hpp"

[
{!isnull (findDisplay 46)},
{
    with uiNamespace do {
        private _mapNameControl = (findDisplay 12) ctrlCreate [QGVAR(mapName), 31060];
        private _worldName = getText (configFile >> "CfgWorlds" >> worldName >> "description");
        _mapNameControl ctrlSetText _worldName;
    };
},
[]
] call CBA_fnc_waitUntilAndExecute;
