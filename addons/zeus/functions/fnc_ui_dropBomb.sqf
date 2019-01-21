#include "script_component.hpp"

params ["_control"];

disableSerialization;
// Generic init
private _display = ctrlParent _control;
private _ctrlButtonOK = _display displayCtrl 1; // IDC_OK
private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
TRACE_1("Logic Object",_logic);

//systemChat "Init dropBomb UI";

_control ctrlRemoveAllEventHandlers "SetFocus";

// Specific onLoad stuff
private _ctrlListBox = (_display displayCtrl 36181);
{
	_ctrlListBox lbAdd (_x select 0);
	_ctrlListBox lbSetData [_forEachIndex, (_x select 1)];
	_ctrlListBox lbSetTooltip [_forEachIndex, (_x select 1)];
} forEach GVAR(zeusBombs);
_ctrlListBox lbSetCurSel 0;

// Drop Height
private _fnc_onSliderMove = {
    params ["_slider"];

    private _display = ctrlParent _slider;
    (_display displayCtrl 36183) ctrlSetText (str round sliderPosition _slider);
};

private _slider = (_display displayCtrl 36182);
private _edit = (_display displayCtrl 36183);

_slider sliderSetRange [1, 500];
_slider sliderSetSpeed [1, 1];
_slider sliderSetPosition 10;
_edit ctrlSetText "10";

_slider ctrlAddEventHandler ["SliderPosChanged", _fnc_onSliderMove];

// On Close Stuff
private _fnc_onUnload = {
    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};
	//systemChat "Close Drop Bomb UI";

    deleteVehicle _logic;
};

private _fnc_onConfirm = {
    params [["_ctrlButtonOK", controlNull, [controlNull]]];
	//systemChat "Drop Bomb";
    private _display = ctrlParent _ctrlButtonOK;
    if (isNull _display) exitWith {};

    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};

    private _type = (_display displayCtrl 36181) lbData (lbCurSel (_display displayCtrl 36181));
    private _height = round sliderPosition (_display displayCtrl 36182);

    [_logic, getPos _logic, _height, _type] call FUNC(moduleDropBomb);
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];