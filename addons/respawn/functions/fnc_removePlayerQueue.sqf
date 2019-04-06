#include "script_component.hpp"

params ["_player"];

if (_player in CAV_DQ) exitWith{
    CAV_DQ deleteAt (CAV_DQ find _player);
    publicVariable "CAV_DQ";
    true
};
false
