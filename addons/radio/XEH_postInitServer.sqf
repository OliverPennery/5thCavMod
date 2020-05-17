#include "script_component.hpp"

/*
if GVAR(Vehicler_Preset_Enable) then{
    [GVAR(Preset_Side)] call FUNC(vehicleSetFreq);
};
*/
if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {
    if (GVAR(Player_Preset_Enable)) then {
        [] call FUNC(acreInit);
    };
};
