#include "script_component.hpp"

params ["_unit", "_instigator", "_time"];


if ([_instigator] call ace_common_fnc_isPlayer) then {
    [format ["%1 killed %2", name _instigator, name _unit]] remoteExec ["systemChat", call FUNC(getLoggedInAdmin)];
    [format ["%1 killed %2", name _instigator, name _unit]] remoteExec ["hint", call FUNC(getLoggedInAdmin)];
    TKLOG pushBack [name _unit, name _instigator, _time];
}else{
    TKLOG pushBack [name _unit, "~AI", _time];
};
