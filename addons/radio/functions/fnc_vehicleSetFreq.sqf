#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: fn_setFreq.sqf

Author:
	Brecon

Description:
	Sets Vehicle frequencies

Arguments:
	0: side 		<var>

Return Value:
	None

Example:
	[west] call b_fnc_setFreq;

 _____________________________________________________________________________*/

params ["_side"];

switch (_side) do {
	case west : {_side = "_bluefor"};
	case east : {_side = "_opfor"};
	default {_side = "_bluefor"};
};

{
	if (_x call TFAR_fnc_hasVehicleRadio) then
	{
		_x setVariable ["driver_radio_settings", [0,7,["30", "32", "34", "40", "42", "44", "50", "52", "54"],0,_side,-1,0,false],true];
		_x setVariable ["gunner_radio_settings", [0,7,["30", "32", "34", "40", "42", "44", "50", "52", "54"],0,_side,-1,0,false],true];
		_x setVariable ["commander_radio_settings", [0,7,["30", "32", "34", "40", "42", "44", "50", "52", "54"],0,_side,-1,0,false],true];
	};
} forEach vehicles;

format ["Vehicle Frequencies set to side %1", _side] remoteExec ["systemChat", 0];
