#include "script_component.hpp"

params ["_side","_groupConfig", "_spawnPos", "_moveMarker", "_waves", "_con", "_huntTrigger", "_sadTrigger"];

_group = [_spawnPos, _side, _groupConfig] call BIS_fnc_spawnGroup;
_group deleteGroupWhenEmpty true;
_marker = _moveMarker select (floor random 2);
_wp1 = _group addWaypoint [_marker, 0];
_wp1 setWaypointType "MOVE";

[{
    (_this select 0) params ["_group", "_side","_groupConfig", "_spawnPos", "_moveMarker", "_waves", "_con", "_huntTrigger", "_sadTrigger"];
    //hint format ["%1 \n%2 \n%3 \n%4 \n%5", _group, _side, _groupType, _spawnMarker, _moveMarker];
    private _errorCode = -1;
    if (call compile _con) then{
        _errorCode = 1;
    }else{
        if (({alive _x} count units _group) == 0) then{
            deleteGroup _group;
            if (_waves == -1) then{
                _errorCode = 0;
            }else{
                if (_waves > 1)then{
                    _errorCode = 0;
                    _waves = _waves -1;
                }else{
                    _errorCode = 2;
                };
            };
        }else {
            _marker = _moveMarker select (floor random 2);
            if ((getPos leader _group) inArea _sadTrigger) then {
                if !(isClass(configFile >> "CfgPatches" >> "Vcm_AIMod")) then {
                    while {(count (waypoints _group)) > 0} do{
                        deleteWaypoint ((waypoints _group) select 0);
                    };
                    _wp1 = _group addWaypoint [_marker, 0];
                    _wp1 setWaypointType "SAD";
                };
            }else{
                while {(count (waypoints _group)) > 0} do{
                    deleteWaypoint ((waypoints _group) select 0);
                };
                _wp1 = _group addWaypoint [_marker, 0];
                _wp1 setWaypointType "MOVE";
            };
        };
    };
    if (_errorCode != -1) then {
        //Error or Success, close dialog and remove PFEH
        [_this select 1] call CBA_fnc_removePerFrameHandler;

        if (_errorCode == 0) then{
            [_side, _groupConfig, _spawnPos, _moveMarker, _waves, _con, _huntTrigger, _sadTrigger] call FUNC(aiSpawner);
        };

        if (_errorCode == 1) then{
            //hint "ai spawner end";
            [_group, _huntTrigger] call FUNC(aiFollower);
        };
    };

},15 , [_group, _side, _groupConfig, _spawnPos, _moveMarker, _waves, _con, _huntTrigger, _sadTrigger]] call CBA_fnc_addPerFrameHandler;
