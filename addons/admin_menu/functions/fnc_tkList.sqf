#include "script_component.hpp"
params ["_btnControl", "_listboxIdc"];
/* systemChat format["~%1 - %2", _btnControl, _listboxIdc]; */

private _parentDisplay = ctrlParent (_btnControl # 0);
private _control = ([_parentDisplay, _listboxIdc] call FUNC(getListboxData)) # 0;

/* systemChat format["~%1", _control]; */
[clientOwner] remoteExec [QFUNC(getKillLog), 2];

lbClear _control;
_control lbAdd "Victim ";
_control lbSetTextRight [0, "Killer - Time"];
{
    _x params ["_unit", "_instigator", "_time"];
    if (_instigator != "~AI") then{
        private _index = _control lbAdd (_unit);
        _control lbSetTextRight [_index, format ["%1 - %2", _instigator, _time]];
        /* _control lbSetData [_index, (_x call BIS_fnc_netId)]; */
    };
} forEach TKLOG;
