 #include "script_component.hpp"
/*_____________________________________________________________________________
@filename: fn_fTMarker.sqf
 
Author:
	FieldGeneral

Description:
	Creates markers for fireteam members

Arguments:
	None

Return Value:
	None

Example: 
	[1] call CAV_map_fnc_fTMarker;

 _____________________________________________________________________________*/
 GVAR(FTMarkerTimer) = 0;
[{
	_distance = ((worldsize/200)/(1+exp(-10*(ctrlMapScale ((findDisplay 12) displayCtrl 51)))))-(worldsize/400);
	if (GVAR(FTMarkerTimer) < GVAR(fTMarkers_Delay)) then {
		GVAR(FTMarkerTimer) = GVAR(FTMarkerTimer) + 0.1;
		{
			_pos = _x select 4;
			_dir = _x select 5;
			_sPos = [(_pos select 0) + (_distance * sin(_dir)), (_pos select 1) + (_distance * cos(_dir))];
			(_x select 1) setMarkerPosLocal _sPos;
			(_x select 1) setMarkerDirLocal _dir;
			(_x select 0) setMarkerPosLocal _sPos;
			(_x select 0) setMarkerDirLocal _dir;
		} forEach GVAR(FTMarkers);
	} else {
		GVAR(FTMarkerTimer) = 0;
		{
			deleteMarkerLocal (_x select 0);
			deleteMarkerLocal (_x select 1);
			deleteMarkerLocal (_x select 2);
			deleteMarkerLocal (_x select 3);
		} forEach GVAR(FTMarkers);
		
		GVAR(FTMarkers) = [];
		
	/*	if (GVAR(fTMarkers_Delay) != _delay) then {
			[GVAR(fTMarkers_Delay)] call FUNC(fTMarker);
			[_this select 1] call CBA_fnc_removePerFrameHandler;
		};
	*/
		if ((!isNull player) && (alive player) && (GVAR(fTMarkers_Enabled))) then {
			private _PlayerGroup = [];
			{
				if(alive _x) then {
					_PlayerGroup pushBackUnique _x;
				};
			} forEach units (group player);
			{
				_mkrName = Format ["mkr_%1",_x];
				_mkrborderName = Format ["mkrB_%1",_x];
				_mkrcenterName = Format ["mkrC_%1",_x];
				_mkrcenterborderName = Format ["mkrCB_%1",_x];
				_pos = getposATL _x;
				_dir = direction _x;
				_sPos = [(_pos select 0) + (_distance * sin(_dir)), (_pos select 1) + (_distance * cos(_dir))];
				_color = "ColorWhite";
				if (GVAR(fTMarkers_ColorTeams)) then {
					_colorTeam = assignedTeam _x;
					switch (_colorTeam) do
					{
					  case "MAIN": {_color = "ColorWhite"};
					  case "RED": {_color = "ColorRed"};
					  case "GREEN": {_color = "ColorGreen"};
					  case "BLUE": {_color = "ColorBlue"};
					  case "YELLOW": {_color = "ColorYellow"};
					  default {_color = "ColorWhite"};
					};
				};
				
				_mkrBorder = createMarkerLocal [_mkrborderName,_sPos];
				_mkrBorder setMarkerShapeLocal "ICON";
				_mkrBorder setMarkerTypeLocal "MIL_TRIANGLE";
				_mkrBorder setMarkerColorLocal "ColorBlack";
				_mkrBorder setMarkerSizeLocal [0.6, 0.6];
				_mkrBorder setMarkerDirLocal (_dir);
				
				_mkrCenterBorder = createMarkerLocal [_mkrcenterborderName, _pos];
				_mkrCenterBorder setMarkerShapeLocal "ICON";
				_mkrCenterBorder setMarkerTypeLocal "MIL_DOT";
				_mkrCenterBorder setMarkerColorLocal "ColorBlack";
				_mkrCenterBorder setMarkerSizeLocal [0.9, 0.9];
				
				_mkr = createMarkerLocal [_mkrName, _sPos];
				_mkr setMarkerShapeLocal "ICON";
				_mkr setMarkerTypeLocal "MIL_TRIANGLE";
				_mkr setMarkerColorLocal _color;
				_mkr setMarkerSizeLocal [0.4, 0.4];
				_mkr setMarkerDirLocal (_dir);
				
				_mkrCenter = createMarkerLocal [_mkrcenterName, _pos];
				_mkrCenter setMarkerShapeLocal "ICON";
				_mkrCenter setMarkerTypeLocal "MIL_DOT";
				_mkrCenter setMarkerColorLocal _color;
				_mkrCenter setMarkerSizeLocal [0.75, 0.75];

				
				GVAR(FTMarkers) pushBack [_mkr, _mkrBorder, _mkrCenterBorder, _mkrCenter, _pos, _dir];
				
			} forEach _PlayerGroup;
		};
	};
}, .1, []] call CBA_fnc_addPerFrameHandler;