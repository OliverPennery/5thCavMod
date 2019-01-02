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

//--- Check for BI Arsenal
_baArs = [
	{if (!(isnull (uinamespace getvariable ["BIS_fnc_arsenal_cam",objnull]))) then
	{format ["%1 is using arsenal", name player] remoteExecCall ["hintSilent"];};
	}, 0, [player]
	] call CBA_fnc_addPerFrameHandler;

//--- Check for ACE Arsenal
_aceArs = ["ace_arsenal_displayOpened", {format ['%1 is using arsenal', name player] remoteExecCall ['hintSilent']}] call CBA_fnc_addEventHandler;

player setVariable ["baArs", _baArs, true];
player setVariable ["aceArs", _aceArs, true];

//--- Fix for notification spam --- run code on the player

/*

//--- hint fix for BI Arsenal

[(player getVariable "baArs")] call CBA_fnc_removePerFrameHandler;

//--- hint fix for ACE Arsenal

["ace_arsenal_displayOpened", (player getVariable "aceArs")] call CBA_fnc_removeEventHandler;

*/
