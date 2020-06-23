#include "script_component.hpp"

[{
    disableSerialization;

    private _display = findDisplay 33001;

    if (!isNull _display) then {
        private _selectionGroup = _display displayCtrl 33004;
        private ["_buttonGroup","_buttonUnit","_buttonNew"];
        _buttonGroup = _selectionGroup controlsGroupCtrl 33042;
        _buttonUnit = _selectionGroup controlsGroupCtrl 33043;
        _buttonNew = _selectionGroup controlsGroupCtrl 33044;

        _sideMenuGroup = _display displayCtrl 33050;
        _sideMenuGroupSelected = _display displayCtrl 33060;
        _sideMenuUnit = _display displayCtrl 33070;
        _sideMenuUnitSelected = _display displayCtrl 33080;
        _sideMenuNewUnit = _display displayCtrl 33090;
        _sideMenuNewGroup = _display displayCtrl 33100;

        _sideMenuGroup ctrlShow false;
        _sideMenuGroupSelected ctrlShow false;
        _sideMenuUnit ctrlShow false;
        _sideMenuUnitSelected ctrlShow false;
        _sideMenuNewUnit ctrlShow false;
        _sideMenuNewGroup ctrlShow false;
        _buttonGroup ctrlSetTextColor [1,1,1,1];
        _buttonUnit ctrlSetTextColor [1,1,1,1];
        _buttonNew ctrlSetTextColor [1,1,1,1];

        if (GVAR(selectionMode) == "group") then {
            _buttonGroup ctrlSetTextColor [0.35, 0.85, 0.11, 1];
            _sideMenuGroup ctrlShow true;
        } else {
            if (GVAR(selectionMode) == "unit") then {
                _buttonUnit ctrlSetTextColor [0.35, 0.85, 0.11, 1];
                _sideMenuUnit ctrlShow true;
            } else {
                if (GVAR(selectionMode) == "new") then {
                    _buttonNew ctrlSetTextColor [0.35, 0.85, 0.11, 1];
                    _sideMenuNewGroup ctrlShow true;
                };
            };
        };
    };
},[]] call CBA_fnc_execNextFrame;
