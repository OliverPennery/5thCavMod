#include "script_component.hpp"

params [["_markers",nil]];

if (isNil "_markers") then {
    {
        deleteMarkerLocal _x;
    } forEach GVAR(Markers);
    GVAR(Markers) = [];
} else {
    {
        deleteMarkerLocal _x;
    } forEach _markers;
};
