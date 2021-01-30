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
private _suc = false;
private _grp = [_group] call EFUNC(common,getGroup);
/* systemChat format["pSF: %1 - %2", _group, _grp]; */
if (isNil {_grp}) then {
    _grp = CAV_Platoon;
};
if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then{
    if (call TFAR_fnc_haveSWRadio) then{
        private _radio = call TFAR_fnc_activeSwRadio;
        private _settings = _radio call TFAR_fnc_getSwSettings;
        _settings set [0, (_grp select 3)];
        {(_settings select 2) set [_forEachIndex, _x]} forEach (CAV_FREQS select 0);
        [_radio, _settings] call TFAR_fnc_setSwSettings;
    };

    if (call TFAR_fnc_haveLRRadio) then{
        private _radio = call TFAR_fnc_activeLrRadio;
        private _settings = _radio call TFAR_fnc_getLrSettings;
        _settings set [0, (_grp select 4)];
        {(_settings select 2) set [_forEachIndex, _x]} forEach (CAV_FREQS select 1);
        [_radio, _settings] call TFAR_fnc_setLrSettings;
    };
    _suc = true;
};

if (_update && _suc) exitwith {
    (["Radio Frequencies Updated to ",_grp select 1] joinString "") remoteExec ["systemChat", player];
};

if (_suc) then{
    "Radio Frequencies set!" remoteExec ["systemChat", player];
}else{
    if (_update)then{
        "Radio Frequencies Fail to set!!" remoteExec ["systemChat", player];
        "Radio Frequencies Fail to set!!" remoteExec ["hint", player];
    }else{
        [_group, true] call FUNC(playerSetFreq);
    };
};
