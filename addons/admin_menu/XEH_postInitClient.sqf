#include "script_component.hpp"
#include "\A3\ui_f\hpp\defineDIKCodes.inc"

// Exit on Headless as well
if (!hasInterface) exitWith {};

player setVariable [QGVAR(respawnTime), 99999, true];

[{
    if !(alive player)then{
        player setVariable [QGVAR(respawnTime), playerRespawnTime, true];
    };
}, 0, []] call CBA_fnc_addPerFrameHandler;

if GVAR(AM_Enable) then{
    ["ace_spectatorSet", {
        params ["_isSpectator", "_player"];
        if (_isSpectator and ((call BIS_fnc_admin != 0) or (GVAR(AM_Admin_UID) find (getPlayerUID player) != -1) or (hasInterface and isServer))) then {
            [{!isNull findDisplay 60000}, {
                findDisplay 60000 ctrlCreate [QGVAR(aceSpectator_button_openMenu), 312206];
            }, []] call CBA_fnc_waitUntilAndExecute;
        };
    }] call CBA_fnc_addEventHandler;

    ["ace_unconscious", {
        params ["_unit", "_unconscious"];
        if (_unit != ACE_player) exitWith {};

        if (_unconscious and ((call BIS_fnc_admin != 0) or (GVAR(AM_Admin_UID) find (getPlayerUID player) != -1) or (hasInterface and isServer))) then {
            [{
                private _display = uiNamespace getVariable "ace_common_dlgDisableMouse";
                !isNull _display
            }, {
                private _display = uiNamespace getVariable "ace_common_dlgDisableMouse";
                _display ctrlCreate [QGVAR(aceSpectator_button_openMenu), 312206];
            }, []] call CBA_fnc_waitUntilAndExecute;
        };
    }] call CBA_fnc_addEventHandler;

    ["Cav Admin Menu", QGVAR(openMenu), ["Open Menu", "Key to open menu"], {
        [GVAR(AM_Default_Menu)] call FUNC(toggleMenu);
    }, "", [DIK_F2, [true, false, false]]] call CBA_fnc_addKeybind;
};

[QGVAR(deleteZeus), {
    params ["_ownerPlayer"];
    deleteVehicle ace_zeus_zeus;
    ace_zeus_zeus = nil;
    SETPVAR(_ownerPlayer,GVAR(zeusEnabled),false);
}] call CBA_fnc_addEventHandler;

["ace_zeus_zeusCreated", {
    params ["_zeus"];
    _zeus addEventHandler ["CuratorObjectPlaced", {[_this select 1] call FUNC(zeusAddObject)}];
}] call CBA_fnc_addEventHandler;
