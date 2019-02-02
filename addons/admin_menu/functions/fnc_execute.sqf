#include "script_component.hpp"

params ["_btnControl", "_editIdc", "_target", "_textIdc"];

private _code = ([(ctrlParent( _btnControl # 0)), _editIdc] call FUNC(getEditData)) # 1;

if (!(_target in [0,2, Player])) then {
    _target = (([(ctrlParent( _btnControl # 0)), _target] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;
    [format ["Ran Custom Code on %1", name _target], 2] call FUNC(clientLog);
    [format ["%1 Ran Custom Code on %2", name player, name _target], 2, true] call FUNC(log);
}else{
    [format ["Ran Custom Code on %1", (["ALL", "SERVER", "LOCAL"] # ([0,2, Player] find _target))], 2] call FUNC(clientLog);
    [format ["%1 Ran Custom Code on %2", name player, (["ALL", "SERVER", "LOCAL"] # ([0,2, Player] find _target))], 2, true] call FUNC(log);
};

_code remoteExecCall [QFUNC(compile), _target];

/* if (!isNil GETMVAR(QGVAR(compile_return), "")) then {
    if (typeName GVAR(compile_return) != "STRING") then {
        GVAR(compile_return) = str(GVAR(compile_return));
    };
}else{
    GVAR(compile_return) = "";
}; */

private _return = GETMVAR(GVAR(compile_return), "");

((ctrlParent( _btnControl # 0)) displayCtrl _textIdc) ctrlSetText _return;
