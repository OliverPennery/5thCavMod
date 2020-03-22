#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

LOG(MSG_INIT);
if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {
    [] call FUNC(acreInit);
    private _id = ["acre_sys_radio_returnRadioId", if (_this select 0 == ACE_Player) then {[group player,false] call FUNC(acrePlayerSetFreq);] call CBA_fnc_addEventHandler;};
    [{[] call acre_api_fnc_isInitialized},[] call FUNC(acrePlayerSetFreq);] call CBA_fnc_waitUntilAndExecute;
} else {
    if (isClass (configfile >> "CfgPatches" >> "task_force_radio")) then {
        /*
        if GVAR(Player_Preset_Enable) then{
            [] call FUNC(playerSetFreq);
        };
        */
        ["cav_radio_init", "OnRadiosReceived",
        {
            [group player] call FUNC(playerSetFreq);
            // This doesnt work for some fucking reason...
            // ["cav_radio_init", "OnRadiosReceived", player] call TFAR_fnc_removeEventHandler;
            player setVariable ["TFAR_event_OnRadiosReceived",[]]

        }, player] call TFAR_fnc_addEventHandler;
    };
};
