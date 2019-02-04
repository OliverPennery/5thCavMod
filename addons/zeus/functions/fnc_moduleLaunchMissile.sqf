#include "script_component.hpp"

params ["_logic","_pos","_type","_tarName"];

_alltargets = allMissionObjects QGVAR(moduleMissileTarget);
_targets = _alltargets select {name _x == _tarName};
if (_targets isEqualTo [] || {isNull (_targets select 0)}) exitWith {
    systemChat (localize LSTRING(No_Target_Exists));
    deleteVehicle _logic;
};

_target = _targets select 0;
_destination = getPosASL _target;
_launchPos = [_pos select 0, _pos select 1, (_pos select 2) + 3];
_launchPosATL = ASLToATL _launchPos;
_diff = _destination vectorDiff _launchPos;
_dist = _launchPos distance2D _destination;
_dir = _launchPos getDir _destination;
diag_log ("Dir =" + str(_dir));
_pitch = (_diff select 2) atan2 _dist;
//_up = [sin(_dir),cos(_dir),-_pitch];
diag_log ("Pitch =" + str(_pitch));
//diag_log _up;


_missile = _type createVehicle _launchPosATL;

_vertVel = (_diff select 2)/_dist;
_missile setDir _dir;
[_missile, _pitch, 0] call BIS_fnc_setPitchBank;
//_missile setVectorUp _up;
_missile setVelocity [sin(_dir)*10, cos(_dir)*10, _vertVel];

[_missile, _type, _launchPosATL] call FUNC(addAceFrag);


deleteVehicle _logic;
