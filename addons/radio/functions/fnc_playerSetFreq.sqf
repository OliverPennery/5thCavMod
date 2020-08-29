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
        private _radio = call TFAR_fnc_activeSwRadio;
        private _settings = _radio call TFAR_fnc_getSwSettings;
        _settings set [0, (_grp select 4)];
        {(_settings select 2) set [_forEachIndex, _x]} forEach (_grp select 3);
        [_radio, _settings] call TFAR_fnc_setSwSettings;
    };

    [(call TFAR_fnc_activeSwRadio), (_grp select 4)] call TFAR_fnc_setSwChannel;

    if (call TFAR_fnc_haveLRRadio) then{
        private _radio = call TFAR_fnc_activeLrRadio;
        private _settings = _radio call TFAR_fnc_getLrSettings;
        _settings set [0, (_grp select 6)];
        {(_settings select 2) set [_forEachIndex, _x]} forEach (_grp select 5);
        [_radio, _settings] call TFAR_fnc_setLrSettings;
    };

    if (player == leader player) then {
        [(call TFAR_fnc_activeSwRadio), 0] call TFAR_fnc_setAdditionalSwChannel;
    };
};

if (_update) exitwith {
    (["Radio Frequencies Updated to ",_grp select 1] joinString "") remoteExec ["systemChat", player];
};

"Radio Frequencies set!" remoteExec ["systemChat", player];
