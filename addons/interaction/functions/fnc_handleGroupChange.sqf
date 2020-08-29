#include "script_component.hpp"

params ["_player", "_group", ["_flag", false]];

/* systemChat format["hGC: %1 - %2", _player, _group]; */

private _playerSide = call ace_common_fnc_playerSide;
private _groupList = [];
private _groupMembers = (units group _player);
{
    _groupList pushBack (((groupId _x) splitString " ") joinString "");
}forEach (allGroups select {side _x == _playerSide});

/* systemChat format["%1 - %2", _groupList, _groupMembers]; */

if (_group in _groupList) then{
    /* systemChat "JOIN GROUP"; */
    private _nGrp = ((allGroups select {side _x == _playerSide and (((groupId _x) splitString " ") joinString "") == _group}) select 0);
    (units group _player) join _nGrp;
    systemChat str _nGrp;
    [_nGrp, true] call EFUNC(radio,playerSetFreq);
}else{
    if (_flag) then {
        /* systemChat "MAKE GROUP"; */
        private _newGroup = createGroup side group _player;
        [_player] joinSilent _newGroup;
    };

    (group _player) setGroupIdGlobal [_group];
    systemChat str (group _player);
    {
        [group _player, true] remoteExecCall [QEFUNC(radio,playerSetFreq), _x];
    }forEach _groupMembers;
};
/* systemChat "END"; */
if (!GVAR(switchFreqOnJoin)) exitwith {false};
