#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);
if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {
    [
        {[] call acre_api_fnc_isInitialized},
        {
            [] call FUNC(acrePlayerGiveRadio);
            if (GVAR(Player_Preset_Enable)) then {
                [] call FUNC(acreInit);
                [] call FUNC(acrePlayerSetFreq);
            } else {
                if (GVAR(difSideFreqs)) then {
                    [] call FUNC(acreDifSideFreqs);
                };
            };
        }
    ] call CBA_fnc_waitUntilAndExecute;
};
