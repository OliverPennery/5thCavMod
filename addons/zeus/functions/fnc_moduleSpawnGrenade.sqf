#include "script_component.hpp"

params ["_logic","_pos","_type"];


_grenade = _type createVehicle _pos;

[_grenade, _type, _pos] call FUNC(addAceFrag);

// handle special grenades and sounds
private _config = configFile >> "CfgAmmo" >> _type;
if (local _logic) then {
    // handle priming sound, if present
    private _soundConfig = getArray (configFile >> "CfgAmmo" >> _type >> "ace_grenades_pullPinSound");
    if !(_soundConfig isEqualTo []) then {
        _soundConfig params ["_file", "_volume", "_pitch", "_distance"];
        playSound3D [_file, objNull, false, getPosASL _grenade, _volume, _pitch, _distance];
    };

    if (getNumber (_config >> "ace_grenades_flashbang") == 1) then {
        private _fuzeTime = getNumber (_config >> "explosionTime");

        [ace_grenades_fnc_flashbangThrownFuze, [_grenade], _fuzeTime] call CBA_fnc_waitAndExecute;
    };
};

if (getNumber (_config >> "ace_grenades_flare") == 1) then {
    private _fuzeTime = getNumber (_config >> "explosionTime");
    private _timeToLive = getNumber (_config >> "timeToLive");
    private _color = getArray (_config >> "ace_grenades_color");
    private _intensity = _color deleteAt 3;

    [ace_grenades_fnc_flare, [_grenade, _color, _intensity, _timeToLive], _fuzeTime] call CBA_fnc_waitAndExecute;
};

if (getNumber (_config >> "ace_grenades_incendiary") == 1) then {
    private _fuzeTime = getNumber (_config >> "explosionTime");
    private _timeToLive = getNumber (_config >> "timeToLive");

    [ace_grenades_fnc_incendiary, [_grenade, _timeToLive, sideEnemy], _fuzeTime] call CBA_fnc_waitAndExecute;
};

deleteVehicle _logic;
