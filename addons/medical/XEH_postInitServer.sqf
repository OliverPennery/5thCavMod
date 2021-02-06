#include "script_component.hpp"


{
    // turn [["stuff", 2], ...] into ["stuff", "stuff", ...]
    private _replacements = [];
    {
        _x params ["_item", "_count"];
        for "_i" from 1 to _count do {
            _replacements pushBack _item;
        };
    } forEach getArray _x;

    // check if replacement is for item type or class name
    private _configName = configName _x;
    private _toReplace = if ((_configName select [0,9]) == "ItemType_") then {
        parseNumber (_configName select [9])
    } else {
        _configName
    };

    // register replacement
    [_toReplace, _replacements] call ace_common_fnc_registerItemReplacement;
} forEach (configProperties [configFile >> QGVAR(replacementItems), "isArray _x"]);
