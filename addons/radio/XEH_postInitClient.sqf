#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if GVAR(Player_Preset_Enable) then{
    [] call FUNC(playerSetFreq);
};
if GVAR(Vehicler_Preset_Enable) then{
    [GVAR(Preset_Side)] call FUNC(vehicleSetFreq);
};
