#include "script_component.hpp"

params ["_projectile","_ammo","_startPos"]

_dummygrp = createGroup sideLogic;
_dummy = _dummygrp createUnit ["Logic", _startPos, [], 0, "CAN_COLLIDE"];
_dummy enableSimulation false;
_dummygrp deleteGroupWhenEmpty true;

[_dummy, _ammo, _projectile] call ace_frag_fnc_addPfhRound;

[{
  (_this select 0) params ["_dummy","_projectile"];
  if (!alive _projectile) then {
    deleteVehicle _dummy;
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
},1,[_dummy,_projectile]] call CBA_fnc_addPerFrameHandler;
