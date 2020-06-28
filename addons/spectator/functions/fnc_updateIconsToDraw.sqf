#include "script_component.hpp"

private _iconsToDraw = [];
private _entitiesToDraw = [];

private _camPos = AGLToASL positionCameraToWorld [0,0,0];
{
    private _unit = _x;
    private _vehicle = vehicle _x;
    private _inVehicle = (_vehicle != _x);
    private "_distanceToCameraSqr";
    if (_inVehicle) then {
        _distanceToCameraSqr = _camPos distanceSqr (vehicle _x);
    } else {
        _distanceToCameraSqr = _camPos distanceSqr _x;
    };

    if (_distanceToCameraSqr <= DISTANCE_ICONS_SQR && { !_inVehicle || { _x == effectiveCommander _vehicle } } && {alive _x || isPlayer _x}) then {
        private _group = group _x;
        private _isLeader = _x == leader _group;
        private _sideColor = [side _group] call BIS_fnc_sideColor;
        private "_groupColor";

        if (_isLeader) then {
            private _groupConfig = [group _x] call EFUNC(common,getGroup);
            if (!isNil "_groupConfig") then {
                _groupColor = getArray (configFile >> "CfgMarkerColors" >> (_groupConfig select 2) >> "color") call BIS_fnc_colorConfigToRGBA;
            } else {
                _groupColor = getArray (configFile >> "CfgMarkerColors" >> "colorBrown" >> "color") call BIS_fnc_colorConfigToRGBA;
            };
        };

        if (!alive _x) then {
            _sideColor = [0.101, 0.098, 0.121, 1];
        };

        // Calculate distance fade
        /* (_distanceToCameraSqr call {
            if (_this <= 250000) exitWith { // 500^2
                [1, 4, -2.5, 0.04]
            };
            if (_this <= 1000000) exitWith { // 1000^2
                [0.75, 3.5, -2.2, 0.035]
            };
            if (_this <= 2250000) exitWith { // 1500^2
                [0.5, 3, -1.9, 0.03]
            };
            if (_this <= 4000000) exitWith { // 2000^2
                [0.3, 2.5, -1.6, 0.025]
            };
            if (_this <= 6250000) exitWith { // 2500^2
                [0.2, 2, -1.3, 0.02]
            };
            [0.15, 1.5, -1, 0.015]
        }) params ["_fadeByDistance", "_sizeByDistance", "_heightByDistance", "_fontSizeByDistance"]; */

        private _fadeByDistance = 1;
        private _fadeByDistanceGroup = 1;
        private _sizeByDistance = 1;
        private _heightByDistance = 10;
        private _fontSizeByDistance = 0.03;
        private _fontSizeByDistanceGroup = 0.03;

        // Apply color fade
        _sideColor set [3, _fadeByDistance];

        // Draw unit icon for vehicles and all units on foot
        _iconsToDraw pushBack [_x, 1, [
            [ICON_UNIT, ICON_VEHICLE] select _inVehicle,
            _sideColor,
            [0,0,0],
            _sizeByDistance,
            _sizeByDistance,
            0,
            "",
            0,
            _fontSizeByDistance,
            "PuristaMedium",
            "center"
        ], 0];

        // Show unit name only if camera is near enough
        if (((isPlayer _x || _inVehicle) && _distanceToCameraSqr < DISTANCE_NAMES_SQR) || (_distanceToCameraSqr < DISTANCE_NAMES_AI_SQR)) then {
            private _name = ([_x] call SFUNC(ace,common,getName)) select [0, NAME_MAX_CHARACTERS];

            if (_inVehicle) then {
                // Draw unit names for units in vehicle
                private _crew = fullCrew _vehicle;
                private _crewCount = ({alive (_x select 0)} count (_crew));
                _nameArr = [];
                {
                    _x params ["_crewMember","_role"];
                    private _roleText = _role;
                    if (_role == "driver") then {
                        if (_vehicle isKindOf "Air") then {
                            _roleText = "Pilot";
                        } else {
                            _roleText = "Driver";
                        };
                    };
                    if (_role == "gunner") then {
                        _roleText = "Gunner"
                    };
                    if (_role == "commander") then {
                        if (_vehicle isKindOf "Air") then {
                            _roleText = "Co-Pilot";
                        } else {
                            _roleText = "Commander";
                        };
                    };
                    if (_role == "turret" && (_x select 4)) then {
                        _roleText = "FFV"
                    };
                    if (count _nameArr > 3) exitWith {};
                    if (alive _crewMember) then {
                        _nameArr pushBack (([_crewMember] call SFUNC(ace,common,getName)) + " [" + _roleText + "]");
                    };
                } forEach _crew;
                if (_crewCount > 4) then {
                    _nameArr pushBack ("and " + str(_crewCount - 4) + " more ...");
                };

                {
                    _iconsToDraw pushBack [_unit, 2, [
                        "",
                        _sideColor,
                        [0,0,0],
                        0,
                        0,
                        0,
                        _x,
                        2,
                        _fontSizeByDistance,
                        "PuristaMedium",
                        "center"
                    ], -(_forEachIndex+1)];
                } forEach _nameArr;
            } else {
                // Draw unit name for units on foot
                _iconsToDraw pushBack [_x, 2, [
                    "",
                    _sideColor,
                    [0,0,0],
                    0,
                    0,
                    0,
                    _name,
                    2,
                    _fontSizeByDistance,
                    "PuristaMedium",
                    "center"
                ], 0];
            };
        };

        _groupColor set [3, _fadeByDistanceGroup];

        if (_isLeader) then {
            // Draw group icon for effective commander or leader on foot
            _iconsToDraw pushBack [_x, 0, [
                "a3\ui_f\data\map\markers\nato\o_unknown.paa",
                _groupColor,
                [0,0,0],
                (_sizeByDistance * 2),
                (_sizeByDistance * 2),
                0,
                "",
                0,
                0.035,
                "PuristaMedium",
                "center"
            ], _heightByDistance];

            // Draw Group Name
            _iconsToDraw pushBack [_x, 0, [
                "",
                _groupColor,
                [0,0,0],
                0,
                0,
                0,
                groupID _group,
                2,
                _fontSizeByDistanceGroup,
                "PuristaMedium",
                "center"
            ], _heightByDistance + 0.5];

            // Draw Connecting Line
            _iconsToDraw pushBack [_x, 3, [
                [0,0,0],
                [0,0,0],
                [1,1,1,1]
            ], _heightByDistance];
        };

        // Track entities themselves for use with fired EH
        _entitiesToDraw pushBack _vehicle;

        // Add fired EH for drawing and icon highlighting
        if (GETVAR(_vehicle,GVAR(firedEH),-1) == -1) then {
            SETVAR(_vehicle,GVAR(firedEH),_vehicle addEventHandler [ARR_2("Fired",{_this call FUNC(handleFired)})]);
        };
        if (_inVehicle) then {
            {
                _x params ["_crewMember","_role","_cargoPos","_turrentNum","_ffv"];
                if (_role == "Turret" && _ffv) then {
                    _entitiesToDraw pushBack _crewMember;
                    if (GETVAR(_crewMember,GVAR(firedEH),-1) == -1) then {
                        SETVAR(_crewMember,GVAR(firedEH),_crewMember addEventHandler [ARR_2("Fired",{_this call FUNC(handleFired)})]);
                    };
                };
            } forEach fullCrew _vehicle;
        };
    };

} forEach ([] call SFUNC(ace,spectator,getTargetEntities));

GVAR(iconsToDraw) = _iconsToDraw;
GVAR(entitiesToDraw) = _entitiesToDraw;
