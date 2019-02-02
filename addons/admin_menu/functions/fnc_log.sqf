#include "script_component.hpp"

params ["_msg", ["_type", 2], ["_sendToAdmin", false]];

/*
_type
    0 - Error
    1 - Warning
    2 - Log
*/

private _format = ["CAV (Admin Menu) ERROR: %1", "CAV (Admin Menu) WARNING: %1", "CAV (Admin Menu) INFO: %1"] # _type;

if _sendToAdmin then {
    private _admin = call FUNC(getLoggedInAdmin);

    if ((player != _admin) and !(isNil "_admin")) then{
        (format [_format, _msg]) remoteExecCall ["systemChat", _admin];
    };
};

diag_log text (format [_format, _msg]);
