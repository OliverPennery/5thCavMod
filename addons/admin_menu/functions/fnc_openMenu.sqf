#include "script_component.hpp"

params ["_menu"];
if (isMultiplayer) then {
    if ((call BIS_fnc_admin != 0) or (GVAR(AM_Admin_UID) find (getPlayerUID player) != -1) or (isServer)) then{
        private _display = uiNamespace getVariable QGVAR(currentDisplay);
        if (!isNil "_display") then {
            _display closeDisplay 1;
        };

        [format["Opening %1", _menu], 2] call FUNC(clientLog);
        [format ["%1 Open %2", name player, _menu], 2, false] call FUNC(log);
        createDialog _menu;
    }else{
        ["Must Be Logged In Admin Or UID Set Admin To Use Menu", 1] call FUNC(clientLog);
        [format ["%1 Tried To Open Admin Menu", name player], 1, true] call FUNC(log);
    };
} else{
    private _display = uiNamespace getVariable QGVAR(currentDisplay);
    if (!isNil "_display") then {
        _display closeDisplay 1;
    };

    [format["Opening %1", _menu], 2] call FUNC(clientLog);
    [format ["%1 Open %2", name player, _menu], 2, false] call FUNC(log);
    createDialog _menu;
};
