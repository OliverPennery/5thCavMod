class DefaultEventhandlers;
class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_Actions {
            class ACE_MainActions {
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
};
