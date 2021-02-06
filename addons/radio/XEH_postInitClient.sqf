#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);
/* diag_log "radio XEH 0"; */
/*
if GVAR(Player_Preset_Enable) then{
    [] call FUNC(playerSetFreq);
};
*/

["cav_radio_init1", "OnRadioOwnerSet",
{
    /* systemChat "OnRadioOwnerSet 1";
    diag_log "OnRadioOwnerSet 1"; */
    private _unit = (_this select 0);
    systemChat str _this;
    if !(isNull _unit) then{
        /* systemChat "OnRadioOwnerSet 2";
        diag_log "OnRadioOwnerSet 2"; */
        [group _unit] call FUNC(playerSetFreq);
    };
}, player] call TFAR_fnc_addEventHandler;

["cav_radio_init2", "OnRadiosReceived",
{
    /* systemChat "OnRadiosReceived 1";
    diag_log "OnRadiosReceived 1"; */
    private _unit = (_this select 0);
    systemChat str _this;
    if !(isNull _unit) then{
        /* systemChat "OnRadiosReceived 2";
        diag_log "OnRadiosReceived 2"; */
        [group _unit] call FUNC(playerSetFreq);
    };
}, player] call TFAR_fnc_addEventHandler;
