#include "script_component.hpp"
{
    if (GETVAR(_x,GVAR(zeusEnabled),false)) then {
        [QGVAR(deleteZeus), _x, _x] call CBA_fnc_targetEvent;
    };
} forEach (allPlayers - entities "HeadlessClient_F");
