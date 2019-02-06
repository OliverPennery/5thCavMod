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
private _fnc_onSliderMove2 = {
    params ["_slider"];
    private _display = ctrlParent _slider;
    (_display displayCtrl 36185) ctrlSetText (str round sliderPosition _slider);
};
private _fnc_onSliderMove3 = {
    params ["_slider"];
    private _display = ctrlParent _slider;
    (_display displayCtrl 36187) ctrlSetText (str round sliderPosition _slider);
};
private _fnc_onKeyUp = {
    params ["_edit"];
    private _display = ctrlParent _edit;
    _number = parseNumber (ctrlText _edit);
    _range = sliderRange 36182;
    if (_number < _range # 0 || _number > _range # 1) then {
        _edit ctrlSetTooltip (localize LSTRING(AttributeInvalid));
        _edit ctrlSetTextColor [1,0,0,1];
    } else {
        _edit ctrlSetTooltip "";
        _edit ctrlSetTextColor [1,1,1,1];
        (_display displayCtrl 36182) sliderSetPosition (round _number);
    };
};
private _fnc_onKeyUp2 = {
    params ["_edit"];
    private _display = ctrlParent _edit;
    _number = parseNumber (ctrlText _edit);
    _range = sliderRange 36184;
    if (_number < _range # 0 || _number > _range # 1) then {
        _edit ctrlSetTooltip (localize LSTRING(AttributeInvalid));
        _edit ctrlSetTextColor [1,0,0,1];
    } else {
        _edit ctrlSetTooltip "";
        _edit ctrlSetTextColor [1,1,1,1];
        (_display displayCtrl 36184) sliderSetPosition (round _number);
    };
};
private _fnc_onKeyUp3 = {
    params ["_edit"];
    private _display = ctrlParent _edit;
    _number = parseNumber (ctrlText _edit);
    _range = sliderRange 36186;
    if (_number < _range # 0 || _number > _range # 1) then {
        _edit ctrlSetTooltip (localize LSTRING(AttributeInvalid));
        _edit ctrlSetTextColor [1,0,0,1];
    } else {
        _edit ctrlSetTooltip "";
        _edit ctrlSetTextColor [1,1,1,1];
        (_display displayCtrl 36186) sliderSetPosition (round _number);
    };
};

private _slider = (_display displayCtrl 36182);
private _edit = (_display displayCtrl 36183);

_slider sliderSetRange [5, 500];
_slider sliderSetSpeed [10, 5];
_slider sliderSetPosition 10;
_edit ctrlSetText "10";

_slider ctrlAddEventHandler ["SliderPosChanged", _fnc_onSliderMove];
_edit ctrlAddEventHandler ["KeyUp", _fnc_onKeyUp];

private _slider2 = (_display displayCtrl 36184);
private _edit2 = (_display displayCtrl 36185);

_slider2 sliderSetRange [10, 500];
_slider2 sliderSetSpeed [10, 5];
_slider2 sliderSetPosition 20;
_edit2 ctrlSetText "20";

_slider2 ctrlAddEventHandler ["SliderPosChanged", _fnc_onSliderMove2];
_edit2 ctrlAddEventHandler ["KeyUp", _fnc_onKeyUp2];

private _slider3 = (_display displayCtrl 36186);
private _edit3 = (_display displayCtrl 36187);

_slider3 sliderSetRange [0, 360];
_slider3 sliderSetSpeed [10, 1];
_slider3 sliderSetPosition 0;
_edit3 ctrlSetText "0";

_slider3 ctrlAddEventHandler ["SliderPosChanged", _fnc_onSliderMove3];
_edit3 ctrlAddEventHandler ["KeyUp", _fnc_onKeyUp3];

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
    private _velocity = round sliderPosition (_display displayCtrl 36184);
    private _dir = round sliderPosition (_display displayCtrl 36186);

    //systemChat format["Vel: %1",str(_velocity)];
    //systemChat format["Dir: %1",str(_dir)];

    [_logic, getPos _logic, _height, _type, _velocity, _dir] call FUNC(moduleDropBomb);
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];
