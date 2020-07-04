#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPOSITIONS;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_common"};
        author = "";
        authors[] = {"Brecon"};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgFactions.hpp"
#include "CfgVehicleClasses.hpp"
#include "CfgEditorSubcategories.hpp"
#include "CfgGroups.hpp"
#include "CfgVehicles.hpp"
