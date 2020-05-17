#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);
if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {
    if (GVAR(Player_Preset_Enable)) then {
        [] call FUNC(acreInit);
        [
            {[] call acre_api_fnc_isInitialized},
            {[] call FUNC(acrePlayerSetFreq);}
        ] call CBA_fnc_waitUntilAndExecute;
    };
};
