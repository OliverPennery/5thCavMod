#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_main", "cav_common"};
        author = "";
        authors[] = {"Brecon, Field"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"