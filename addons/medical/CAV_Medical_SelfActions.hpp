class Medical {
   class ACE_Head {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'head', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'head', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
            icon = "\z\ace\addons\medical_treatment\UI\icons\bandage.paa";
        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'head', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'head', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon = "\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";
        };
    };
    class ACE_Torso {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'body', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'body', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
            icon = "\z\ace\addons\medical_treatment\UI\icons\bandage.paa";
        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'body', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'body', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon = "\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";
        };
    };
    class ACE_ArmLeft {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'hand_l', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'hand_l', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
            icon ="\z\ace\addons\medical_treatment\UI\icons\bandage.paa";

        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'hand_l', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'hand_l', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon ="\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";

        };
    };
    class ACE_ArmRight {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'hand_r', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'hand_r', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'hand_r', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'hand_r', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon ="\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";
        };
    };
    class ACE_LegLeft {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'leg_l', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'leg_l', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'leg_l', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'leg_l', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon ="\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";
        };
    };
    class ACE_LegRight {
        class fieldDressing;
        class FastBandage: fieldDressing {
            displayName = CSTRING(Actions_FastBandage);
            condition = QUOTE([ARR_4(_player, _target, 'leg_r', 'FastBandage')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'leg_r', 'FastBandage')] call ace_medical_treatment_fnc_treatment);
        };
        class Gauze: fieldDressing {
            displayName = CSTRING(Actions_Gauze);
            condition = QUOTE([ARR_4(_player, _target, 'leg_r', 'Gauze')] call ace_medical_treatment_fnc_canTreatCached);
            exceptions[] = {"isNotInside", "isNotSwimming"};
            statement = QUOTE([ARR_4(_player, _target, 'leg_r', 'Gauze')] call ace_medical_treatment_fnc_treatment);
            icon ="\z\ace\addons\medical_treatment\UI\icons\packingBandage.paa";
        };
    };
};
