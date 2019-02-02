#include "script_component.hpp"

params ["_msg", ["_type", 2]];

/*
_type
    0 - Error
    1 - Warning
    2 - Log
*/

private _format = ["CAV (Admin Menu) ERROR: %1", "CAV (Admin Menu) WARNING: %1", "CAV (Admin Menu) INFO: %1"] # _type;

(format [_format, _msg]) remoteExecCall ["systemChat", player];
