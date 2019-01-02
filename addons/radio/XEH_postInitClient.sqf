#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);
/*
if GVAR(Player_Preset_Enable) then{
    [] call FUNC(playerSetFreq);
};
*/

["cav_radio_init", "OnRadiosReceived",
{
	[] call FUNC(playerSetFreq);
    // This doesnt work for some fucking reason...
    // ["cav_radio_init", "OnRadiosReceived", player] call TFAR_fnc_removeEventHandler;
	player setVariable ["TFAR_event_OnRadiosReceived",[]]

}, player] call TFAR_fnc_addEventHandler;
