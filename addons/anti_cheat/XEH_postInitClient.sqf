#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);

if GVAR(AA_Enable) then{
    [GVAR(AA_AK_Enable), GVAR(AA_AK_Amt)] call FUNC(arsenalChecker);
};
