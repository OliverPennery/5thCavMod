#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

GVAR(aceEH) = ["ace_spectatorSet", {
    params ["_state","_player"];
    //exit on non-local
    if (_player != player) exitWith {};

    if (_state) then {
        [
            {!isNil QSGVAR(ace,spectator,uiDraw3D)},
            {
                removeMissionEventHandler ["Draw3D", SGVAR(ace,spectator,uiDraw3D)];
                SGVAR(ace,spectator,uiDraw3D) = addMissionEventHandler ["Draw3D", {call FUNC(draw3D)}];

                // register grenade track EH
                GVAR(grenadeTrackingEH) = [
                    QGVAR(addToGrenadeTracking), {
                        params [["_projectile", objNull, [objNull]],["_unit",objNull,[objNull]]];
                        if (SGVAR(ace,spectator,drawProjectiles) && {!isNull _projectile}) then {
                            if (count GVAR(grenadesToDraw) > MAX_GRENADES) then { GVAR(grenadesToDraw) deleteAt 0; };
                            GVAR(grenadesToDraw) pushBack _projectile;
                        };
                    }
                ] call CBA_fnc_addEventHandler;

                // register projectile track EH
                GVAR(projectileTrackingEH) = [
                    QGVAR(addToProjectileTracking), {
                        params [["_projectile", objNull, [objNull]],["_unit",objNull,[objNull]]];
                        if (SGVAR(ace,spectator,drawProjectiles) && {!isNull _projectile}) then {
                            if (count GVAR(projectilesToDraw) > MAX_PROJECTILES) then { GVAR(projectilesToDraw) deleteAt 0; };
                            GVAR(projectilesToDraw) pushBack [_projectile, [[getPosVisual _projectile, [1,0,0,0]]], _unit, (side _unit) call BIS_fnc_sideColor];
                        };
                    }
                ] call CBA_fnc_addEventHandler;

                // register advanced throwing EH
                GVAR(advancedThrowingEH) = [
                    QSGVAR(ace,advanced_throwing,throwFiredXEH), {
                        // Fire time used for unit icon highlighting
                        (_this select 0) setVariable [QGVAR(highlightTime), time + FIRE_HIGHLIGHT_TIME];

                        // add grenade to tracking
                        [QGVAR(addToGrenadeTracking), [_this select 6]] call CBA_fnc_localEvent;
                    }
                ] call CBA_fnc_addEventHandler;

                [SGVAR(ace,spectator,collectPFH)] call CBA_fnc_removePerFrameHandler;
                SGVAR(ace,spectator,collectPFH) = [{_this call FUNC(updateIconsToDraw)}, 0.2] call CBA_fnc_addPerFrameHandler;

                SGVAR(ace,spectator,drawProjectiles) = true;
            },
            []
        ] call CBA_fnc_waitUntilAndExecute;
    } else {
        // remove advanced throwing EH
        [QSGVAR(ace,advanced_throwing,throwFiredXEH), GVAR(advancedThrowingEH)] call CBA_fnc_removeEventHandler;
        GVAR(advancedThrowingEH) = nil;

        // remove projectile track EH
        [QGVAR(addToProjectileTracking), GVAR(projectileTrackingEH)] call CBA_fnc_removeEventHandler;
        GVAR(projectileTrackingEH) = nil;

        // remove grenade track EH
        [QGVAR(addToGrenadeTracking), GVAR(grenadeTrackingEH)] call CBA_fnc_removeEventHandler;
        GVAR(grenadeTrackingEH) = nil;
    };
}] call CBA_fnc_addEventHandler;
