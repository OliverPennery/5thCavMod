#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cav_common","ace_zeus"};
        author = "";
        authors[] = {"Brecon"};
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
#include "CfgEventHandlers.hpp"

#include "ui\defines.hpp"

#include "ui\main.hpp"
#include "ui\commands.hpp"
#include "ui\console.hpp"
#include "ui\debug.hpp"
#include "ui\functions.hpp"
#include "ui\respawn.hpp"
#include "ui\specPort.hpp"
#include "ui\loadoutViewer.hpp"

#include "ui\aceSpectator.hpp"
