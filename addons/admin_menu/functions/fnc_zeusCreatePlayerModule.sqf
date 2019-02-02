#include "script_component.hpp"

params ["_id"];
private _unit = _id call BIS_fnc_objectFromNetId;
private _userKey = (_id splitString ":") joinString "_";

private _code = format
["
    private _player = '%3' call BIS_fnc_objectFromNetId;
	cav_admin_menu_zeusModule_%1 = (createGroup sideLogic) createUnit ['ModuleCurator_F',[0,0,0],[],0,'NONE'];
    cav_admin_menu_zeusModule_%1 setVehicleVarName 'cav_admin_menu_zeusModule_%1';

	cav_admin_menu_zeusModule_%1 setVariable ['Owner', '_player'];
	cav_admin_menu_zeusModule_%1 setVariable ['Name', '%2'];
	cav_admin_menu_zeusModule_%1 setVariable ['Addons', 3];
	cav_admin_menu_zeusModule_%1 setVariable ['Forced', 0];

    cav_admin_menu_zeusModule_%1 addEventHandler ['CuratorObjectPlaced', '[_this select 1] call cav_admin_menu_fnc_zeusAddObject'];

	_player assignCurator cav_admin_menu_zeusModule_%1;

    private _zeusModules = missionNamespace getVariable ['cav_admin_menu_zeusModules', []];
    _zeusModules pushback 'cav_admin_menu_zeusModule_%1';
    missionNamespace setVariable ['cav_admin_menu_zeusModules', _zeusModules, true];

", _userKey, name(_unit), _id];

(compile _code) remoteExecCall ["call", 2];
