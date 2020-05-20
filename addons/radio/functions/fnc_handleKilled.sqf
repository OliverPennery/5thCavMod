#include "script_component.hpp"

params ["_unit"];

if (ACE_player == _unit && {ace_respawn_SavePreDeathGear}) then {
    _unit setVariable [QGVAR(savedRadioData),[_unit,getUnitLoadout _unit] call FUNC(acreSaveRadios)];
};
