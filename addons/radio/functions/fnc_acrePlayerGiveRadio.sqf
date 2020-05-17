#include "script_component.hpp"
params [["_group",group player]];

private _grp = [_group] call EFUNC(common,getGroup);
if (isNil {_grp}) then {
	_grp = CAV_Platoon;
};

if (ACE_Player == leader ACE_Player && ((_grp select 5 == "Leadership" && GVAR(giveLeadersRadios)) || (_grp select 5 == "Asset" && GVAR(giveAssetsRadios)))) then {
    ACE_Player addItem "ACRE_PRC152";
    systemChat "Gave player PRC152";
};
if (GVAR(giveSoldiersRadios)) then {
    ACE_Player addItem "ACRE_PRC343";
    systemChat "Gave Player PRC343";
};

true
