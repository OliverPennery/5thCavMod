#include "script_component.hpp"

params ["_logic","_pos","_height","_type","_velocity","_dir"];

_dropPos = [_pos select 0, _pos select 1, _height];

_bomb = _type createVehicle _dropPos;
_bomb setDir _dir;
[_bomb,round(-9*ln(5*_velocity)), 0] call BIS_fnc_setPitchBank;
_bomb setVelocity [sin(_dir)*(_velocity/10), cos(_dir)*(_velocity/10), -_velocity];

[_bomb, _type, _dropPos] call FUNC(addAceFrag);


deleteVehicle _logic;
