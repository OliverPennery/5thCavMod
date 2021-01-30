#include "script_component.hpp"

if (GETMVAR(GVAR(togPlayMap),false)) then{
    SETMVAR(GVAR(togPlayMap),false);
}else{
    SETMVAR(GVAR(togPlayMap),true);
    tPMarkers = [];
    [{
       {
           deleteMarkerLocal _x;
       } forEach tPMarkers;

       tPMarkers = [];
       if (!(GETMVAR(GVAR(togPlayMap),false)) || (isNull player) || !(alive player)) then {
           [_this select 1] call CBA_fnc_removePerFrameHandler;
       }else{
           {
                private _marker = createMarkerLocal [str(_x), [(getPos _x) select 0, (getPos _x) select 1]];
                _marker setMarkerTypeLocal "hd_dot";
                _marker setMarkerTextLocal name _x;
                tPMarkers pushBack _marker;
           } forEach call CBA_fnc_players;
       };
    }, 15] call CBA_fnc_addPerFrameHandler;
};
