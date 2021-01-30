#include "script_component.hpp"

params ["_unit", "_instigator", "_time"];


if ([_instigator] call ace_common_fnc_isPlayer) then {
    private "_admin";
    {
        if ((admin owner _x) != 0) then {
            _admin = owner _x;
        };
    } forEach allPlayers - entities 'HeadlessClient_F';
    /* [format ["%1 - %2", _admin, owner _admin]] remoteExec ["systemChat", 0]; */
    [format ["%1 killed %2", name _instigator, name _unit]] remoteExec ["systemChat", _admin];
    [format ["%1 killed %2", name _instigator, name _unit]] remoteExec ["hint", _admin];
    TKLOG pushBack [name _unit, name _instigator, _time];
}else{
    TKLOG pushBack [name _unit, "~AI", _time];
};
