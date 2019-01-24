#include "script_component.hpp"

params ["_logic","_pos","_height","_type"];

_dropPos = [_pos select 0, _pos select 1, _height];

_bomb = _type createVehicle _dropPos;

_dir = getDir _bomb;
_bomb setVelocity [sin(_dir)*2, cos(_dir)*2, -10];

[_bomb, _type, _dropPos] call FUNC(addAceFrag);


deleteVehicle _logic;
