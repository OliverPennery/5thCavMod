#include "script_component.hpp"
params ["_unit"];

if !(isNull objectParent _unit) exitWith {
    private _crewInfo = ((fullCrew (vehicle _unit)) select {_x select 0 isEqualTo _unit}) select 0;
    _crewInfo params ["_unitB", "_role", "_index", "_turretPath", "_isTurret"];

    if (_role == "cargo") exitWith {
        QGVAR(man_cargo)
    };

    if (_role == "driver") exitWith {
        QGVAR(man_driver)
    };

    if (_role == "turret" && _isTurret) exitWith {
        QGVAR(man_ffv)
    };

    if (_role == "gunner" || (_role == "turret" && !_isTurret)) exitWith {
        QGVAR(man_gunner)
    };

    if (_role == "commander") exitWith {
        QGVAR(man_commander)
    };
};

if ((leader _unit) == _unit) exitWith {
    QGVAR(man_leader)
};

if (getText(configFile >> "CfgWeapons" >> (primaryWeapon (_unit)) >> "UIPicture") == "\a3\weapons_f\data\ui\icon_mg_ca.paa") exitWith {
    QGVAR(man_mg)
};

if (getText(configFile >> "CfgWeapons" >> (secondaryWeapon (_unit)) >> "UIPicture") == "\a3\weapons_f\data\ui\icon_at_ca.paa") exitWith {
    QGVAR(man_at)
};

if (_unit getVariable ["ace_medical_medicClass", getNumber (configFile >> "CfgVehicles" >> typeOf _unit >> "attendant")] > 0) exitWith {
    QGVAR(man_medic)
};

private _isEngineer = _unit getVariable ["ACE_isEngineer", _unit getUnitTrait "engineer"];
if (_isEngineer isEqualType 0) then {_isEngineer = _isEngineer > 0};

if (_isEngineer) exitWith {
    QGVAR(man_engineer)
};

QGVAR(man)
