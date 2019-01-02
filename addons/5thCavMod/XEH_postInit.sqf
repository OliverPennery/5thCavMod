if (isServer) then {
	//initServer.sqf type stuff
};
if (hasInterface) then {
	[CAV_bft_delay] call CAV_fnc_blueForceTrackingUpdate;
};