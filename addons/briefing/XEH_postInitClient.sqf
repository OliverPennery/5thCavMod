#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if (GVAR(enableRoster)) then {
    [] spawn FUNC(initRoster);
};
