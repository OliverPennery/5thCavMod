#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(enableSafeStart)) then {
    [true] call FUNC(toggleSafeStartGlobal);
    //[{if (!(GETMVAR(safeStartEnabledServer,true))) then {false call FUNC(toggleSafeStartGlobal);};},[],120] call CBA_fnc_waitAndExecute;
};
