#include "script_component.hpp"
/*_____________________________________________________________________________
@filename: fn_medDeploy.sqf

Author:
    Brecon

Description:
    Add actions to deploy and undeploy to a vehicle called medVic for respawns

 _____________________________________________________________________________*/

[
    GVAR(medVic),                                                                                                        // Object the action is attached to
    "Deploy",                                                                                                    // Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",    // Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",    // Progress icon shown on screen
    format["(((objectParent player) == %1) and !(missionNamespace getVariable ['%2', false]) and (getDammage %1 != 1))", GVAR(medVic), QGVAR(deployed)],        // Condition for the action to be shown
    format["(((objectParent player) == %1) and !(missionNamespace getVariable ['%2', false]) and (getDammage %1 != 1))", GVAR(medVic), QGVAR(deployed)],        // Condition for the action to progress
    {},                                                                                                            // Code executed when action starts
    {},                                                                                                            // Code executed on every progress tick
    {
    missionNamespace setVariable [QGVAR(deployed), true, true];
    [GVAR(medVic), 0] call FUNC(vehicleDeploy);
    /* [GVAR(medVic), "", 1] remoteExec [QFUNC(vehicleDeploy), 0]; */
    },                                                                                                            // Code executed on completion
    {},                                                                                                            // Code executed on interrupted
    [],                                                                                                            // Arguments passed to the scripts as _this select 3
    GVAR(medVicDeployTime),                                                                                        // Action duration [s]
    0,                                                                                                            // Priority
    false,                                                                                                        // Remove on completion
    false                                                                                                        // Show in unconscious state
] call BIS_fnc_holdActionAdd;

[
    GVAR(medVic),                                                                                                        // Object the action is attached to
    "Undeploy",                                                                                                    // Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",    // Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",    // Progress icon shown on screen
    format["(((objectParent player) == %1) and (missionNamespace getVariable ['%2', false]) and (getDammage %1 != 1))", GVAR(medVic), QGVAR(deployed)],        // Condition for the action to be shown
    format["(((objectParent player) == %1) and (missionNamespace getVariable ['%2', false]) and (getDammage %1 != 1))", GVAR(medVic), QGVAR(deployed)],        // Condition for the action to progress
    {},                                                                                                            // Code executed when action starts
    {},                                                                                                            // Code executed on every progress tick
    {
    missionNamespace setVariable [QGVAR(deployed), false, true];
    [GVAR(medVic), 1] call FUNC(vehicleDeploy);
    /* [GVAR(medVic), "", 0] remoteExec [QFUNC(vehicleDeploy), 0]; */
    },                                                                                                            // Code executed on completion
    {},                                                                                                            // Code executed on interrupted
    [],                                                                                                            // Arguments passed to the scripts as _this select 3
    GVAR(medVicDeployTime),                                                                                        // Action duration [s]
    0,                                                                                                            // Priority
    false,                                                                                                        // Remove on completion
    false                                                                                                        // Show in unconscious state
] call BIS_fnc_holdActionAdd;
