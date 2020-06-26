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

private _slider = (_display displayCtrl 36203);
private _edit = (_display displayCtrl 36204);

private _fnc_onSliderMove = {
    params ["_slider"];

    private _display = ctrlParent _slider;
    (_display displayCtrl 36204) ctrlSetText (str round sliderPosition _slider);
};
private _fnc_onKeyUp = {
    params ["_edit"];
    private _display = ctrlParent _edit;
    _number = parseNumber (ctrlText _edit);
    _range = sliderRange 36203;
    if (_number < _range # 0 || _number > _range # 1) then {
        _edit ctrlSetTooltip (localize LSTRING(AttributeInvalid));
        _edit ctrlSetTextColor [1,0,0,1];
    } else {
        _edit ctrlSetTooltip "";
        _edit ctrlSetTextColor [1,1,1,1];
        (_display displayCtrl 36203) sliderSetPosition (round _number);
    };
};

_slider sliderSetRange [1, 1000];
_slider sliderSetSpeed [1, 1];
_slider sliderSetPosition 100;
_edit ctrlSetText "100";

_slider ctrlAddEventHandler ["SliderPosChanged", _fnc_onSliderMove];
_edit ctrlAddEventHandler ["KeyUp", _fnc_onKeyUp];

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
    private _velocity = round sliderPosition (_display displayCtrl 36203);

    //systemChat format["Vel: %1",str(_velocity)];

    [_logic, getPosASL _logic, _type, _target, _velocity] call FUNC(moduleLaunchMissile);
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];
