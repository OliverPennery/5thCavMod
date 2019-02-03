#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if GVAR(BFT_Enable) then{
    [GVAR(BFT_Delay), GVAR(BFT_HideAi)] call FUNC(blueForceTrackingUpdate);
};
[GVAR(fTMarkers_Delay)] call FUNC(fTMarker);
