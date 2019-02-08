#include "script_component.hpp"

params ["_btnControl"];

if !(missionNamespace getVariable [QEGVAR(respawn,deployed), false]) exitWith {
    missionNamespace setVariable [QEGVAR(respawn,deployed), true, true];
};
missionNamespace setVariable [QEGVAR(respawn,deployed), false, true];
