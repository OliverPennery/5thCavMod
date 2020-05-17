class CfgVehicles {
    class Logic;
    class Module_F: Logic {
        class ArgumentsBaseUnits;
        class ModuleDescription;
    };

    class GVAR(moduleBabelSetup): Module_F {
        scope = 2;
        displayName = CSTRING(moduleBabelSetup_DisplayName);
        author = ECSTRING(common,Authors);
        icon = "a3\ui_f\data\IGUI\Cfg\simpleTasks\types\radio_ca.paa";
        vehicleClass = "Modules";
        category = "CAV_modules";
        function =  QUOTE(DFUNC(moduleBabelSetup));
        functionPriority = 1;
        isGlobal = 1;
        isTriggerActivated = 0;
        isDisposable = 0;
        is3DEN = 0;
        class Arguments: ArgumentsBaseUnits {
            class moduleEnabled {
                displayName = "Enable Babel in the Mission";
                description = "Enables the module's functionality";
                typeName = "BOOL";
                defaultValue = true;
            };
            class spokenLangWest {
                displayName = "Spoken Languages for Side WEST";
                description = "A comma seperated list of langauges";
                typeName = "STRING";
                defaultValue = "English";
            };
            class spokenLangEast {
                displayName = "Spoken Languages for Side EAST";
                description = "A comma seperated list of langauges";
                typeName = "STRING";
                defaultValue = "Russian";
            };
            class spokenLangGuer {
                displayName = "Spoken Languages for Side GUER";
                description = "A comma seperated list of langauges";
                typeName = "STRING";
                defaultValue = "AngryWords";
            };
            class spokenLangCiv {
                displayName = "Spoken Languages for Side CIV";
                description = "A comma seperated list of langauges";
                typeName = "STRING";
                defaultValue = "Russian";
            };
            class spokenLangLogic {
                displayName = "Spoken Languages for Side Logic";
                description = "A comma seperated list of langauges";
                typeName = "STRING";
                defaultValue = "English,Russian,AngryWords";
            };
        };
        class ModuleDescription: ModuleDescription {
            description = "Sets up Acre's Babel Functionality for a mission";
        };
    };
};
