#include "script_component.hpp"

params ["_group"];


private _groupId = ((groupId _group) splitString " ") joinString "";
//private _groupId = groupId _group;

if (count (_groupId splitString "-") == 1) exitwith{
	call(compile("CAV_" + _groupId))
};
