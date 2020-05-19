#include script_component.hpp

params [["_playerSide",side ACE_Player]];

if (GVAR(Player_Preset_Enable)) exitWith {
    false
};

switch (_playerSide) do {
    case east: {
        ["ACRE_PRC343", "default2" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC77", "default2" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC117F", "default2" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC152", "default2" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC148", "default2" ] call acre_api_fnc_setPreset;
    };
    case west: {
        ["ACRE_PRC343", "default3" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC77", "default3" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC117F", "default3" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC152", "default3" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC148", "default3" ] call acre_api_fnc_setPreset;
    };
    case independent: {
        ["ACRE_PRC343", "default4" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC77", "default4" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC117F", "default4" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC152", "default4" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC148", "default4" ] call acre_api_fnc_setPreset;
    };
    default {
        ["ACRE_PRC343", "default" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC77", "default" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC117F", "default" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC152", "default" ] call acre_api_fnc_setPreset;
        ["ACRE_PRC148", "default" ] call acre_api_fnc_setPreset;
    };
};

if (!isNil {["ACRE_PRC343"] call acre_api_fnc_getRadioByType}) then {
    private _swradio = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType;
    private _srchannel = [_swradio] call acre_api_fnc_getRadioChannel;
    switch (_playerSide) do {
        case (west): {
            _srchannel = _srchannel + 16;
        };
        case (east): {
            _srchannel = _srchannel + 32;
        };
        case (independent): {
            _srchannel = _srchannel + 48;
        };
    };
    [_swradio,_srchannel] call acre_api_fnc_setRadioChannel;
};

true
