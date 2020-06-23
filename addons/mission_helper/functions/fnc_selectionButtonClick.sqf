#include "script_component.hpp"

params ["_type","_removeSelection"];

disableSerialization;

private _display = findDisplay 33001;
private _selectionGroup = _display displayCtrl 33004;
private ["_buttonGroup","_buttonUnit","_buttonNew"];
_buttonGroup = _selectionGroup controlsGroupCtrl 33042;
_buttonUnit = _selectionGroup controlsGroupCtrl 33043;
_buttonNew = _selectionGroup controlsGroupCtrl 33044;

if (_removeSelection && {!(GVAR(selected) isEqualType false)}) then {
    GVAR(selected) = false;
};

GVAR(selectionMode) = _type;
[GVAR(selectionMode)] call FUNC(updateMapIcons);
[_type] call FUNC(changeSideMenu);

_buttonGroup ctrlSetTextColor [1,1,1,1];
_buttonUnit ctrlSetTextColor [1,1,1,1];
_buttonNew ctrlSetTextColor [1,1,1,1];

if (_type == "group") then {
    _buttonGroup ctrlSetTextColor [0.35, 0.85, 0.11, 1];
} else {
    if (_type == "unit") then {
        _buttonUnit ctrlSetTextColor [0.35, 0.85, 0.11, 1];
    } else {
        if (_type == "new") then {
            _buttonNew ctrlSetTextColor [0.35, 0.85, 0.11, 1];
        };
    };
};
