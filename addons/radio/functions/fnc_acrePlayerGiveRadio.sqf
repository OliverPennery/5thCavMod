#include "script_component.hpp"
params [["_group",group player]];

private _grp = [_group] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = CAV_Platoon;
};

if (GVAR(giveSoldiersRadios)) then {
    if (isNil {["ACRE_PRC343"] call acre_api_fnc_getRadioByType}) then {
        ACE_Player addItem "ACRE_PRC343";
    };
};
if (ACE_Player == leader ACE_Player && ((_grp select 5 == "Leadership" && GVAR(giveLeadersRadios)) || (_grp select 5 == "Asset" && GVAR(giveAssetsRadios)))) then {
    if (isNil {["ACRE_PRC152"] call acre_api_fnc_getRadioByType}) then {
        ACE_Player addItem "ACRE_PRC152";
    };
};

true
