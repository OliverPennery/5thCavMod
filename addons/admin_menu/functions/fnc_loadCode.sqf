#include "script_component.hpp"

params ["_btnControl", "_comboIdc", "_editIdc"];

private _listboxData = ([(ctrlParent (_btnControl # 0)), _comboIdc] call FUNC(getListboxData));
_listboxData params ["_comboControl", "_index", "_code"];

private _editControl = ([(ctrlParent (_btnControl # 0)), _editIdc] call FUNC(getEditData)) # 0;

_editControl ctrlSetText _code;
[format ["Loaded Custom File Called %1", (_comboControl lbText _index)], 2] call FUNC(clientLog);
[format ["%1 Loaded Custom File Called %2", name player, (_comboControl lbText _index)], 2, false] call FUNC(log);
