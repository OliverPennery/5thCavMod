#include "script_component.hpp"

params [["_menu", QGVAR(main)]];

if (dialog) exitWith {
    //disableSerialization;

    private _display = uiNamespace getVariable QGVAR(currentDisplay);
    if (!isNil "_display") then {
        //closeDialog 31220;
        _display closeDisplay 1;
    };
};

[_menu] call FUNC(openMenu);
