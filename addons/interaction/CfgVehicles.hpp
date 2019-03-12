class DefaultEventhandlers;
class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_TeamManagement {
                class CAV_Callsign {
                    displayName = "Callsign";
                    condition = "(leader group _player == _player)";
                    exceptions[] = {};
                    statement = "";
                    icon = "";

                    class CAV_AirVehicle{
                        displayName = "Air Vehicle";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";
                        class CAV_TH1{
                            displayName = "TH1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TH1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TH2{
                            displayName = "TH2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TH2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TH3{
                            displayName = "TH3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TH3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TH4{
                            displayName = "TH4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TH4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_AH1{
                            displayName = "AH1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AH1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_AH2{
                            displayName = "AH2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AH2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_AH3{
                            displayName = "AH3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AH3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_AH4{
                            displayName = "AH4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AH4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_CAS1{
                            displayName = "CAS1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CAS1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_CAS2{
                            displayName = "CAS2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CAS2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_CAS3{
                            displayName = "CAS3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CAS3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_CAS4{
                            displayName = "CAS4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CAS4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_LandVehicle{
                        displayName = "Land Vehicle";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";
                        class CAV_APC1{
                            displayName = "APC1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'APC1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_APC2{
                            displayName = "APC2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'APC2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_APC3{
                            displayName = "APC3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'APC3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_APC4{
                            displayName = "APC4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'APC4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_IFV1{
                            displayName = "IFV1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'IFV1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_IFV2{
                            displayName = "IFV2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'IFV2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_IFV3{
                            displayName = "IFV3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'IFV3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_IFV4{
                            displayName = "IFV4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'IFV4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TANK1{
                            displayName = "TANK1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TANK1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TANK2{
                            displayName = "TANK2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TANK2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TANK3{
                            displayName = "TANK3";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TANK3')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_TANK4{
                            displayName = "TANK4";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'TANK4')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Support2{
                        displayName = "Support2";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";
                        class CAV_MSAM1{
                            displayName = "MSAM1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MSAM1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MSAM2{
                            displayName = "MSAM2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MSAM2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HSAM1{
                            displayName = "HSAM1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HSAM1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HSAM2{
                            displayName = "HSAM2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HSAM2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_ST1{
                            displayName = "ST1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'ST1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_ST2{
                            displayName = "ST2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'ST2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_DT1{
                            displayName = "DT1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'DT1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_DT2{
                            displayName = "DT2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'DT2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_ET1{
                            displayName = "ET1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'ET1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_ET2{
                            displayName = "ET2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'ET2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Support1{
                        displayName = "Support1";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_MMG1{
                            displayName = "MMG1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MMG1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MMG2{
                            displayName = "MMG2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MMG2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HMG1{
                            displayName = "HMG1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HMG1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HMG2{
                            displayName = "HMG2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HMG2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MAT1{
                            displayName = "MAT1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MAT1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MAT2{
                            displayName = "MAT2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MAT2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HAT1{
                            displayName = "HAT1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HAT1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_HAT2{
                            displayName = "HAT2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'HAT2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MTR1{
                            displayName = "MTR1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MTR1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_MTR2{
                            displayName = "MTR2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'MTR2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Delta{
                        displayName = "Delta";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_DeltaHQ{
                            displayName = "Delta HQ";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'DeltaHQ')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Delta1{
                            displayName = "Delta 1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Delta1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Delta2{
                            displayName = "Delta 2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Delta2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_DeltaV{
                            displayName = "Delta V";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'DeltaV')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Charlie{
                        displayName = "Charlie";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_CharlieHQ{
                            displayName = "Charlie HQ";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CharlieHQ')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Charlie1{
                            displayName = "Charlie 1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Charlie1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Charlie2{
                            displayName = "Charlie 2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Charlie2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_CharlieV{
                            displayName = "Charlie V";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'CharlieV')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_BRAVO{
                        displayName = "Bravo";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_BravoHQ{
                            displayName = "Bravo HQ";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'BravoHQ')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Bravo1{
                            displayName = "Bravo 1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Bravo1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Bravo2{
                            displayName = "Bravo 2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Bravo2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_BravoV{
                            displayName = "Bravo V";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'BravoV')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Alpha{
                        displayName = "Alpha";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_AlphaHQ{
                            displayName = "Alpha HQ";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AlphaHQ')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Alpha1{
                            displayName = "Alpha 1";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Alpha1')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_Alpha2{
                            displayName = "Alpha 2";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Alpha2')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_AlphaV{
                            displayName = "Alpha V";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'AlphaV')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };

                    class CAV_Platoon{
                        displayName = "Platoon";
                        condition = "true";
                        exceptions[] = {};
                        statement = "";
                        icon = "";

                        class CAV_PlatoonI{
                            displayName = "Platoon";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'Platoon')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                        class CAV_PlatoonV{
                            displayName = "Platoon Vehicle";
                            condition = "true";
                            exceptions[] = {};
                            statement = QUOTE([ARR_2(_player, 'PlatoonV')] call DFUNC(handleGroupChange));
                            icon = "";
                        };
                    };
                };
            };
        };

        class ACE_Actions {
            class ACE_MainActions {
                class ACE_JoinGroup {
                    statement = QUOTE([_player] joinSilent group _target; [_target] call FUNC(setRadio););
                };
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(!alive _target);
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
                class GVAR(openBackback) {
                    displayName = CSTRING(openBag);
                    condition = QUOTE(_target call FUNC(hasBag));
                    statement = QUOTE(_this call FUNC(openBag));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
    };
    class ReammoBox;
    class WeaponHolder: ReammoBox {
        class Eventhandlers: DefaultEventhandlers {};
        class ACE_Actions {
            class GVAR(openInventory) {
                displayName = CSTRING(openInventory);
                condition = QUOTE(true);
                statement = QUOTE(_this call FUNC(openInventory));
                position = QUOTE((_target worldToModel (getPosATL _target)));
                showDisabled = 0;
                distance = 3;
                icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                exceptions[] = {"isNotSwimming"};
                insertChildren = QUOTE(_this call FUNC(insertWeapons));
            };
        };
    };
    class ThingX;
    class WeaponHolderSimulated: ThingX {
        class ACE_Actions {
            class GVAR(openInventory) {
                displayName = CSTRING(openInventory);
                condition = QUOTE(true);
                statement = QUOTE(_this call FUNC(openInventory));
                position = QUOTE((_target worldToModel (getPosATL _target)));
                showDisabled = 0;
                distance = 3;
                icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                exceptions[] = {"isNotSwimming"};
                insertChildren = QUOTE(_this call FUNC(insertWeapons));
            };
        };
    };
    class LandVehicle;
    class Car: LandVehicle {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
    class Tank: LandVehicle {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
    class Motorcycle: LandVehicle {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
    class Air;
    class Helicopter: Air {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
    class Plane: Air {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
    class Ship;
    class Ship_F: Ship {
        class ACE_Actions {
            class ACE_MainActions {
                class GVAR(openInventory) {
                    displayName = CSTRING(openInventory);
                    condition = QUOTE(alive _target && _target call FUNC(hasInventory));
                    statement = QUOTE(_this call FUNC(openInventory));
                    showDisabled = 0;
                    distance = 3;
                    exceptions[] = {"isNotSwimming"};
                    icon = "\A3\ui_f\data\igui\cfg\actions\gear_ca.paa";
                };
            };
        };
        class ACE_SelfActions {
            class GVAR(ejectSide) {
                displayName = CSTRING(ejectside);
                condition = QUOTE(alive _target);
                statement = "";
                class GVAR(ejectSide_left) {
                    displayName = CSTRING(left);
                    statement = QUOTE([ARR_2(_this, 'left')] call FUNC(ejectSide););
                };
                class GVAR(ejectSide_right) {
                    displayName = CSTRING(right);
                    statement = QUOTE([ARR_2(_this, 'right')] call FUNC(ejectSide););
                };
            };
        };
    };
};
