#include "script_component.hpp"
params ["_control", "_button", "_xPos", "_yPos", "_shift", "_ctrl", "_alt"];

systemChat str(_this);
private _worldPos = _control ctrlMapScreenToWorld [_xPos, _yPos];

if (_button == 0) then {
    if (_ctrl) then {
        //Open context menu
        if (!(GVAR(selected) isEqualType false)) then {
        } else {
        };
    } else {
        if (!(GVAR(selected) isEqualType false)) then {
            //Deselect unit/group
            private _type = ["group","unit"] select (GVAR(selected) isEqualType objNull);
            [_type,true] call FUNC(selectionButtonClick);
        } else {
            //Try to select something
            switch (GVAR(selectionMode)) do {
                case ("group"): {
                    private _selection = ["group",_worldPos,40] call FUNC(nearestGroupOrUnit);
                    if (isNil "_selection") then {
                        systemChat "Didn't select a group with that click";
                    } else {
                        GVAR(selected) = group _selection;
                        ["group",false] call FUNC(selectionButtonClick);
                    };
                };
                case ("unit"): {
                    private _selection = ["unit",_worldPos,30] call FUNC(nearestGroupOrUnit);
                    if (isNil "_selection") then {
                        systemChat "Didn't select a unit with that click";
                    } else {
                        GVAR(selected) = _selection;
                        ["unit",false] call FUNC(selectionButtonClick);
                    };
                };
                case ("new"): {
                    GVAR(newPos) = _worldPos;
                    (((ctrlParent _control) displayCtrl 33090) controlsGroupCtrl 33092) ctrlSetText str(GVAR(newPos));
                };
            };
        };
    };
} else {
    if (_ctrl) then {
        //Some other context menu
    };
};

/* private _mvar = GETMVAR(GVAR(markerNum),1); */


/* _marker = createMarkerLocal [format ["marker_%1", _mvar], _worldPos];
_marker setMarkerTypeLocal "hd_dot";
if (_button == 1) then {
    _marker setMarkerColorLocal "ColorRed";
};

GVAR(Markers) pushBack _marker;

SETMVAR(GVAR(markerNum),_mvar+1); */
