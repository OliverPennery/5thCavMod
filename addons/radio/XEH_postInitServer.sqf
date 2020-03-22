#include "script_component.hpp"

if GVAR(Vehicler_Preset_Enable) then{
    if (isClass (configfile >> "CfgPatches" >> "task_force_radio")) then {
        [GVAR(Preset_Side)] call FUNC(vehicleSetFreq);
    };
};
