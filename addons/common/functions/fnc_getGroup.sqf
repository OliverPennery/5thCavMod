#include "script_component.hpp"

params ["_group"];


private _groupId = "CAV_" + (((groupId _group) splitString " ") joinString "");

if (_groupId in CAV_GROUP_LIST) exitwith{
    call(compile(_groupId))
};
