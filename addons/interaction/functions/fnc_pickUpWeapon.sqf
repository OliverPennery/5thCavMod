#include "script_component.hpp"

params ["_target","_unit","_params"];
_params params ["_weapon"];

_unit action ["TakeWeapon", _target, _weapon];
