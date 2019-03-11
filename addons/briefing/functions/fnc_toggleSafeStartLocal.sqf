#include "script_component.hpp"

params ["_enable"];

if (isDedicated || !hasInterface) exitWith {
};

if (_enable) then {
    [{
        private _weapon = currentWeapon ACE_player;
        private _muzzle = currentMuzzle ACE_player;
        private _safedWeapons = ACE_player getVariable ["ace_safemode_safedWeapons", []];
        if (!(GETMVAR(GVAR(safeStartEnabled),true))) exitWith {
            if (_weapon in _safedWeapons) then {
                [ACE_player, _weapon, _muzzle] call ace_safemode_fnc_lockSafety;
            };
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
        if (_weapon in _safedWeapons) exitWith {};
        [ACE_player, _weapon, _muzzle] call ace_safemode_fnc_lockSafety;
    },0,[]] call CBA_fnc_addPerFrameHandler;
    ACE_player allowDamage false;
    if (isNil {GVAR(damageEH)}) then {
        private _damageEH = ACE_player addEventHandler ["HandleDamage", {0}];
        GVAR(damageEH) = _damageEH;
    };
} else {
    ACE_player allowDamage true;
    if (!isNil {GVAR(damageEH)}) then {
        ACE_player removeEventHandler ["HandleDamage", GVAR(damageEH)];
        GVAR(damageEH) = nil;
    };
};
