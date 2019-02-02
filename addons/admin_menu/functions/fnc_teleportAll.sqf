#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_mode"];

private _unit = (([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

switch (_mode) do {
    case 0 : {
        {
            _x setPos getPos _unit;
        } forEach allPlayers - entities "HeadlessClient_F";
        [format ["Teleporting Everyone To %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Is Teleporting Everyone To %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
    case 1 : {

        /* {
            _unit setPos getPos _x;
        } forEach allPlayers - entities "HeadlessClient_F"; */

        [format ["Cannot Teleport %1 To Everyone", (name _unit)], 0] call FUNC(clientLog);
    };
    case 2 : {
        ["Opening Map To Teleport Everyone!", 2] call FUNC(clientLog);
        [format ["%1 Has Opened Map To Teleport Everyone!", name player], 2, true] call FUNC(log);

        [] call FUNC(toggleMenu);
        openMap true;

        ["31221", "onMapSingleClick", {
            params ["_units", "_pos", "_alt", "_shift"];
            {
                _x setPosATL _pos;
            } forEach allPlayers - entities "HeadlessClient_F";
            openMap false;
            [QGVAR(specPort)] call FUNC(toggleMenu);

            [format ["Teleporting Everyone To %1", _pos], 2] call FUNC(clientLog);
            [format ["%1 Is Teleporting Everyone To %2", name player, _pos], 2, true] call FUNC(log);

            ["31221", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
        }, [player]] call BIS_fnc_addStackedEventHandler;
    };
};
