#include "script_component.hpp"

params ["_btnControl", "_listboxIdc","_ticket"];

private _parentDisplay = ctrlParent _btnControl;

private _id = ([_parentDisplay, _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id  == 0) then{
    {
        [_x, _ticket] call BIS_fnc_respawnTickets;
    } forEach allPlayers - entities "HeadlessClient_F";

    [format ["Changed Everyones Tickets By %1", _ticket], 2] call FUNC(clientLog);
    [format ["%1 Changed Everyones Tickets By %2", name player, _ticket], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    [_unit, _ticket] call BIS_fnc_respawnTickets;

    [format ["%1 Changed Respawn Tickets By %2", (name _unit), _ticket], 2] call FUNC(clientLog);
    [format ["%1 Changed %2 Respawn Tickets By %3", name player, (name _unit), _ticket], 2, true] call FUNC(log);
};
