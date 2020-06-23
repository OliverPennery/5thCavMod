#include "script_component.hpp"

params ["_sideMenu"];

private _display = findDisplay 33001;
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

switch (_sideMenu) do {
    case ("group"): {
        if (GVAR(selected) isEqualType grpNull) then {
            _sideMenuGroupSelected ctrlShow true;
        } else {
            _sideMenuGroup ctrlShow true;
        };
    };
    case ("unit"): {
        if (GVAR(selected) isEqualType objNull) then {
            _sideMenuUnitSelected ctrlShow true;
        } else {
            _sideMenuUnit ctrlShow true;
        };
    };
    case ("new"): {
        _sideMenuNewGroup ctrlShow true;
        _sideMenuNewUnit ctrlShow true;
    };
};
