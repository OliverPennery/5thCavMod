#include "script_component.hpp"

private ["_toggle_button","_text"];

with uiNamespace do {
	waituntil {!isnull (findDisplay 46)};

	_toggle_button = (findDisplay 12) ctrlCreate [QGVAR(RscButton_31050), 31050];
	_toggle_button buttonSetAction QUOTE([] call FUNC(toggleRoster););
	while{_toggle_button == ((findDisplay 12) displayCtrl 31050)} do {
		if !(isNull ((findDisplay 12) displayCtrl 31051)) then {
			call FUNC(updateRoster);
		};
		sleep 5;
	};
};