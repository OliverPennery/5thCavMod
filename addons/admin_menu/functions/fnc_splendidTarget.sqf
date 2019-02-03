#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_mode"];

call FUNC(toggleMenu);

if (_mode == 0) then {
    private _unit = (([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

    private _pos = getPos _unit;
    private _dir = (getDir _unit - 180);
    _pos = [(_pos#0 + (sin _dir * -5)),( _pos#1 + (cos _dir * -5)), (_pos#2 + 3.5)];
    ["Paste" ,[(worldName), _pos, _dir,0.7,[-20,0],0,0,(daytime * 60),0.3,0,1,0,1]]call BIS_fnc_camera;

    [format ["Viewing %1 With Splendid Cam", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Is Viewing %2 With Splendid Cam", name player, (name _unit)], 2, true] call FUNC(log);
}else{
    private _pos = getPos player;
    private _dir = getDir player;
    _pos = [(_pos#0 + (sin _dir * -5)),( _pos#1 + (cos _dir * -5)), (_pos#2 + 3.5)];
    //["Paste" ,[(worldName), _pos, _dir,0.7,[-20,0],0,0,(daytime * 60),0.3,0,1,0,1]]call BIS_fnc_camera;
    [] call BIS_fnc_camera;
    ["Opening Splendid Cam", 2] call FUNC(clientLog);
    [format ["%1 Is Opening Splendid Cam", name player], 2, true] call FUNC(log);
};
