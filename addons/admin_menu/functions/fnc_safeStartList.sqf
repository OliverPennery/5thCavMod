#include "script_component.hpp"

params ["_control"];
private _parentDisplay = ctrlParent _control;

(_this select 0) params ["_control", "_parentDisplay", "_player"];

lbClear _control;
_control lbAdd "Victim ";
_control lbSetTextRight [0, "Killer - Time"];
{
    _x params ["_unit", "_instigator", "_time"];
    private _index = _control lbAdd (_unit);
    _control lbSetTextRight [_index, format ["%1 - %2", _instigator, _time]];
    /* _control lbSetData [_index, (_x call BIS_fnc_netId)]; */
    if (_instigator != "~AI") then{
        _control lbSetColor [_index, [1,0,0,1]];
    };
} forEach TKLOG;
