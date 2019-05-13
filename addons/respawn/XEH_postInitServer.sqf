#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(CustomRespawnMode) == 1 || GVAR(CustomRespawnMode) == 2) then {
    _medVic = call (compile GVAR(medVicString));
    if (isNull _medVic) then {
        systemchat localize LSTRING(medVic_errorMessage);
    } else {
        GVAR(medVic) = _medVic;
    };
    if (GVAR(CustomRespawnMode) == 1) then {
        missionNamespace setVariable [QGVAR(deployed),false,true];
    };
};

if (GVAR(CustomRespawnMode) == 1) then{
    /* SETMPVAR(GVAR(deathQueue), []); */
    CAV_DQ = [];
    publicVariable "CAV_DQ";

    addMissionEventHandler ["HandleDisconnect", {
    	params ["_unit", "_id", "_uid", "_name"];
        (netId _unit) call FUNC(removePlayerQueue);
        /* format["objectID:%1 \nobject:%2", objectFromNetId (netId _unit), _unit] remoteExecCall ["hint", 0]; */
    	false
    }];
};
