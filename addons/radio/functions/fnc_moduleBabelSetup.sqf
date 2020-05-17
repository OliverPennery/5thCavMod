#include "script_component.hpp"
params [["_logic",objNull,[objNull]],["_units",[],[[]]],["_activated",true,[true]]];

private _moduleEnabled = _logic getVariable ["moduleEnabled",false];

private _spokenLangWest = [west];
private _spokenLangEast = [east];
private _spokenLangGuer = [independent];
private _spokenLangCiv = [civilian];
private _spokenLangLogic = [sideLogic];

if (_moduleEnabled) then {

    _spokenLangWest append (_logic getVariable ["spokenLangWest",""] splitString ",");
    _spokenLangEast append (_logic getVariable ["spokenLangEast",""] splitString ",");
    _spokenLangGuer append (_logic getVariable ["spokenLangGuer",""] splitString ",");
    _spokenLangCiv append (_logic getVariable ["spokenLangCiv",""] splitString ",");
    _spokenLangLogic append (_logic getVariable ["spokenLangLogic",""] splitString ",");

    [_spokenLangWest,_spokenLangEast,_spokenLangGuer,_spokenLangCiv,_spokenLangLogic] call acre_api_fnc_babelSetupMission;
};


true
