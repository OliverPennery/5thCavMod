class CfgVehicles {
    class Logic;
    class Module_F: Logic {
        class ArgumentsBaseUnits;
        class ModuleDescription;
    };

    class CAV_moduleAiSpawner: Module_F {
        scope = 2;
        displayName = "AI Spawner";
        author = "Brecon";
        vehicleClass = "Modules";
        category = "CAV_modules";
        function =  QUOTE(DFUNC(moduleAiSpawner));
        functionPriority = 1;
        isGlobal = 0;
        isTriggerActivated = 1;
        isDisposable = 0;
        is3DEN = 0;

        class Arguments: ArgumentsBaseUnits {
            class groupSide{
                displayName = "Side";
                description = "Group Side";
                typeName = "SIDE";
                class values {
                    class sideWest {
                        name = "WEST";
                        value = WEST;
                        default = 1;
                    };
                    class sideEast {
                        name = "EAST";
                        value = EAST;
                    };
                    class sideIndep {
                        name = "INDEPENDENT";
                        value = INDEPENDENT;
                    };
                    class sideCiv {
                        name = "CIVILIAN";
                        value = CIVILIAN;
                    };
                };
            };

            class groupConfig {
                displayName = "Group Config";
                description = "Group Config";
                typeName = "CONFIG";
                defaultValue = configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad";
            };

            class moveMarker1 {
                displayName = "Move Marker 1";
                description = "Move Marker 1";
                typeName = "ai0Marker1";
            };

            class moveMarker2 {
                displayName = "Move Marker 2";
                description = "Move Marker 2";
                typeName = "ai0Marker2";
            };

            class waves {
                displayName = "Waves";
                description = "-1 for Unlimited";
                typeName = "NUMBER";
                defaultValue = -1;
            };

            class huntCondition {
                displayName = "Hunt Condition";
                description = "Condition for AI to start hunting players and stops respawning";
                typeName = "STRING";
                defaultValue = "false";
            };

            class huntTrigger {
                displayName = "Hunt Trigger";
                description = "Hunt Trigger";
                typeName = "STRING";
                defaultValue = "Cav_huntTrigger";
            };
            class sadTrigger {
                displayName = "SAD Trigger";
                description = "Search and Destroy Trigger";
                typeName = "STRING";
                defaultValue = "sadTrigger0";
            };
        };

        class ModuleDescription: ModuleDescription {
            description = "Ai Spawner";
            sync[] = {"LocationArea_F"};

            class LocationArea_F {
                position = 0;
                optional = 0;
                duplicate = 1;
                synced[] = {"Anything"};
            };
        };
    };

    class CAV_moduleAiHunter: Module_F {
        scope = 2;
        displayName = "AI Hunter";
        author = "Brecon";
        vehicleClass = "Modules";
        category = "CAV_modules";
        function =  QUOTE(DFUNC(moduleAiHunter));
        functionPriority = 1;
        isGlobal = 0;
        isTriggerActivated = 1;
        isDisposable = 0;
        is3DEN = 0;

        class Arguments: ArgumentsBaseUnits {
            class groupSide{
                displayName = "Side";
                description = "Group Side";
                typeName = "SIDE";
                class values {
                    class sideWest {
                        name = "WEST";
                        value = WEST;
                        default = 1;
                    };
                    class sideEast {
                        name = "EAST";
                        value = EAST;
                    };
                    class sideIndep {
                        name = "INDEPENDENT";
                        value = INDEPENDENT;
                    };
                    class sideCiv {
                        name = "CIVILIAN";
                        value = CIVILIAN;
                    };
                };
            };

            class groupConfig {
                displayName = "Group Config";
                description = "Group Config";
                typeName = "CONFIG";
                defaultValue = configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_InfSquad";
            };

            class waves {
                displayName = "Waves";
                description = "-1 for Unlimited";
                typeName = "NUMBER";
                defaultValue = -1;
            };

            class huntTrigger {
                displayName = "Hunt Trigger";
                description = "Hunt Trigger";
                typeName = "STRING";
                defaultValue = "Cav_huntTrigger";
            };
        };

        class ModuleDescription: ModuleDescription {
            description = "Ai Spawner";
            sync[] = {"LocationArea_F"};

            class LocationArea_F {
                position = 0;
                optional = 0;
                duplicate = 1;
                synced[] = {"Anything"};
            };
        };
    };

    class CAV_moduleSafeStart: Module_F {
        scope = 2;
        displayName = "Safe Start Disabler";
        author = "Brecon";
        vehicleClass = "Modules";
        category = "CAV_modules";
        function =  QUOTE(DFUNC(moduleSafeStart));
        functionPriority = 1;
        isGlobal = 1;
        isTriggerActivated = 0;
        isDisposable = 1;
        is3DEN = 0;
        canSetArea = 1;

        class AttributeValues {
            size3[] = {25,50,-1};
            IsRectangle = 1;
        };

        class Arguments: ArgumentsBaseUnits {
            class spDisable{
                displayName = "SP Disable";
                description = "Disable in single player";
                typeName = "BOOL";
                class values {
                    class valueEnabled {
                        name = "Enable";
                        value = true;
                        default = true;
                    };
                    class valueDisabled {
                        name = "Disable";
                        value = false;
                    };
                };
            };
        };

        class ModuleDescription: ModuleDescription {
            description = "Disable Safe Start";
            sync[] = {"LocationArea_F"};

            class LocationArea_F {
                position = 1;
                optional = 1;
                duplicate = 0;
                synced[] = {"Anything"};
            };
        };
    };


    class CAV_moduleHealArea: Module_F {
        scope = 2;
        displayName = "Heal Area";
        author = "Brecon";
        vehicleClass = "Modules";
        category = "CAV_modules";
        function =  QUOTE(DFUNC(moduleHealArea));
        functionPriority = 1;
        isGlobal = 0;
        isTriggerActivated = 0;
        isDisposable = 1;
        is3DEN = 0;
        canSetArea = 1;

        class AttributeValues {
            size3[] = {25,25,-1};
            IsRectangle = 1;
        };

        class ModuleDescription: ModuleDescription {
            description = "Heal Players In Area";
            sync[] = {"LocationArea_F"};

            class LocationArea_F {
                position = 1;
                optional = 1;
                duplicate = 0;
                synced[] = {"Anything"};
            };
        };
    };
};
