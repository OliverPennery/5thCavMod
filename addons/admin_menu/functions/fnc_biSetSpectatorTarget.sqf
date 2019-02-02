#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_mode"];

["BI SPECTATOR NO WORK!!", 0] call FUNC(clientLog);

//call cav_fnc_toggleMenu;


//["Initialize", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;

//systemChat str (missionNamespace getVariable ["BIS_EGSpectatorCamera_freeCamHasTarget", false]);

/* private _unit = (([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

[_unit] call BIS_fnc_EGSpectatorCameraSetTarget;

//systemChat str (missionNamespace getVariable ["BIS_EGSpectatorCamera_freeCamHasTarget", false]);

[
{
    //!isNull (findDisplay 60492)
    (missionNamespace getVariable ["BIS_EGSpectatorCamera_freeCamHasTarget", false])
},
{
    params ["_mode"];
    systemChat "run";
    if (_mode == 0) then {
        //["OnCameraModeChanged", ["fps"]] call BIS_fnc_EGSpectatorCamera;
        ["OnCameraModeChanged", ["fps", "free"]] call BIS_fnc_EGSpectatorCamera;
    }else{
        ["OnCameraModeChanged", ["follow", "free"]] call BIS_fnc_EGSpectatorCamera;
        //["ToggleCameraMode", ["follow"]] call BIS_fnc_EGSpectatorCamera;

        //["SetCameraMode", ["follow"]] call BIS_fnc_EGSpectatorCamera;
        //["OnCameraModeChanged", ["follow", "free"]] call BIS_fnc_EGSpectatorCamera;
    };
}, [_mode]] call CBA_fnc_waitUntilAndExecute;



[{
    params ["_mode"];


    if (_mode == 0) then {
        //["OnCameraModeChanged", ["fps"]] call BIS_fnc_EGSpectatorCamera;
        //["OnCameraModeChanged", ["fps", "free"]] call BIS_fnc_EGSpectatorCamera;
        ["ToggleCameraMode"] call BIS_fnc_EGSpectatorCamera;
        ["ToggleCameraMode"] call BIS_fnc_EGSpectatorCamera;
    }else{
        //["OnCameraModeChanged", ["follow", "free"]] call BIS_fnc_EGSpectatorCamera;
        ["ToggleCameraMode"] call BIS_fnc_EGSpectatorCamera;

        //["SetCameraMode", ["follow"]] call BIS_fnc_EGSpectatorCamera;
        //["OnCameraModeChanged", ["follow", "free"]] call BIS_fnc_EGSpectatorCamera;
    };
}, [_mode], 1] call CBA_fnc_waitAndExecute; */
