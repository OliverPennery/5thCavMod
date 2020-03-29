class CfgWeapons {
    class ItemCore;
    class CBA_MiscItem_ItemInfo;

    class ACE_ItemCore;
    class CAV_fastBandage: ACE_ItemCore {
        scope = 2;
        author = "5th Cav";
        displayName = CSTRING(Bandage_Fast_Display);
        picture = "\z\ace\addons\medical_treatment\ui\packingBandage_ca.paa";
        model = "\z\ace\addons\medical_treatment\data\packingbandage.p3d";
        descriptionShort = "Fast Bandage short";
        descriptionUse = "Fast Bandage use";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };

    class CAV_gauze: ACE_ItemCore {
        scope = 2;
        author = "5th Cav";
        displayName = CSTRING(Bandage_Gauze_Display);
        model = "\z\ace\addons\medical_treatment\data\QuikClot.p3d";
        picture = "\z\ace\addons\medical_treatment\ui\quickclot_ca.paa";
        descriptionShort = "Gauze short";
        descriptionUse = "Gauze use";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };

    class ACE_fieldDressing: ItemCore  {
        type = 0;
    };
    class ACE_packingBandage: ItemCore  {
        type = 0;
    };
    class ACE_elasticBandage: ItemCore  {
        type = 0;
    };
    class ACE_quikclot: ItemCore  {
        type = 0;
    };
};
