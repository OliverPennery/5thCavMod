#include "script_component.hpp"

[] call FUNC(initMenu);

[{
    if (isNull (findDisplay 33001)) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    [GVAR(selectionMode)] call FUNC(updateMapIcons);
},0,[]] call CBA_fnc_addPerFrameHandler;
