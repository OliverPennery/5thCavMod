#include "script_component.hpp"

/* diag_log "A_M PI Server";
systemChat "A_M PI Server"; */

["ace_zeus_createZeus", {
    params ["_ownerPlayer"];
    SETPVAR(_ownerPlayer,GVAR(zeusEnabled),true);
}] call CBA_fnc_addEventHandler;

/* if (isNil "TKLOG")then{
    TKLOG = [];
};

if (isNil "NADELOG")then{
    NADELOG = [];
};

if (isNil "SAFESTARTLOG")then{
    SAFESTARTLOG = [];
}; */
