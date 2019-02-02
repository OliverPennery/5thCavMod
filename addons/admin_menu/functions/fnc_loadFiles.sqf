#include "script_component.hpp"

params ["_comboControl"];

[
{
    (_this select 0) params ["_comboControl"];
    ctrlShown  _comboControl
},
{
    (_this select 0) params ["_comboControl"];
    lbClear _comboControl;
    {
        _index = _comboControl lbAdd (_x select 0);
        _comboControl lbSetData [_index, (_x select 1)];
    } forEach (profileNameSpace getVariable [QGVAR(savedCode), []]);

    _comboControl lbSetCurSel 0;

}, [_comboControl]] call CBA_fnc_waitUntilAndExecute;
