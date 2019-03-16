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
    _control lbAdd "All";
    _control lbSetTextRight [0, "Group | Tick | ResTim"];
    {
    	if (isPlayer _x) then
    	{
    		private _index = _control lbAdd (name _x);
            _control lbSetData [_index, (_x call BIS_fnc_netId)];
            private _playerRespawnTime = 99999;
            if !(alive _x) then{
                _playerRespawnTime = _x getVariable QGVAR(respawnTime);
            };
            private _text = format ["- %1 |   %2   |     %3     ",groupId group _x, [_x,nil,true] call BIS_fnc_respawnTickets, _playerRespawnTime];
            _control lbSetTextRight  [_index, _text];
            if !(alive _x) then{
                _control lbSetColor [_index, [1,0,0,1]];
            };
            if (_player == _x and (lbCurSel _control) == -1) then{
                _control lbSetCurSel _index;
            };
    	};
    } forEach allPlayers - entities "HeadlessClient_F";
},1,[_control, _parentDisplay, player]] call CBA_fnc_addPerFrameHandler;
