#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

private _playersZeusModule = format ["cav_admin_menu_zeusModule_%1", ((_id splitString ":") joinString "_")];
private _i = (missionNamespace getVariable [QGVAR(zeusModules), []]) find _playersZeusModule;

if (_i != -1) then {
    (compile format ["deleteVehicle %1", _playersZeusModule]) remoteExecCall ["call", 2];
    private _zeusModules = missionNamespace getVariable [QGVAR(zeusModules), []];
    _zeusModules deleteAt _i;
    missionNamespace setVariable [QGVAR(zeusModules), _zeusModules, true];
    [format ["%1 Zeus Disabled", name (_id call BIS_fnc_objectFromNetId)], 2] call FUNC(clientLog);
    [format ["%1 Disabled %2's Zeus", name player, name (_id call BIS_fnc_objectFromNetId)], 2, true] call FUNC(log);
}else{
    [_id] call FUNC(zeusCreatePlayerModule);
    [format ["%1 Zeus Enabled", name (_id call BIS_fnc_objectFromNetId)], 2] call FUNC(clientLog);
    [format ["%1 Enabled %2's Zeus", name player, name (_id call BIS_fnc_objectFromNetId)], 2, true] call FUNC(log);
};
