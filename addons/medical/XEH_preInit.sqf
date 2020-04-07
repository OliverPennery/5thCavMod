#include "script_component.hpp"

ADDON = false;
LOG(MSG_INIT);

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

#include "initSettings.sqf"

/* GVAR(replacementItems) = configProperties [configFile >> QEGVAR(medical,replacementItems), "isArray _x"] apply {
    [configName _x, getArray _x]
}; */

ADDON = true;
