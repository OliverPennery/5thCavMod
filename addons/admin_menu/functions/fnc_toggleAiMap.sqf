#include "script_component.hpp"

if (GETMVAR(GVAR(togAiMap),false)) then{
    SETMVAR(GVAR(togAiMap),false);
}else{
    SETMVAR(GVAR(togAiMap),true);
    tAiMarkers = [];
    [{
       {
           deleteMarkerLocal _x;
       } forEach tAiMarkers;

       tAiMarkers = [];
       if (!(GETMVAR(GVAR(togAiMap),false)) || (isNull player) || !(alive player)) then {
           [_this select 1] call CBA_fnc_removePerFrameHandler;
       }else{
           {
                private _marker = createMarkerLocal [str(_x), [(getPos _x) select 0, (getPos _x) select 1]];
                _marker setMarkerTypeLocal "hd_dot";
                _marker setMarkerTextLocal name _x;
                tAiMarkers pushBack _marker;
           } forEach allUnits;
       };
    }, 15] call CBA_fnc_addPerFrameHandler;
};
