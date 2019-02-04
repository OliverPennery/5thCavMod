#include "script_component.hpp"

params ["_control"];

disableSerialization;
// Generic init
private _display = ctrlParent _control;
private _ctrlButtonOK = _display displayCtrl 1; // IDC_OK
private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
TRACE_1("Logic Object",_logic);

_control ctrlRemoveAllEventHandlers "SetFocus";

// Specific onLoad stuff
private _ctrlListBox = (_display displayCtrl 36201);
{
    _ctrlListBox lbAdd (_x select 0);
    _ctrlListBox lbSetData [_forEachIndex, (_x select 1)];
    _ctrlListBox lbSetTooltip [_forEachIndex, (_x select 1)];
} forEach GVAR(zeusMissiles);
_ctrlListBox lbSetCurSel 0;

private _alltargets = allMissionObjects QGVAR(moduleMissileTarget);
private _targetNames = [];
{
    private _tarName = name _x;
    _targetNames pushBack _tarName;
} forEach _alltargets;

private _ctrlListBox2 = (_display displayCtrl 36202);
{
	_ctrlListBox2 lbAdd _x;
} forEach _targetNames;
_ctrlListBox2 lbSetCurSel 0;

// On Close Stuff
private _fnc_onUnload = {
    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};

    deleteVehicle _logic;
};

private _fnc_onConfirm = {
    params [["_ctrlButtonOK", controlNull, [controlNull]]];
    private _display = ctrlParent _ctrlButtonOK;
    if (isNull _display) exitWith {};

    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};

    private _type = (_display displayCtrl 36201) lbData (lbCurSel (_display displayCtrl 36201));
    private _target = (_display displayCtrl 36202) lbText (lbCurSel (_display displayCtrl 36202));

    [_logic, getPosASL _logic, _type, _target] call FUNC(moduleLaunchMissile);
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];
