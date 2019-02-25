#include "script_component.hpp"

params ["_target","_unit","_params"];

if (!isNull objectParent _unit) exitwith {
    false
};

_unit action ["Gear", _target];
