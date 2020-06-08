#include "script_component.hpp"

["ace_zeus_createZeus", {
    params ["_ownerPlayer"];
    SETPVAR(_ownerPlayer,GVAR(zeusEnabled),true);
}] call CBA_fnc_addEventHandler;
