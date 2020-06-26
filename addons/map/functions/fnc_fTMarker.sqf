#include "script_component.hpp"
/*_____________________________________________________________________________
@filename: fn_fTMarker.sqf

Author:
    FieldGeneral

Description:
    Creates markers for fireteam members

Arguments:
    1: delay (int)

Return Value:
    None

Example:
    [1] call CAV_map_fnc_fTMarker;

 _____________________________________________________________________________*/
params ["_delay"];
[{
    (_this select 0) params ["_delay"];

    {
        deleteMarkerLocal _x;
    } forEach GVAR(FTMarkers);

    GVAR(FTMarkers) = [];

    if (GVAR(fTMarkers_Delay) != _delay) then {
        [GVAR(fTMarkers_Delay)] call FUNC(fTMarker);
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    private _player = player;
    if (GVAR(requireGPSReceive) && !([_player] call FUNC(isGPS))) exitWith {};

    if ((!isNull _player) && (alive _player) && (GVAR(fTMarkers_Enabled))) then {
        private _PlayerGroup = [];
        {
            if(alive _x) then {
                _PlayerGroup pushBackUnique _x;
            };
        } forEach units (group _player);

        {
            private _unit = _x;
            if (!GVAR(requireGPSTransmit) || ([_unit] call FUNC(isGps))) then {
                _mkrName = Format ["mkr_%1",_unit];
                _mkrType = QGVAR(man);
                if (GVAR(fTMarkers_Type)) then {
                    _mkrType = [_unit] call FUNC(getUnitType);
                };
                _pos = getposATL _unit;
                _dir = direction _unit;
                _color = "ColorWhite";
                if (GVAR(fTMarkers_ColorTeams)) then {
                    _colorTeam = assignedTeam _unit;
                    switch (_colorTeam) do
                    {
                        case "MAIN": {_color = "ColorWhite"};
                        case "RED": {_color = "ColorRed"};
                        case "GREEN": {_color = "ColorGreen"};
                        case "BLUE": {_color = "ColorBlue"};
                        case "YELLOW": {_color = "ColorYellow"};
                        default {_color = "ColorWhite"};
                    };
                };

                private _alpha = 1;
                if (GVAR(fTMarkers_Occlusion)) then {
                    private _lastSeen = GETVAR(_unit,GVAR(ftMarkers_lastSeen),nil);
                    private _lastPos = GETVAR(_unit,GVAR(ftMarkers_lastPos),nil);
                    private _lastDir = GETVAR(_unit,GVAR(ftMarkers_lastDir),nil);
                    private _visible = [vehicle _unit, "VIEW"] checkVisibility [eyePos _player,  AGLToASL (_unit modelToWorld (_unit selectionPosition "Spine2"))];
                    private "_occlude";
                    if (_visible == 0) then {
                        _occlude = true;
                    } else {
                        // unit visible
                        if !(isNil "_lastSeen") then {
                            SETVAR(_unit,GVAR(ftMarkers_lastSeen),nil);
                            SETVAR(_unit,GVAR(ftMarkers_lastPos),nil);
                            SETVAR(_unit,GVAR(ftMarkers_lastDir),nil);
                        };
                        _occlude = false;
                    };
                    if (_occlude) then {
                        // unit not visible anymore
                        if (isNil "_lastSeen") then {
                            _lastSeen = time;
                            _lastPos = _pos;
                            _lastDir = _dir;
                            SETVAR(_unit,GVAR(ftMarkers_lastSeen),_lastSeen);
                            SETVAR(_unit,GVAR(ftMarkers_lastPos),_pos);
                            SETVAR(_unit,GVAR(ftMarkers_lastDir),_dir);
                        };
                        _alpha = linearConversion [0, 8, time - _lastSeen, 1, 0, true];
                        _pos = _lastPos;
                        _dir = _lastDir;
                    };
                };

                _mkr = createMarkerLocal [_mkrName, _pos];
                _mkr setMarkerShapeLocal "ICON";
                _mkr setMarkerTypeLocal _mkrType;
                _mkr setMarkerColorLocal _color;
                _mkr setMarkerDirLocal (_dir);
                if (_alpha < 1) then {
                    _mkr setMarkerAlphaLocal _alpha;
                };

                GVAR(FTMarkers) pushBack _mkr;
            };
        } forEach _PlayerGroup;
    };
}, _delay, [_delay]] call CBA_fnc_addPerFrameHandler;
