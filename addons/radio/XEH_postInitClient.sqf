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
    private _unit = (_this select 0);
    if !(isNull _unit) then{
        [group _unit] call FUNC(playerSetFreq);
    };
}, player] call TFAR_fnc_addEventHandler;
/* [group player] call FUNC(playerSetFreq); */
