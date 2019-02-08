#include "script_component.hpp"

/*

parameters:
    0: object (object),
    1: time (number),
    2: condition (code),
    3: function (code),
    4: failFunction (code)

example:
    [object,5,{true},{call function},{}] call cav_interaction_fnc_createIntel;
*/

params ["_object","_time","_condition","_function","_failFunction"];

private _name = format["intelaction_%1",_object];
private _intelAction = [
    _name,
    localize LSTRING(collectIntel),
    "",
    {
        systemChat str(_this);
        (_this select 2) params ["_object","_time","_condition","_function","_name","_failFunction"];
        [
            _time,
            [_object,_time,_condition,_function,_name,_failFunction],
            {
                systemChat str(_this);
                (_this select 0) params ["_object","_time","_condition","_function","_name"];
                hint localize LSTRING(collectedIntel);
                [_object,0,["ACE_MainActions", _name]] call ace_interact_menu_fnc_removeActionFromObject;
                deleteVehicle _object;
                _object call _function;
            },
            {
                (_this select 0) params ["_object","_time","_condition","_function","_name","_failFunction"];
                _object call _failFunction;
            },
            localize LSTRING(collectingIntel),
            {
                (_this select 0) params ["_object","_time","_condition"];
                (!(isNull _object)&&{_object call _condition})
            }
        ] call ace_common_fnc_progressBar;
    },
    {
        (_this select 2) params ["_object","_time","_condition"];
        _object call _condition
    },
    {},
    [_object,_time,_condition,_function,_name,_failFunction],
    [0,0,0],
    10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _intelAction] call ace_interact_menu_fnc_addActionToObject;
