#include "script_component.hpp"


params ["_side","_groupType", "_spawnPos", "_waves", "_huntTrigger"];

_group = [_spawnPos, _side, _groupType] call BIS_fnc_spawnGroup;
_group deleteGroupWhenEmpty true;


[{
    (_this select 0) params ["_group", "_side","_groupType", "_spawnPos", "_waves", "_huntTrigger"];

    //hint format ["%1 \n%2 \n%3 \n%4 \n%5", _group, _side, _groupType, _spawnMarker, _moveMarker];
    private _errorCode = -1;

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
        while {(count (waypoints _group)) > 0} do{
            deleteWaypoint ((waypoints _group) select 0);
        };

        _wp1 = _group addWaypoint [getPos ((allPlayers inAreaArray _huntTrigger) select 0), 0];
        _wp1 setWaypointType "SAD";
    };

    if (_errorCode != -1) then {

        //Error or Success, close dialog and remove PFEH
        [_this select 1] call CBA_fnc_removePerFrameHandler;

        if (_errorCode == 0) then{
            [_side, _groupType, _spawnPos, _waves, _huntTrigger] call FUNC(aiHunter);
        };

    };

},15 , [_group, _side, _groupType, _spawnPos, _waves, _huntTrigger]] call CBA_fnc_addPerFrameHandler;
