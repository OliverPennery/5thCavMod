#include "script_component.hpp"

params [["_playerSide", side ACE_Player]];

private _sideMultiplier = 0;

if (GVAR(difSideFreqs)) then {
    switch (_playerSide) do {
        case (west): {
            _sideMultiplier = 1;
        };
        case (east): {
            _sideMultiplier = 2;
        };
        case (independent): {
            _sideMultiplier = 3;
        };
        default {
            _sideMultiplier = 0;
        };
    };
};



["ACRE_PRC343", "default" ] call acre_api_fnc_setPreset;

["ACRE_PRC152", "default", QGVAR(radioPreset)] call acre_api_fnc_copyPreset;
["ACRE_PRC152", QGVAR(radioPreset), 1, "label", "Platoon 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 1, "frequencyRX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 1, "frequencyTX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 2, "label", "Platoon 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 2, "frequencyRX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 2, "frequencyTX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 3, "label", "Platoon 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 3, "frequencyRX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 3, "frequencyTX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 4, "label", "Vehicle 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 4, "frequencyRX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 4, "frequencyTX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 5, "label", "Vehicle 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 5, "frequencyRX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 5, "frequencyTX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 6, "label", "Air 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 6, "frequencyRX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 6, "frequencyTX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 7, "label", "Air 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 7, "frequencyRX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset), 7, "frequencyTX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(radioPreset)] call acre_api_fnc_setPreset;

["ACRE_PRC77", "default", QGVAR(radioPreset)] call acre_api_fnc_copyPreset;
["ACRE_PRC77", QGVAR(radioPreset), 1, "label", "Platoon 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset), 1, "frequencyRX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset), 1, "frequencyTX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset), 2, "label", "Platoon 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset), 2, "frequencyRX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset), 2, "frequencyTX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC77", QGVAR(radioPreset) ] call acre_api_fnc_setPreset;

["ACRE_PRC117F", "default", QGVAR(radioPreset)] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", QGVAR(radioPreset), 1, "label", "Platoon 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 1, "frequencyRX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 1, "frequencyTX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 2, "label", "Platoon 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 2, "frequencyRX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 2, "frequencyTX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 3, "label", "Platoon 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 3, "frequencyRX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 3, "frequencyTX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 4, "label", "Vehicle 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 4, "frequencyRX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 4, "frequencyTX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 5, "label", "Vehicle 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 5, "frequencyRX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 5, "frequencyTX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 6, "label", "Air 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 6, "frequencyRX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 6, "frequencyTX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 7, "label", "Air 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 7, "frequencyRX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset), 7, "frequencyTX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", QGVAR(radioPreset) ] call acre_api_fnc_setPreset;

["ACRE_PRC148", "default", QGVAR(radioPreset)] call acre_api_fnc_copyPreset;
["ACRE_PRC148", QGVAR(radioPreset), 1, "label", "Platoon 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 1, "frequencyRX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 1, "frequencyTX", 30+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 2, "label", "Platoon 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 2, "frequencyRX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 2, "frequencyTX", 31+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 3, "label", "Platoon 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 3, "frequencyRX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 3, "frequencyTX", 32+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 4, "label", "Vehicle 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 4, "frequencyRX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 4, "frequencyTX", 33+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 5, "label", "Vehicle 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 5, "frequencyRX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 5, "frequencyTX", 34+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 6, "label", "Air 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 6, "frequencyRX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 6, "frequencyTX", 35+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 7, "label", "Air 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 7, "frequencyRX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset), 7, "frequencyTX", 36+7*_sideMultiplier] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", QGVAR(radioPreset) ] call acre_api_fnc_setPreset;
