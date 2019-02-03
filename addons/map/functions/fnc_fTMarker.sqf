#include "script_component.hpp"
/*_____________________________________________________________________________
@filename: fn_fTMarker.sqf

Author:
	FieldGeneral

Description:
	Creates markers for fireteam members

Arguments:
	1: delay (int)

Return Value:
	None

Example:
	[1] call CAV_map_fnc_fTMarker;

 _____________________________________________________________________________*/
params ["_delay"];
[{
  (_this select 0) params ["_delay"];

	{
		deleteMarkerLocal _x;
	} forEach GVAR(FTMarkers);

	GVAR(FTMarkers) = [];

  if (GVAR(fTMarkers_Delay) != _delay) then {
		[GVAR(fTMarkers_Delay)] call FUNC(fTMarker);
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};

  if (GVAR(requireGPSReceive) && !([player] call FUNC(isGPS))) exitWith {};

	if ((!isNull player) && (alive player) && (GVAR(fTMarkers_Enabled))) then {
		private _PlayerGroup = [];
		{
			if(alive _x) then {
				_PlayerGroup pushBackUnique _x;
			};
		} forEach units (group player);

		{
      if (!GVAR(requireGPSTransmit) || ([_x] call FUNC(isGps))) then {
				_mkrName = Format ["mkr_%1",_x];
        _mkrType = QGVAR(man);
  			if (GVAR(fTMarkers_Type)) then {
  				_mkrType = [_x] call FUNC(getUnitType);
  			};
				_pos = getposATL _x;
				_dir = direction _x;
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

				_mkr = createMarkerLocal [_mkrName, _pos];
				_mkr setMarkerShapeLocal "ICON";
				_mkr setMarkerTypeLocal _mkrType;
				_mkr setMarkerColorLocal _color;
				_mkr setMarkerDirLocal (_dir);

				GVAR(FTMarkers) pushBack _mkr;
      };
		} forEach _PlayerGroup;
	};
}, _delay, [_delay]] call CBA_fnc_addPerFrameHandler;
