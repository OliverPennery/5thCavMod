#include "script_component.hpp"

["ACRE_PRC152", "default", QGVAR(preset152)] call acre_api_fnc_copyPreset;
["ACRE_PRC152", QGVAR(preset152), 1, "label", "Platoon 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 1, "frequencyRX", 30] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 1, "frequencyTX", 30] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 2, "label", "Platoon 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 2, "frequencyRX", 31] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 2, "frequencyTX", 31] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 3, "label", "Platoon 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 3, "frequencyRX", 32] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 3, "frequencyTX", 32] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 4, "label", "Vehicle"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 4, "frequencyRX", 40] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 4, "frequencyTX", 40] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 5, "label", "Vehicle 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 5, "frequencyRX", 41] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 5, "frequencyTX", 41] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 6, "label", "Air 1"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 6, "frequencyRX", 50] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 6, "frequencyTX", 50] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 7, "label", "Air 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 7, "frequencyRX", 51] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152), 7, "frequencyTX", 51] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", QGVAR(preset152)] call acre_api_fnc_setPreset;
