#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

private _playerObject = _id call BIS_fnc_objectFromNetId;
private _playerUID = ["#adminLogged", getPlayerUID _playerObject] select isMultiplayer;
private _zeusVarName = format ["ace_zeus_zeus_%1", _playerUID];
private _zeus = missionNamespace getVariable _zeusVarName;
private _isModule = !isNil "_zeus" && {!isNull _zeus};

if (GETVAR(_playerObject,GVAR(zeusEnabled),false) || _isModule) then {
    [QGVAR(deleteZeus), _playerObject, _playerObject] call CBA_fnc_targetEvent;
    [format ["%1 Zeus Disabled", name _playerObject], 2] call FUNC(clientLog);
    [format ["%1 Disabled %2's Zeus", name player, name _playerObject], 2, true] call FUNC(log);
} else {
    ["ace_zeus_createZeus", _playerObject] call CBA_fnc_serverEvent;
    [format ["%1 Zeus Enabled", name _playerObject], 2] call FUNC(clientLog);
    [format ["%1 Enabled %2's Zeus", name player, name _playerObject], 2, true] call FUNC(log);
};
