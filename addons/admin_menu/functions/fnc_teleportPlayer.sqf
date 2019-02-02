#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_mode"];

private _unit = (([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

switch (_mode) do {
    case 0 : {
        player setPos getPos _unit;

        [format ["Teleporting To %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Is Teleporting To %2", name player, (name _unit)], 2, true] call FUNC(log);
    };
    case 1 : {
        _unit setPos getPos player;

        [format ["Bringing %1", (name _unit)], 2] call FUNC(clientLog);
        [format ["%2 Is Teleporting To %1", name player, (name _unit)], 2, true] call FUNC(log);
    };
    case 2 : {
        [format ["Opening Map To Teleport %1!", (name _unit)], 2] call FUNC(clientLog);
        [format ["%1 Has Opened Map To Teleport %1!", name player, (name _unit)], 2, true] call FUNC(log);

        [] call FUNC(toggleMenu);
        openMap true;

        ["31220", "onMapSingleClick", {
            params ["_units", "_pos", "_alt", "_shift", "_unit"];
            _unit setPosATL _pos;
            openMap false;
            [QGVAR(specPort)] call FUNC(toggleMenu);

            [format ["Teleporting %1 To %2", name _unit, _pos], 2] call FUNC(clientLog);
            [format ["%1 Is Teleporting %2 To %3", name player, name _unit, _pos], 2, true] call FUNC(log);

            ["31220", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
        }, [player]] call BIS_fnc_addStackedEventHandler;
    };
};
