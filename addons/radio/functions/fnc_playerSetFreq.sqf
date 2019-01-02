#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: fn_setFreq.sqf

Author:
	Brecon

Description:
	Sets player frequencies and additional

Arguments:
	None

Return Value:
	None

Example:
	[] call b_fnc_setFreq;

 _____________________________________________________________________________*/

//private _grp = call(compile(str((group player)) select [2]));
private _grp = [(group player)] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = Platoon;
};
if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then{
	if (call TFAR_fnc_haveSWRadio) then{
		for "_i" from 0 to (count(_grp select 4)-1) do{
			[(call TFAR_fnc_activeSwRadio), (_i + 1), ((_grp select 4)select _i)] call TFAR_fnc_SetChannelFrequency;
		};
	};

	[(call TFAR_fnc_activeSwRadio), (_grp select 5)] call TFAR_fnc_setSwChannel;

	if (call TFAR_fnc_haveLRRadio) then{
		for "_i" from 0 to (count(_grp select 6)-1) do{
			[(call TFAR_fnc_activeLrRadio), (_i + 1), ((_grp select 6)select _i)] call TFAR_fnc_SetChannelFrequency;
		};

		[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, (_grp select 7)] call TFAR_fnc_setLrChannel;
	};

	if (player == leader player) then {
		[(call TFAR_fnc_activeSwRadio), 0] call TFAR_fnc_setAdditionalSwChannel;
	};
};

"Radio Frequencies set!" remoteExec ["systemChat", player];
