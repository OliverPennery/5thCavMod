#include "script_component.hpp"

params [["_unit",ACE_Player],["_savedRadioData",nil]];

if (isNil "_savedRadioData") exitWith {};

[{
    params ["_unit","_savedRadioData"];


    private _newRadios = [] call acre_api_fnc_getCurrentRadioList;
    {
        private _curData = _x;
        private _curRadios = _newRadios select {[_x] call acre_api_fnc_getBaseRadio == (_curData select 0)};
        if (_curRadios isEqualTo []) exitWith {};
        private _curRadio = _curRadios select 0;
        [_curRadio,_curData select 1] call acre_api_fnc_setRadioChannel;
        [_curRadio,_curData select 2] call acre_api_fnc_setRadioSpatial;
        [_curRadio,_curData select 3] call acre_api_fnc_setRadioVolume;
        _newRadios deleteAt (_newRadios find _curRadio);
    } forEach _savedRadioData;
},[_unit,_savedRadioData],1] call cba_fnc_waitAndExecute;
