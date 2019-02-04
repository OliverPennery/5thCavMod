#include "script_component.hpp"

params ["_logic", "_name"];

_alltargets = allMissionObjects QGVAR(moduleMissileTarget);
if (({(name _x == _name) && (_x != _logic)} count _alltargets) > 0) exitWith {
    systemChat localize LSTRING(Target_Exists);
    deleteVehicle _logic;
};

systemChat ("Created " + _name);

//SETPVAR(_logic, GVAR(TarName), _name);
_logic setName _name;

_currentTarget = GVAR(missileCurTar);
_currentTarget = _currentTarget + 1;

[QGVAR(missileCurTar),_currentTarget] call CBA_fnc_publicVariable;
