#include "script_component.hpp"
#define SPAWN_RADIUS 5
#define SPAWN_PARACHUTE_HEIGHT 30
#define SPAWN_OFFSET 1.5

switch (GVAR(CustomRespawnMode)) do
{
    case 1 :
    {
        if (GVAR(medVic) call {
            if (player moveInAny _this) exitWith {
                true
            };
            if (isNull _this || !(_this isEqualType objNull)) exitWith {
                false
            };
            //Try to move next to the object
            private _zPos = (ASLToAGL getPosASL _this) select 2;
            private _bb = boundingBox _this;
            private _moveDirectionSelect = speed _this < 0 && !(_this isKindOf "CAManBase");

            if (_zPos >= SPAWN_PARACHUTE_HEIGHT) exitWith //Spawn in parachute
            {
                private _spawnPos = _this modelToWorldVisual
                [
                    SPAWN_RADIUS / 2 - random SPAWN_RADIUS,
                    (_bb select _moveDirectionSelect select 1),//avoid appearing in front of a moving vehicle
                    (_bb select 0 select 2) * 1.25 //Spawn under the vehicle
                ];
                if (_spawnPos isEqualTo [0,0,0]) then {systemChat "spawn position is undefined";};
                isNil { //Trick to speed up execution
                    private _para = createVehicle ["Steerable_Parachute_F", _spawnPos, [], 0, "CAN_COLLIDE"];
                    _para setDir (_para getDir _this);
                    _unit moveInDriver _para;
                    _para setVelocity velocity _this;
                };
                true
            };

            //Spawn next to vehicle
            private _offset = (getPos _this distance getPosVisual _this) + SPAWN_OFFSET;
            private _spawnPos = (_this getRelPos [
                (_bb select _moveDirectionSelect select 1)
                +
                ([-_offset, _offset] select _moveDirectionSelect), //avoid appearing in front of a moving vehicle
                linearConversion [0, 100, round random 100, -15, 15]
            ]) vectorAdd [0, 0, _zPos];
            if (isNil "_spawnPos" || {_spawnPos isEqualTo [0,0,0]}) then {systemChat "spawn position is undefined";};
            _unit setVehiclePosition [_spawnPos, [], 0, "NONE"];
            _unit setDir (_unit getDir _this);
        };) then {true} else {
            [format ["%1 Failed to Respawn Properly", player]] remoteExecCall ["hint", 0];
            false
        };
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
