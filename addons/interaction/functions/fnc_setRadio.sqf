#include "script_component.hpp"

params ["_target"];

if (!GVAR(switchFreqOnJoin)) exitwith {
    false
};

private _group = group _target;

if (!isClass (configFile >> "CfgPatches" >> "cav_radio") || isNil {(_group call EFUNC(common,getGroup))}) exitwith {
    false
};

[_group, true] call EFUNC(radio,playerSetFreq);
