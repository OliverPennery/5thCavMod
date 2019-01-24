#include "script_component.hpp"

params ["_control"];

disableSerialization;
// Generic init
private _display = ctrlParent _control;
private _ctrlButtonOK = _display displayCtrl 1; // IDC_OK
private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
TRACE_1("Logic Object",_logic);

//systemChat "Init UI";

_control ctrlRemoveAllEventHandlers "SetFocus";

// Specific onLoad stuff
private _edit = (_display displayCtrl 36211);

_currentTarget = GVAR(missileCurTar);

_text = format["Target %1", _currentTarget];
_edit ctrlSetText _text;

// On Close Stuff
private _fnc_onUnload = {
    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};
};

private _fnc_onConfirm = {
    params [["_ctrlButtonOK", controlNull, [controlNull]]];
    private _display = ctrlParent _ctrlButtonOK;
    if (isNull _display) exitWith {};

    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};

    private _name = ctrlText (_display displayCtrl 36211);

    [_logic, _name] call FUNC(moduleMissileTarget);

    _display closeDisplay 1;
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];
