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

params [["_group",group player],["_update",false]];
//private _grp = call(compile(str((group player)) select [2]));
private _grp = [_group] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = CAV_Platoon;
};
if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then{
	if (call TFAR_fnc_haveSWRadio) then{
		for "_i" from 0 to (count(_grp select 3)-1) do{
			[(call TFAR_fnc_activeSwRadio), (_i + 1), ((_grp select 3) select _i)] call TFAR_fnc_SetChannelFrequency;
		};
	};

	[(call TFAR_fnc_activeSwRadio), (_grp select 4)] call TFAR_fnc_setSwChannel;

	if (call TFAR_fnc_haveLRRadio) then{
		for "_i" from 0 to (count(_grp select 5)-1) do{
			[(call TFAR_fnc_activeLrRadio), (_i + 1), ((_grp select 5)select _i)] call TFAR_fnc_SetChannelFrequency;
		};

		[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, (_grp select 6)] call TFAR_fnc_setLrChannel;
	};

	if (player == leader player) then {
		[(call TFAR_fnc_activeSwRadio), 0] call TFAR_fnc_setAdditionalSwChannel;
	};
};

if (_update) exitwith {
    (["Radio Frequencies Updated to ",_grp select 1] joinString "") remoteExec ["systemChat", player];
};

"Radio Frequencies set!" remoteExec ["systemChat", player];
