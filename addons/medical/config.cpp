#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {"CAV_fastBandageItem", "CAV_gauzeItem"};
        weapons[] = {"CAV_fastBandage", "CAV_gauze"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_main", "ace_medical"};
        author = "";
        authors[] = {""};
        VERSION_CONFIG;
    };
};

// #include "CAV_Medical_Treatment.hpp"
// #include "CAV_Medical_Treatment_Actions.hpp"
// #include "CfgEventHandlers.hpp"
// #include "CfgReplacementItems.hpp"
// #include "CfgVehicles.hpp"
// #include "CfgWeapons.hpp"
