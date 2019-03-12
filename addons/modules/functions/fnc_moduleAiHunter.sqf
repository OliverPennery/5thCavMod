#include "script_component.hpp"

if (hasInterface && !isServer) exitWith {};

params [
    ["_logic",objNull,[objNull]],
    ["_units",[],[[]]],
    ["_activated", true]
];



if (_activated) then {
    private _groupSide = _logic getVariable ["groupSide", "WEST"];
    private _groupConfig = _logic getVariable ["groupConfig", 'configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad"'];
    private _waves = _logic getVariable ["waves", -1];
    private _huntTrigger = _logic getVariable ["huntTrigger", "Cav_huntTrigger"];

    format ["%1\n%2\n%3\n%4\n%5\n%6\n%7\n%8\n%9\n%10", _logic,_units,_activated,_groupSide,_groupConfig,_waves,_huntTrigger] remoteExec ["hint", 0];

    [(call compile _groupSide), (call compile _groupConfig),getPos _logic,_waves,(call compile _huntTrigger)] call FUNC(aiHunter);
};
