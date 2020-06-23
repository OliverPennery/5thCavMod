#include "script_component.hpp"
params ["_type","_pos",["_distance",20]];


private _list = _pos nearEntities [["Man", "Air", "Car", "Motorcycle", "Tank"], _distance];

if (_list isEqualTo []) exitWith {
    nil
};

{
    if (!(_x isKindOf "Man")) then {
        _list deleteAt (_list find _x);
        {
            _list pushBack (_x select 0);
        } forEach (fullCrew _x);
    };
} forEach _list;

_list = _list select {alive _x};

private _testDistance = _distance+1;
if (_type == "group") then {
    _list = _list select {leader _x == _x};
};

private "_curSel";
{
    private _newDistance = _pos distance2D _x;
    if (_newDistance < _testDistance) then {
        _curSel = _x;
        _testDistance = _newDistance;
    };
} forEach _list;

_curSel
