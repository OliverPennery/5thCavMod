#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];
/* systemChat format["~%1 - %2", _btnControl, _listboxIdc]; */
private _parentDisplay = ctrlParent (_btnControl # 0);
private _control = ([_parentDisplay, _listboxIdc] call FUNC(getListboxData)) # 0;

/* systemChat format["~%1", _control]; */
[clientOwner] remoteExec [QFUNC(getNadeLog), 2];

lbClear _control;
_control lbAdd "Thrower";
_control lbSetTextRight [0, "Type - Time"];
{
    _x params ["_unit", "_magazine", "_time"];
    private _index = _control lbAdd (_unit);
    _control lbSetTextRight [_index, format ["%1 - %2", _magazine, _time]];
} forEach NADELOG;
