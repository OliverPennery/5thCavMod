#include "script_component.hpp"

params ["_type"];

[] call FUNC(deleteMarkers);

if (_type isEqualTo "group" || _type isEqualTo "new") then {
    {
        _marker = createMarkerLocal [format[QGVAR(marker_%1),_x],getpos leader _x];
        _marker setMarkerTypeLocal "mil_box";
        if (GVAR(selected) isEqualType grpNull && {GVAR(selected) == _x}) then {
            _marker setMarkerColorLocal "ColorOrange";
        } else {
            switch (side _x) do {
                case (west): {
                    _marker setMarkerColorLocal "ColorBlue";
                };
                case (east): {
                    _marker setMarkerColorLocal "ColorRed";
                };
                case (independent): {
                    _marker setMarkerColorLocal "ColorGreen";
                };
                case (civilian): {
                    _marker setMarkerColorLocal "ColorCIV";
                };
                default {
                    _marker setMarkerColorLocal "ColorWhite";
                };
            };
        };
        GVAR(Markers) pushBack _marker;
    } forEach allGroups;
};
if (_type isEqualTo "unit") then {
    {
        _marker = createMarkerLocal [format[QGVAR(marker_%1),_x],getpos _x];
        _marker setMarkerTypeLocal "hd_dot";
        if ([_x] call ace_common_fnc_isPlayer) then {
            _marker setMarkerTextLocal (name _x);
        };
        if (GVAR(selected) isEqualType objNull && {GVAR(selected) == _x}) then {
            _marker setMarkerColorLocal "ColorOrange";
        } else {
            switch (side _x) do {
                case (west): {
                    _marker setMarkerColorLocal "ColorBlue";
                };
                case (east): {
                    _marker setMarkerColorLocal "ColorRed";
                };
                case (independent): {
                    _marker setMarkerColorLocal "ColorGreen";
                };
                case (civilian): {
                    _marker setMarkerColorLocal "ColorCIV";
                };
                default {
                    _marker setMarkerColorLocal "ColorWhite";
                };
            };
        };
        GVAR(Markers) pushBack _marker;
    } forEach allUnits;
};
