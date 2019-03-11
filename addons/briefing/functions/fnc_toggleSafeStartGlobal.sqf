#include "script_component.hpp"

params ["_enable"];

if (_enable) then {
    SETMPVAR(GVAR(safeStartEnabled),true);
    true remoteExecCall [QFUNC(toggleSafeStartLocal), 0, true];
    [{
        if (!(GETMVAR(GVAR(safeStartEnabled),true))) exitWith {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
        format ["Safe Start Enabled. %1 minutes have pased since mission start.",round (time/60)] remoteExecCall ["hintSilent", 0];
    },30,[]] call CBA_fnc_addPerFrameHandler;
} else {
    SETMPVAR(GVAR(safeStartEnabled),false);
    false remoteExecCall [QFUNC(toggleSafeStartLocal), 0, true];
    "Safe Start Disabled. Stay Safe!" remoteExecCall ["hintSilent", 0];
};
