#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {
  			    GVAR(moduleDropBomb),
  			    GVAR(moduleLaunchMissile),
  			    GVAR(moduleSpawnGrenade),
  			    GVAR(moduleMissileTarget)
		    };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_main","cav_common"};
        author = "";
        authors[] = {""};
        VERSION_CONFIG;
    };
};

#include "CfgFactionClasses.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "ui\RscAttributes.hpp"
