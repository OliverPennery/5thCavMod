#include "script_component.hpp"
params [["_group",group player],["_update",false],["_radioID",""]];

private _grp = [_group] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = CAV_Platoon;
};
private _srchannel = 1;
private _lrchannel = 1;
_srchannel = _grp select 3;
_lrchannel = _grp select 4;

if (_radioID != "") then {
    [_radioID, _srchannel] call acre_api_fnc_setRadioChannel;
} else {
    [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), _srchannel] call acre_api_fnc_setRadioChannel;
    [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _lrchannel] call acre_api_fnc_setRadioChannel;
};

if (_update) exitwith {
    (["Radio Channels Updated to ",_grp select 1] joinString "") remoteExec ["systemChat", player];
};

true
