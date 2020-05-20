#include "script_component.hpp"

params [["_unit", ACE_Player],["_loadout", getUnitLoadout ACE_Player]];

private _savedRadios = [];
private _savedRadioData = [];
private _item;

for "_i" from 3 to 5 do {
    if !((_loadout select _i) isEqualTo []) then {
        {
            _item = _x select 0;
            if (!(_item isEqualType []) && {[_item] call acre_api_fnc_isRadio}) then {
                _savedRadios pushBack _item;
            };
        } forEach ((_loadout select _i) select 1);
    };
};

{
    private _radioData = [[_x] call acre_api_fnc_getBaseRadio];
    _radioData pushBack ([_x] call acre_api_fnc_getRadioChannel);
    _radioData pushBack ([_x] call acre_api_fnc_getRadioSpatial);
    _radioData pushBack ([_x] call acre_api_fnc_getRadioVolume);
    _savedRadioData pushBack _radioData;
} forEach _savedRadios;

_savedRadioData
