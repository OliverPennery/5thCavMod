#include "script_component.hpp"
{
    {
        deleteVehicle (call compile _x);
    }forEach (missionNamespace getVariable [QGVAR(zeusModules), []]);
    missionNamespace setVariable [QGVAR(zeusModules), [], true];
} remoteExecCall ["call", 2];
