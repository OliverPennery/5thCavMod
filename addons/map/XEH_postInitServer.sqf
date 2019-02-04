#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(giveGPS) != 0) then {
    [GVAR(giveGPS),GVAR(giveGPSAI)] call FUNC(giveGPS);
};
