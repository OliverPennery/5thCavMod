#include "script_component.hpp"

params ["_btnControl", "_comboIdc"];

//private _parentDisplay = ctrlParent _btnControl;

private _listboxData = ([(ctrlParent( _btnControl # 0)), _comboIdc] call FUNC(getListboxData));

_listboxData params ["_comboControl", "_index", "_name"];

private _code  = (profileNameSpace getVariable [QGVAR(savedCode), []]);
_code deleteAt lbCurSel _index;

profileNameSpace setVariable [QGVAR(savedCode), _code];
saveProfileNameSpace;

[_comboControl] call FUNC(loadFiles);

[format ["Delete Custom File Called %1", _name], 2] call FUNC(clientLog);
[format ["%1 Delete Custom File Called %2", name player, _name], 2, false] call FUNC(log);
