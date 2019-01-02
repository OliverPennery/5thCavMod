#include "script_component.hpp"

params ["_group"];

private ["_x", "_result"];
_x = (str(_group) splitString " " joinString "");

if (count (_x splitString "-") == 1) exitwith{
	call(compile("CAV_" + (_x select [1])))
};
