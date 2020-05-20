#include "script_component.hpp"

params ["_unit"];

if (ace_respawn_SavePreDeathGear) then {
    [
        _unit,
        _unit getVariable QGVAR(savedRadioData)
    ] call FUNC(acreApplyRadios);
};
