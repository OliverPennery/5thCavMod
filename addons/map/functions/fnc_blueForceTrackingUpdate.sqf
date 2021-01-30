 #include "script_component.hpp"

/*_____________________________________________________________________________
@filename: b_fnc_blueForceTrackingUpdate.sqf

Author:
    Brecon

Description:
    Update the blue force tracking.

Arguments:
    0: delay         <int>
    1: hide AI      <Bool>

Return Value:
    None

Example:
    [15, true] call b_fnc_blueForceTrackingUpdate;

 _____________________________________________________________________________*/

 params [["_delay", 15],["_hideAI", true]];
 bFTMarkers = [];

[{
    (_this select 0) params ["_hideAI"];
    //systemChat "cycle";
    {
        deleteMarkerLocal _x;
    } forEach bFTMarkers;

    bFTMarkers = [];

    if (GVAR(requireGPSReceive) && !([player] call FUNC(isGPS))) exitWith {};

    if ((!isNull player) and (alive player)) then {

        private _groupsToDrawMarkers = [];
        private _playerSide = call ace_common_fnc_playerSide;

        _groupsToDrawMarkers = allGroups select {side _x == _playerSide};

        if (_hideAI) then
        {
            _groupsToDrawMarkers = _groupsToDrawMarkers select {
                {
                    [_x] call ace_common_fnc_isPlayer;
                } count units _x > 0;
            };
        };

        if (GVAR(requireGPSTransmit)) then {
            _groupsToDrawMarkers = _groupsToDrawMarkers select {
            [leader _x] call FUNC(isGPS);
            };
        };

        {
            //systemChat str(_x);
            //_grp = call(compile((str(_x) splitString " " joinString "") select [1]));
            private _grp = [_x] call EFUNC(common,getGroup);

            if (!isNil {_grp}) then{
                private _marker = createMarkerLocal [str(_x), [(getPos leader _x) select 0, (getPos leader _x) select 1]];
                _marker setMarkerTypeLocal (_grp select 0);
                _marker setMarkerTextLocal ((_grp select 1) select 0);
                _marker setMarkerColorLocal (_grp select 2);
                bFTMarkers pushBack _marker;
                if (count (_grp select 1) != 1) then {
                    private _ftLead = (units _x) select {(rank _x == "SERGEANT") && (!isFormationLeader _x)};
                    if (count _ftLead == 1) then {
                        _ftLead = _ftLead select 0;
                        private _marker2 = createMarkerLocal [str(_x) + "-1", [(getPos _ftLead) select 0, (getPos _ftLead) select 1]];
                        _marker2 setMarkerTypeLocal (_grp select 0);
                        _marker2 setMarkerTextLocal ((_grp select 1) select 1);
                        _marker2 setMarkerColorLocal (_grp select 2);
                        bFTMarkers pushBack _marker2;
                    };
                };
            }else{
                private _marker = createMarkerLocal [str(_x), [(getPos leader _x) select 0, (getPos leader _x) select 1]];
                _marker setMarkerTypeLocal "b_inf";
                _marker setMarkerTextLocal (groupId _x);
                _marker setMarkerColorLocal "colorBrown";
                bFTMarkers pushBack _marker;
            };


        } forEach _groupsToDrawMarkers;
    };
}, _delay, [_hideAI]] call CBA_fnc_addPerFrameHandler;
