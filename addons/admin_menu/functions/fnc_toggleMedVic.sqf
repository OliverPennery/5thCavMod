#include "script_component.hpp"

params ["_btnControl","_listboxIdc"];

private _listboxControl = (ctrlParent _btnControl) displayCtrl _listboxIdc;
private _vic = call compile (_listboxControl lbText (lbCurSel _listboxControl));

if (isNil {_vic}) exitWith {
    ["No valid medVic selected to deploy", 2] call FUNC(clientLog);
};

[_vic,[0,1] select GETVAR(_vic,EGVAR(respawn,deployed),false)] call EFUNC(respawn,vehicleDeploy);

[format ["Toggled deployment for %1", _vic], 2] call FUNC(clientLog);
[format ["%1 Toggled %2 deployment", name player, _vic], 2, true] call FUNC(log);
