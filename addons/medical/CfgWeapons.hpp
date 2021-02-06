class CfgWeapons {
    class ItemCore;
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class CAV_BaseFirstAidKit: ACE_ItemCore{
        scope = 2;
        author = "Brecon";
        model = "\a3\Weapons_F\Ammo\mag_FirstAidkit.p3d";
        picture = "\A3\Weapons_F\Items\data\UI\gear_FirstAidKit_CA.paa";
        displayName = "Base FirstAidKit";
        // descriptionShort = "CAV 2";
        // descriptionUse = "CAV 3";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 30;
        };
    };

    class CAV_CMSFirstAidKit: ACE_ItemCore{
        scope = 2;
        author = "Brecon";
        model = "\a3\Weapons_F\Ammo\mag_FirstAidkit.p3d";
        picture = "\A3\Weapons_F\Items\data\UI\gear_FirstAidKit_CA.paa";
        displayName = "CMS FirstAidKit";
        // descriptionShort = "CAV 2";
        // descriptionUse = "CAV 3";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 92;
        };
    };

    class CAV_Medikit: ACE_ItemCore{
        scope = 2;
        author = "Brecon";
        model = "\A3\Weapons_F\Items\Medikit";
        picture = "\A3\Weapons_F\Items\data\UI\gear_Medikit_CA.paa";
        displayName = "Medikit";
        // descriptionShort = "CAV 2";
        // descriptionUse = "CAV 3";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 205;
        };
    };
};
