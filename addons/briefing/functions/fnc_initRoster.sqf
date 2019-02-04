#include "script_component.hpp"

private ["_toggle_button"];

[
{!isnull (findDisplay 46)},
{
    with uiNamespace do {
        _toggle_button = (findDisplay 12) ctrlCreate [QGVAR(RscButton_31050), 31050];
        _toggle_button buttonSetAction QUOTE([] call FUNC(toggleRoster););
    };
    [{
        _toggle_button = _this select 0 select 0;
        if !(isNull ((findDisplay 12) displayCtrl 31051)) then {
            //systemChat "Update Roster";
            call FUNC(updateRoster);
        };
        if (_toggle_button != ((findDisplay 12) displayCtrl 31050)) then {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    },5,[_toggle_button]] call CBA_fnc_addPerFrameHandler;
},
[]
] call CBA_fnc_waitUntilAndExecute;
