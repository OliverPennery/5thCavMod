#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if GVAR(BFT_Enable) then{
    [GVAR(BFT_Delay), GVAR(BFT_HideAi)] call FUNC(blueForceTrackingUpdate);
};
[GVAR(fTMarkers_Delay)] call FUNC(fTMarker);


switch (true) do {
    case (isFormationLeader player) : {
        player assignTeam "RED";
    };
    case ([player, 2] call ace_medical_treatment_fnc_isMedic) : {
        player assignTeam "GREEN";
    };
    case (rank player == "SERGEANT") : {
        player assignTeam "BLUE";
    };
    case ([player] call ace_medical_treatment_fnc_isMedic) : {
        player assignTeam "YELLOW";
    };
};
