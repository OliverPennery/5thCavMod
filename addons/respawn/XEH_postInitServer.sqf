#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(CustomRespawnMode) == 1 || GVAR(CustomRespawnMode) == 2) then {
    GVAR(medVic_Server) = [];
    private _medVicgen = call (compile GVAR(medVicString));
    if (isNil {_medVicgen}) then {
        GVAR(medVic_Server) pushBack 0;
    } else {
        GVAR(medVic_Server) pushBack _medVicgen;
    };
    {
        private _medvic = call compile format["%1_%2",GVAR(medVicString),_x];
        if (isNil {_medVic}) then {
            GVAR(medVic_Server) pushBack 0;
        } else {
            GVAR(medVic_Server) pushBack _medVic;
        };
    } forEach [west,east,independent];
    if (GVAR(CustomRespawnMode) == 1) then {
        {
            if !(_x isEqualTo 0) then {
                _x setVariable [QGVAR(deployed),false,true];
            };
        } forEach GVAR(medVic_Server);
    };
    publicVariable QGVAR(medVic_Server);
};
