#include "script_component.hpp"

if GVAR(Vehicler_Preset_Enable) then{
    /* [GVAR(Preset_Side)] call FUNC(vehicleSetFreq); */
    "CAV_MOD: Vehicle Preset Disabled Temp!!" remoteExec ["systemChat", 0];
};
