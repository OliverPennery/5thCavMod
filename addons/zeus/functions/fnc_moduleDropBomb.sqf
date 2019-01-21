#include "script_component.hpp"

params ["_logic","_pos","_height","_type"];

_type createVehicle [_pos select 0, _pos select 1, _height];

deleteVehicle _logic;