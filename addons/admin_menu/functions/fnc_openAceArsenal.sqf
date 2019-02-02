#include "script_component.hpp"

params ["_btnControl", "_listboxIdc"];

private _id = ([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2;

if (count _id == 0) then{
    {
        [player, player, true] remoteExecCall ["ace_arsenal_fnc_openBox", _x];
    } forEach allPlayers - entities "HeadlessClient_F";

    ["Opened Ace Arsenal On Everyone!", 2] call FUNC(clientLog);
    [format ["%1 Opened Ace Arsenal On Everyone!", name player], 2, true] call FUNC(log);
}else{
    private _unit = _id call BIS_fnc_objectFromNetId;
    if (_unit == player) then{
        call FUNC(toggleMenu);
    };
    [player, player, true] remoteExecCall ["ace_arsenal_fnc_openBox", _unit];


    [format ["Opened Ace Arsenal On %1", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Opened Ace Arsenal On %2", name player, (name _unit)], 2, true] call FUNC(log);
};
