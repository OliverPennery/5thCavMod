#include "script_component.hpp"


private _camTarget = GETMVAR(SGVAR(ace,spectator,camFocus),objNull);
private _camTargetVeh = vehicle _camTarget;
private _cursorObject = objNull;

// This doesn't work for units underwater due to use of screenToWorld
// Would be hard to work around due to parallax
private _camPos = AGLToASL positionCameraToWorld [0,0,0];
private _mousePos = AGLToASL screenToWorld getMousePosition;

// Can only select units within name drawing distance
if ((_camPos distanceSqr _mousePos) <= DISTANCE_ICONS_SQR) then {
    private _intersections = lineIntersectsSurfaces [_camPos, _mousePos, _camTarget, _camTargetVeh];

    if !(_intersections isEqualTo []) then {
        _cursorObject = effectiveCommander ((_intersections select 0) select 3);
    };
};

SGVAR(ace,spectator,cursorObject) = _cursorObject;

if !(SGVAR(ace,spectator,uiMapVisible)) then {
    if (SGVAR(ace,spectator,drawUnits)) then {
        // Groups and Units
        {
            _x params ["_unit", "_type", "_icon", "_offset"];
            private _position = getPosASLVisual _unit;
            private _positionAGL = ASLToAGL _position;
            private "_positionAGLFinal";

            // Text spacing stuff
            private _fov = call FUNC(getFOV);
            private _relDir = _position vectorDiff _camPos;
            private _camDir = _camPos vectorFromTo positionCameraToWorld[0,0,1];
            private _camSideDir = (_camDir) vectorCrossProduct [0,0,1];
            private _drawUpNormal = vectorNormalized (_camSideDir vectorCrossProduct _relDir);
            private _drawUp = _drawUpNormal vectorMultiply (0.005 * ((_position distance _camPos) / _fov));
            private _offsetVector = _drawUp vectorMultiply _offset;

            if (vehicle _unit == _unit) then {
                _positionAGLFinal = _positionAGL vectorAdd _offsetVector;
            } else {
                _positionAGL = ASLToAGL getPosASLVisual vehicle _unit;
                _positionAGLFinal = _positionAGL vectorAdd _offsetVector;
            };
            // Cursor object is always effectiveCommander so no need to check `in`
            if (_type == 2 && {_unit in _camTargetVeh || _unit == _cursorObject}) then {
                _icon set [1,[0,0,0,1]];
                _icon set [7,0];
            };

            // Apply modifiers
            /* if (_type == 1 && { time <= GETVAR(_unit,SGVAR(ace,spectator,highlightTime),0) }) then {
                _icon set [1, [1,1,1, ((_icon select 1) select 3)]];
            }; */

            if (_type == 3) then {
                _icon set [0, _positionAGL];
                _icon set [1, _positionAGLFinal];
            } else {
                _icon set [2, _positionAGLFinal];
            };

            // Draw icon/line
            if (_type == 3) then {
                drawLine3D _icon;
            } else {
                drawIcon3D _icon;
            };
        } forEach GVAR(iconsToDraw);
    };

    // Draw projectiles and grenades paths
    if (SGVAR(ace,spectator,drawProjectiles)) then {
        private _projectilesNew = [];
        private _grenadesNew = [];

        // Draw projectiles if there are any
        {
            _x params [
                ["_projectile", objNull, [objNull]],
                ["_segments", [], [[]]],
                ["_shooter", objNull, [objNull]],
                ["_color", [1,1,1,1]]
            ];

            if !(isNull _projectile) then {
                // Store new segment
                private _newestIndex = _segments pushBack [
                    getPosVisual _projectile,
                    _color
                ];
                // Clamp number of segments to be drawn
                if (_newestIndex > MAX_PROJECTILE_SEGMENTS) then {
                    _segments deleteAt 0;
                    DEC(_newestIndex);
                };

                // Store projectiles for next frame
                _projectilesNew pushBack [_projectile, _segments, _shooter, _color];
            } else {
                if (count _segments > 0) then {
                    _segments deleteAt 0;
                    _projectilesNew pushBack [_projectile, _segments, _shooter, _color];
                };
            };
            // Draw all projectile segments
            private _oldLoc = [];
            {
                _x params ["_locNew", "_colorNew"];
                if !(_oldLoc isEqualTo []) then {
                    drawLine3D [_oldLoc, _locNew, _colorNew];
                };
                _oldLoc = _locNew;
            } forEach _segments;

        } forEach GVAR(projectilesToDraw);
        GVAR(projectilesToDraw) = _projectilesNew;

        {
            if !(isNull _x) then {
                private _grenadeVelocityMagnitude = vectorMagnitude velocity _x;

                // Draw grenade (rotate icon to represent spinning)
                drawIcon3D [ICON_GRENADE, [1,0,0,1], getPosVisual _x, 0.6, 0.6, if (_grenadeVelocityMagnitude > 0) then { time * 100 * _grenadeVelocityMagnitude } else { 0 }, "", 0, 0.05, "TahomaB"];

                // Store grenade for next frame
                _grenadesNew pushBack _x;
            };
        } forEach GVAR(grenadesToDraw);
        GVAR(grenadesToDraw) = _grenadesNew;
    };
};
