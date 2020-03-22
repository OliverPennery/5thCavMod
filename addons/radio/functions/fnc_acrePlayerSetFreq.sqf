#include "script_component.hpp"
params [["_group",group player],["_update",false],["_radioID",""]];

private _grp = [_group] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = CAV_Alpha1;
};
private _srchannel = 1;
private _lrchannel = 1;
_srchannel = _grp select 7;
_lrchannel = _grp select 8;

if (!update) then {
    if (ACE_Player == leader ACE_Player && ((_grp select 9 == "Leadership" && giveLeadersRadios) || (_grp select 9 == "Asset" && giveAssetsRadios))) then {
        ACE_Player addItem "ACRE_PRC152";
    };
    if (giveSoldiersRadios) then {
        ACE_Player addItem "ACRE_PRC343";
    };
};
if (_radioID != "") then {
    [_radioID, _srchannel] call acre_api_fnc_setRadioChannel;
} else {
    [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), _srchannel] call acre_api_fnc_setRadioChannel;
    [(["ACRE_PRC152"] call acre_api_fnc_getRadioByType), _lrchannel] call acre_api_fnc_setRadioChannel;
};
