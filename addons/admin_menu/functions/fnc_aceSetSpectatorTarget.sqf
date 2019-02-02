#include "script_component.hpp"

params ["_btnControl", "_listboxIdc", "_mode"];

private _unit = (([(ctrlParent (_btnControl # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

call FUNC(toggleMenu);

[true, false, false] call ace_spectator_fnc_setSpectator;

if (_mode == 0) then {
    [1, _unit] call ace_spectator_fnc_setCameraAttributes;

    [format ["Ace Spectating %1 In First Person", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Is Ace Spectating %2 In First Person", name player, (name _unit)], 2, true] call FUNC(log);
}else{
    [2, _unit] call ace_spectator_fnc_setCameraAttributes;
    
    [format ["Ace Spectating %1 In Thrid Person", (name _unit)], 2] call FUNC(clientLog);
    [format ["%1 Is Ace Spectating %2 In Thrid Person", name player, (name _unit)], 2, true] call FUNC(log);
};
