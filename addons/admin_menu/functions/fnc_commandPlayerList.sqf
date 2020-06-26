#include "script_component.hpp"

params ["_control"];
private _parentDisplay = ctrlParent _control;


_handle = [
{
    (_this select 0) params ["_control", "_parentDisplay", "_player"];
    if (isNull _parentDisplay) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    lbClear _control;
    _control lbAdd "Leger";
    _control lbSetTextRight [0, "Group | Admin"];
    private _admin = call FUNC(getLoggedInAdmin);
    {
        if (isPlayer _x) then
        {
            private _index = _control lbAdd (name _x);
            _control lbSetData [_index, (_x call BIS_fnc_netId)];

            /* format ["admin owner (objectFromNetId '%1')", (_x call BIS_fnc_netId)] remoteExecCall [QFUNC(compile), 2];

            private _return = GETMVAR(GVAR(compile_return), 0); */

            /* if (_return != 0 or (_x isEqualTo player and call BIS_fnc_admin != 0)) then{ */
            if (_admin isEqualTo _x) then{
                private _text = format ["- %1 |     X    ", groupId group _x];
                _control lbSetTextRight  [_index, _text];
                _control lbSetColorRight [_index, [0,0,1,1]]
            }else{
                if (GVAR(AM_Admin_UID) find (getPlayerUID (_x)) != -1) then{
                    private _text = format ["- %1 |     X    ", groupId group _x];
                    _control lbSetTextRight  [_index, _text];
                    _control lbSetColorRight [_index, [0,1,0,1]]
                }else{
                    private _text = format ["- %1 |            ", groupId group _x];
                    _control lbSetTextRight  [_index, _text];
                };
            };

            if !(alive _x) then{
                _control lbSetColor [_index, [1,0,0,1]];
            };
            if (_player == _x and (lbCurSel _control) == -1) then{
                _control lbSetCurSel _index;
            };
        };
    } forEach allPlayers - entities "HeadlessClient_F";
},1,[_control, _parentDisplay, player]] call CBA_fnc_addPerFrameHandler;
