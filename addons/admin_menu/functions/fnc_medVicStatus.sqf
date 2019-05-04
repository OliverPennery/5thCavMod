#include "script_component.hpp"

params ["_control"];

_handle = [
{
    (_this select 0) params ["_control"];
    if (isNull (ctrlParent (_control # 0))) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    lbClear (_control # 0);
    private _index = (_control # 0) lbAdd "MEDVIC";
    private _status = ["0", "X"] select (missionNamespace getVariable [QEGVAR(respawn,deployed), false]);
    (_control # 0) lbSetTextRight  [_index, _status];
},1,[_control]] call CBA_fnc_addPerFrameHandler;
