#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = MEDICAL;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_main", "ace_medical_treatment"};
        author = "";
        authors[] = {""};
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgReplacementItems.hpp"
#include "CfgWeapons.hpp"
#include "CAV_Medical_Treatment_Actions.hpp"
