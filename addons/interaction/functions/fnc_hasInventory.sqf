#include "script_component.hpp"

private _config = configFile >> "CfgVehicles" >> typeOf _this;

if (getNumber (_config >> "maximumLoad") != 0 && { getNumber (_config >> "disableInventory") != 1}) exitWith {
    true
};
false
