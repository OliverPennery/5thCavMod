#include "script_component.hpp"
#include "\A3\ui_f\hpp\defineDIKCodes.inc"

if (!hasInterface) then {
//Headless Code




} else {
//Client Code

GVAR(Markers) = [];
GVAR(selectionMode) = "group";
GVAR(selected) = false;

["Cav Mission Helper Menu", QGVAR(openMenu), ["Open Menu", "Key to open menu"], {
    createDialog QGVAR(main);
}, "", [DIK_F3, [true, false, false]]] call CBA_fnc_addKeybind;



};
