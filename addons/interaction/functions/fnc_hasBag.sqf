#include "script_component.hpp"

private _backpack = unitBackpack _this;
private _config = configFile >> "CfgVehicles" >> typeOf _backpack;

if (!isNull _backpack && {alive _this} && {(getNumber (_config >> "maximumLoad") != 0 && { getNumber (_config >> "disableInventory") != 1})}) exitWith {
    true
};
false
