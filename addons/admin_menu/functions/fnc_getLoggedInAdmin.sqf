#include "script_component.hpp"

private "_currentAdmin";

if (isMultiplayer) then {
    if (hasInterface && isServer) then{
        _currentAdmin = player;
    }else{
        //SETMVAR(QGVAR(loggedInAdmin), _x);
        private _code = {
            {
                if ((admin owner _x) != 0) exitWith {
                    missionNamespace setVariable [QGVAR(loggedInAdmin), _x, true];
                };
            } forEach allPlayers - entities 'HeadlessClient_F';
        };

        _code remoteExec ["call", 2];

        _currentAdmin = missionNamespace getVariable [QGVAR(loggedInAdmin), objNull];
    };

}else{
    _currentAdmin = player;
};
_currentAdmin
