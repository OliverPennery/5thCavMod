#include "script_component.hpp"
#include "\A3\ui_f\hpp\defineDIKCodes.inc"

// Exit on Headless as well
if (!hasInterface) exitWith {};

[{
    player setVariable [QGVAR(respawnTime), playerRespawnTime, true];
}, 0, []] call CBA_fnc_addPerFrameHandler;

if GVAR(AM_Enable) then{
    ["ace_spectatorSet", {
        params ["_isSpectator", "_player"];
        if (_isSpectator and ((call BIS_fnc_admin != 0) or (GVAR(AM_Admin_UID) find (getPlayerUID player) != -1))) then {
            [{!isNull findDisplay 60000}, {
                findDisplay 60000 ctrlCreate [QGVAR(aceSpectator_button_openMenu), 312206];
            }, []] call CBA_fnc_waitUntilAndExecute;
        };
    }] call CBA_fnc_addEventHandler;

    ["Cav Admin Menu", QGVAR(openMenu), ["Open Menu", "Key to open menu"], {
        [GVAR(AM_Default_Menu)] call FUNC(toggleMenu);
    }, "", [DIK_F2, [true, false, false]]] call CBA_fnc_addKeybind;
};
