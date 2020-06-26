#include "script_component.hpp"

params ["_player", "_group"];

private _playerSide = call ace_common_fnc_playerSide;
private _groupList = [];
private _groupMembers = (units group _player);
{
    _groupList pushBack (((groupId _x) splitString " ") joinString "");
}forEach (allGroups select {side _x == _playerSide});


if (_group in _groupList) then{
    (units group _player) join ((allGroups select {side _x == _playerSide and (((groupId _x) splitString " ") joinString "") == _group}) select 0);
}else{
    (group _player) setGroupIdGlobal [_group];
};

if (!GVAR(switchFreqOnJoin)) exitwith {false};

{
    [group _player, true] remoteExecCall [QEFUNC(radio,playerSetFreq), _x];
}forEach _groupMembers;
