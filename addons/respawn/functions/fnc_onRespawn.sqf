#include "script_component.hpp"
#define SPAWN_OFFSET 1.5

switch (GVAR(CustomRespawnMode)) do
{
    case 1 :
    {
        GVAR(medVic) call {
            private _unit = ACE_player;
            if (isNull _this || !(_this isEqualType objNull)) exitWith {
                false
            };
            if (player moveInAny _this) exitWith {
                true
            };
            //Try to spawn next to the object
            private _zPos = (ASLToAGL getPosASL _this) select 2;
            private _bb = boundingBox _this;
            private _moveDirectionSelect = speed _this < 0 && !(_this isKindOf "CAManBase");

            private _offset = (getPos _this distance getPosVisual _this) + SPAWN_OFFSET;
            private _spawnPos = (_this getRelPos [
                (_bb select _moveDirectionSelect select 1)
                +
                ([-_offset, _offset] select _moveDirectionSelect), //avoid appearing in front of a moving vehicle
                linearConversion [0, 100, round random 100, -15, 15]
            ]) vectorAdd [0, 0, _zPos];
            if (isNil "_spawnPos" || {_spawnPos isEqualTo [0,0,0]}) then {systemChat "spawn position is undefined"; false};
            _unit setVehiclePosition [_spawnPos, [], 0, "NONE"];
            _unit setDir (_unit getDir _this);
            true
        }
    };

    case 2 :
    {
        player setPos [(getPos GVAR(medVic) select 0) + (sin getDir GVAR(medVic) * -5), (getPos GVAR(medVic) select 1) + (cos getDir GVAR(medVic) * -5), (getPos GVAR(medVic) select 2)];
    };
};

if !(GVAR(CustomRespawnMode) == 3) then {
    [player,-1,true] call BIS_fnc_respawnTickets;
};
if ([player,0,true] call BIS_fnc_respawnTickets == 1) then {
    "1 Respawn Remaining!" remoteExecCall ["systemChat", player];
} else {
    format ["%1 Respawns Remaining!", ([player,0,true] call BIS_fnc_respawnTickets)] remoteExecCall ["systemChat", player];
};

[false] call ace_spectator_fnc_setSpectator;

setPlayerRespawnTime 99999;
