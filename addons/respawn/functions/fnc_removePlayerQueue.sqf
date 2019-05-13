#include "script_component.hpp"

params ["_id"];

if (_id in CAV_DQ) exitWith{
    CAV_DQ deleteAt (CAV_DQ find _id);
    publicVariable "CAV_DQ";
    true
};
false
