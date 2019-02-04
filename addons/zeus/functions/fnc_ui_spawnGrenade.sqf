#include "script_component.hpp"

params ["_control"];

disableSerialization;
// Generic init
private _display = ctrlParent _control;
private _ctrlButtonOK = _display displayCtrl 1; // IDC_OK
private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
TRACE_1("Logic Object",_logic);

//systemChat "Init spawnGrenade UI";

_control ctrlRemoveAllEventHandlers "SetFocus";

// Specific onLoad stuff
private _ctrlListBox = (_display displayCtrl 36191);
{
    _ctrlListBox lbAdd (_x select 0);
    _ctrlListBox lbSetData [_forEachIndex, (_x select 1)];
    _ctrlListBox lbSetTooltip [_forEachIndex, (_x select 1)];
} forEach GVAR(zeusGrenades);
_ctrlListBox lbSetCurSel 0;

// On Close Stuff
private _fnc_onUnload = {
    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};
	  //systemChat "Close Spawn Grenade UI";

    deleteVehicle _logic;
};

private _fnc_onConfirm = {
    params [["_ctrlButtonOK", controlNull, [controlNull]]];
	  //systemChat "Spawn Grenade";
    private _display = ctrlParent _ctrlButtonOK;
    if (isNull _display) exitWith {};

    private _logic = GETMVAR(BIS_fnc_initCuratorAttributes_target,objNull);
    if (isNull _logic) exitWith {};

    private _type = (_display displayCtrl 36191) lbData (lbCurSel (_display displayCtrl 36191));

    [_logic, getPos _logic, _type] call FUNC(moduleSpawnGrenade);
};

_display displayAddEventHandler ["Unload", _fnc_onUnload];
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];
