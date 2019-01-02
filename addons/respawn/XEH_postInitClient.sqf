#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if GVAR(AC_Enable) then{
    [] call FUNC(arsenalChecker);
};
