#include "script_component.hpp"

switch (GVAR(CustomRespawnMode)) do
{
    case 1 :
    {
        [player] remoteExecCall [QFUNC(popQueue), 2];
        player moveInAny GVAR(medVic);
    };

    case 2 :
    {
        player setPos [(getPos GVAR(medVic) select 0) + (sin getDir GVAR(medVic) * -5), (getPos GVAR(medVic) select 1) + (cos getDir GVAR(medVic) * -5), (getPos GVAR(medVic) select 2)];
    };
};

[player,-1,true] call BIS_fnc_respawnTickets;
if ([player,0,true] call BIS_fnc_respawnTickets == 1) then {
    "1 Respawn Remaining!" remoteExecCall ["systemChat", player];
} else {
    format ["%1 Respawns Remaining!", ([player,0,true] call BIS_fnc_respawnTickets)] remoteExecCall ["systemChat", player];
};

[false] call ace_spectator_fnc_setSpectator;
setPlayerRespawnTime 99999;
