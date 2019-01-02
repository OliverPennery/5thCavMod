#include "script_component.hpp"

if GVAR(Vehicler_Preset_Enable) then{
    [GVAR(Preset_Side)] call FUNC(vehicleSetFreq);
};
