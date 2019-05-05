#include "script_component.hpp"

params [["_unit",player],["_vic",objNull]];

if (isNull _vic) exitWith {
    systemChat "Incorrect Parameters for forceInsertInVehicle";
};

_unit moveInAny _vic;
systemChat "Attempt to move in vehicle";
[{objectParent ACE_player == _this},{},_vic,0.2,{[ACE_player,_this] call FUNC(forceInsertInVehicle);}] call CBA_fnc_waitUntilAndExecute;
