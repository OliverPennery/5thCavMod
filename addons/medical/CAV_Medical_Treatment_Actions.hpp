class ace_medical_treatment_actions{
    // - Bandages -------------------------------------------------------------
    class BasicBandage {
        items[] = {"ACE_fieldDressing", "ACE_packingBandage", "ACE_elasticBandage", "ACE_quikclot", "CAV_fastBandage", "CAV_gauze"};
    };

    class FastBandage: BasicBandage {
        displayName = CSTRING(Actions_FastBandage);
        icon = "\z\ace\addons\medical_gui\UI\icons\packingBandage.paa";
        items[] = {"CAV_fastBandage"};
        litter[] = {
            {"ACE_MedicalLitter_packingBandage"},
            {"ACE_MedicalLitter_clean"},
            {{"ACE_MedicalLitter_bandage2", "ACE_MedicalLitter_bandage3"}}
        };
    };
    class Gauze: BasicBandage {
        displayName = CSTRING(Actions_Gauze);
        items[] = {"CAV_gauze"};
        litter[] = {
            {"ACE_MedicalLitter_QuickClot"},
            {"ACE_MedicalLitter_clean"},
            {{"ACE_MedicalLitter_bandage2", "ACE_MedicalLitter_bandage3"}}
        };
    };
};
