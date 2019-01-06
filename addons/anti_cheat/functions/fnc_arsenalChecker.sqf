#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: arsenalChecker.sqf

Author:
	Brecon

Description:
	Checks if the user, uses arsenal and if so hint name globally

Arguments:
	None

Return Value:
	None

Example:
	[] execVM "b\antiCheat\arsenalChecker.sqf";

 _____________________________________________________________________________*/

params ["_autoKick", "_autoKickAmt"];
player setVariable [QGVAR(biArsLast), -5];
player setVariable [QGVAR(biArsAmt), 0];

player setVariable [QGVAR(aceArsLast), -5];
player setVariable [QGVAR(aceArsAmt), 0];


//--- Check for BI Arsenal
_biArs = [{
    (_this select 0) params ["_autoKick", "_autoKickAmt"];

    if (!(isnull (uinamespace getvariable ["BIS_fnc_arsenal_cam",objnull]))) then {
        if ((CBA_missionTime - (player getVariable QGVAR(biArsLast)) > 3) and
             (((player getVariable QGVAR(biArsAmt)) < _autoKickAmt) or
             (!(_autoKick)))) then {
                format ["%1 is using arsenal", name player] remoteExecCall ["hintSilent"];
                player setVariable [QGVAR(biArsLast), CBA_missionTime];
                player setVariable [QGVAR(biArsAmt), ((player getVariable QGVAR(biArsAmt)) + 1)];
        }else {
            if ((CBA_missionTime - (player getVariable QGVAR(biArsLast)) > 3) and
                 ((player getVariable QGVAR(biArsAmt)) >= _autoKickAmt) and
                 (_autoKick)) then {
                    format ["%1 was kicked for using arsenal!", name player] remoteExecCall ["hintSilent"];
                    [QGVAR(Ending_AC), false, 2] call BIS_fnc_endMission;
            };
        };
    };
    }, 0, [_autoKick, _autoKickAmt]] call CBA_fnc_addPerFrameHandler;

//--- Check for ACE Arsenal
_aceArs = ["ace_arsenal_displayOpened", {
    _thisArgs params ["_autoKick", "_autoKickAmt"];
    systemChat format ["%1 %2", _autoKick, _autoKickAmt];
    if ((CBA_missionTime - (player getVariable QGVAR(aceArsLast)) > 3) and
         (((player getVariable QGVAR(aceArsAmt)) < _autoKickAmt) or
         (!(_autoKick)))) then {
            format ["%1 is using arsenal", name player] remoteExecCall ["hintSilent"];
            player setVariable [QGVAR(aceArsLast), CBA_missionTime];
            player setVariable [QGVAR(aceArsAmt), ((player getVariable QGVAR(aceArsAmt)) + 1)];
    }else {
        if ((CBA_missionTime - (player getVariable QGVAR(aceArsLast)) > 3) and
             ((player getVariable QGVAR(aceArsAmt)) >= _autoKickAmt) and
             (_autoKick)) then {
                format ["%1 was kicked for using arsenal!", name player] remoteExecCall ["hintSilent"];
                [QGVAR(Ending_AC), false, 2] call BIS_fnc_endMission;
        };
    };
    }, [_autoKick, _autoKickAmt]] call CBA_fnc_addEventHandlerArgs;
