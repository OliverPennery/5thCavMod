#include "script_component.hpp"

params ["_target","_unit","_params"];

private _weapons = weaponCargo _target;
private _actions = [];

{
    private _weapon = _x;
    private _config = configFile >> "CfgWeapons" >> _weapon;
    private _name = (localize LSTRING(PickUp)) + " " + getText (_config >> "displayName");

    _actions pushBack [
        [
            format["get_%1_%2",_weapon,_forEachIndex],
            _name,
            "\A3\ui_f\data\igui\cfg\actions\take_ca.paa",
            {_this call FUNC(pickUpWeapon)},
            {true},
            {},
            [_weapon]
        ] call ace_interact_menu_fnc_createAction,
        [],
        _target
    ];
} forEach _weapons;

_actions
