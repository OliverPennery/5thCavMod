#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_ui","cba_xeh","cba_jr"};
        author = "";
        authors[] = {"ACE Team", "Glowbal"};
        authorUrl = "http://ace3mod.com";
        VERSION_CONFIG;
    };
};

class CfgMods {
    class PREFIX {
        dir = "@cav";
        name = "5th Cavalry Mission Frameq";
        picture = "A3\Ui_f\data\Logos\arma3_expansion_alpha_ca";
        hidePicture = "true";
        hideName = "true";
        actionName = "Website";
        //action = "https://github.com/Brecon1/5thCavMod";
        description = "Issue Tracker: https://github.com/Brecon1/5thCavMod/issues";
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgModuleCategories.hpp"
