/*_____________________________________________________________________________
@filename: b_fnc_blueForceTrackingUpdate.sqf
 
Author:
	Brecon

Description:
	Update the blue force tracking.

Arguments:
	0: delay 		<int>
	1: hide AI  	<Bool>

Return Value:
	None

Example:
	[15, true] call b_fnc_blueForceTrackingUpdate;

 _____________________________________________________________________________*/

params [["_delay", 15]];
bFTMarkers = [];

[{
	(_this select 0) params ["_delay"];
	//systemChat "cycle";
	{
		deleteMarkerLocal _x;
	} forEach bFTMarkers;

	bFTMarkers = [];

	if (_delay != CAV_bft_delay) then {
		(_this select 1) call CBA_fnc_removePerFrameHandler;
		[CAV_bft_delay] call CAV_fnc_blueForceTrackingUpdate;
	};
	
	if (CAV_bft_enable) then {
		if ((!isNull player) and (alive player)) then {

			private _groupsToDrawMarkers = [];
			private _playerSide = call ace_common_fnc_playerSide;

			_groupsToDrawMarkers = allGroups select {side _x == _playerSide};

			if (CAV_bft_hideAI) then 
			{
				_groupsToDrawMarkers = _groupsToDrawMarkers select {
					{
						[_x] call ace_common_fnc_isPlayer;
					} count units _x > 0;
				};
			};
			
			{
				//systemChat str(_x);
				//_grp = call(compile((str(_x) splitString " " joinString "") select [1]));
				private _grp = [_x] call CAV_fnc_getGroup;

				if (!isNil {_grp}) then 
				{
					private _marker = createMarkerLocal [_grp select 0, [(getPos leader _x) select 0, (getPos leader _x) select 1]];
					_marker setMarkerTypeLocal (_grp select 1);
					_marker setMarkerTextLocal (_grp select 2);
					_marker setMarkerColorLocal (_grp select 3);
					bFTMarkers pushBack _marker;
				}else{
					private _marker = createMarkerLocal [str(_x), [(getPos leader _x) select 0, (getPos leader _x) select 1]];
					_marker setMarkerTypeLocal "b_inf";
					_marker setMarkerTextLocal (groupId _x);
					_marker setMarkerColorLocal "colorBrown";
					bFTMarkers pushBack _marker;
				};
				
				
			} forEach _groupsToDrawMarkers;
		};
	};
}, _delay, [_delay]] call CBA_fnc_addPerFrameHandler;