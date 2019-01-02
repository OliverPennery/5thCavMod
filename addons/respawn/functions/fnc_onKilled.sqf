#include "script_component.hpp"

setPlayerRespawnTime 99999;

sleep 0.5;

[true] call ace_spectator_fnc_setSpectator;

[{
	private _errorCode = -1;
	
	if (alive player) then
	{
		_errorCode = 0;
	}else {
		if (playerRespawnTime > 900) then {
			systemChat "Respawn Unavailable";
		}else{
			format ["%1 Seconds Remaining!", (playerRespawnTime)] remoteExec ["systemChat", player];
		};
	};

	
	if (_errorCode != -1) then {

        //Error or Success, close dialog and remove PFEH

        [_this select 1] call CBA_fnc_removePerFrameHandler;
       
    };
	
},15 , []] call CBA_fnc_addPerFrameHandler;


switch (GVAR(CustomRespawnMode)) do
{
	// --- Standard respawn_west ticket system
	case 0 : 
	{
		waitUntil {([player,nil,true] call BIS_fnc_respawnTickets > 0)};
		setPlayerRespawnTime (playerRespawnTime + GVAR(RespawnTime) - 99999);
		waitUntil {sleep 0.5; (playerRespawnTime <= 0.6)};
		[false] call ace_spectator_fnc_setSpectator;
	};
	
	// --- Universal vehicle deploy respawn, the vehicle need to be deployed to respawn
	case 1 :
	{
		if (getDammage GVAR(medVic) != 1) then
		{
			waitUntil {
				(
				(GVAR(medVic) getVariable 'deployed') and
				((side GVAR(medVic) == side player) or (side GVAR(medVic) == civilian)) and
				(getDammage GVAR(medVic) != 1) and
				(((count fullCrew [GVAR(medVic), "cargo", true]) - (count fullCrew [GVAR(medVic), "cargo"])) > 0) and
				([player,nil,true] call BIS_fnc_respawnTickets > 0)
				)
			};
			setPlayerRespawnTime (playerRespawnTime + GVAR(RespawnTime) - 99999);
			waitUntil {sleep 0.5; (playerRespawnTime <= 0.6)};
			[false] call ace_spectator_fnc_setSpectator;
		};
	};
	
	// --- Respawn using the RHS M1085A1P2B Medical Truck with its tent deploy system
	case 2 :
	{
		if (getDammage GVAR(medVic) != 1) then
		{
			waitUntil {
				(
				(GVAR(medVic) animationSourcePhase 'deploy_tent' == 1) and
				((side GVAR(medVic) == side player) or (side GVAR(medVic) == sideEmpty)) and
				(getDammage GVAR(medVic) != 1) and
				([player,nil,true] call BIS_fnc_respawnTickets > 0)
				)
			};
			setPlayerRespawnTime (playerRespawnTime + GVAR(NumberofRespawns) - 99999);
			waitUntil {sleep 0.5; (playerRespawnTime <= 0.6)};
			[false] call ace_spectator_fnc_setSpectator;
		};
	};
	
	case 3:
	{
		systemchat localize LSTRING(Disabled_errorMessage);
	};

	default {"Custom Respawn Error" remoteExec ["hint", 0];};
};
