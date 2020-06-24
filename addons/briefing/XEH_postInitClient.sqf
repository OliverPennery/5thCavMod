#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if (GVAR(enableRoster)) then {
    [] call FUNC(initRoster);
};

[] call FUNC(initMapName);
