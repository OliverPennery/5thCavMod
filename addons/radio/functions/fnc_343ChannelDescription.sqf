#include "script_component.hpp"

params ["_radioId", "",  "", "", ""];

private _currentAbsChannel = ([_radioId] call acre_api_fnc_getRadioChannel)-1;
private _currentBlock = floor (_currentAbsChannel / 16);
private _currentChannel = _currentAbsChannel - _currentBlock*16;

private _description = format ["Ch %1:%2 - %3", _currentBlock + 1, _currentChannel + 1, CAV_SWRadioChannels select _currentChannel];

_description
