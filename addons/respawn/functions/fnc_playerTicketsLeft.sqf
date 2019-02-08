#include "script_component.hpp"
params ["_side"];

private _tickets = 0;

{
    if (_x call ace_common_fnc_isPlayer) then{
        if (_x call ace_common_fnc_playerSide == _side) then{
            private _ticket = [_x,nil,true] call BIS_fnc_respawnTickets;
            if (_ticket > 0) then{
                _tickets = _tickets + _ticket;
            };
        };
    };
} forEach allPlayers - entities "HeadlessClient_F";

_tickets
