#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: fn_objectRemover.sqf

Author:
    Brecon

Description:
    Deletes given objects

Arguments:
    0: prefix         <string>
    1: start index  <int>
    2: end index     <int>

Return Value:
    None

Example:
    ["fob_", 0, 11] call b_fnc_objectRemover;

 _____________________________________________________________________________*/

params ["_prefix", "_start", "_end"];

for [{_i=_start}, {_i<_end}, {_i=_i +1}] do
{
    _string=(_prefix+ str _i);
    _string2=('deleteVehicle ' +_string);
    call compile _string2;
};
