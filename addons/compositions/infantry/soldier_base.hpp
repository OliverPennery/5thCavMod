class GVAR(BVR_Soldier_Base): I_Soldier_base_F{
    SCOPEL(PROTECTED)
	faction = GVAR(BVR_Ind);
	vehicleClass = QGVAR(Veh_BVR_Woodland);
	editorSubcategory = QGVAR(EdSubcat_BVR_Woodland);
    uniformClass = "U_B_CombatUniform_mcam";
    linkedItems[] = {"V_PlateCarrier3_rgr", "H_HelmetB_light", "NVGoggles", "ItemMap", "ItemCompass", "ItemWatch",  "ItemRadio"};
};

class GVAR(BVR_Soldier_Rifleman): GVAR(BVR_Soldier_Base){
    SCOPEL(PUBLIC)
    displayName = "Rifleman";
    backpack = "B_AssaultPack_khk";
    respawnLinkedItems[] = {"V_PlateCarrier3_rgr", "H_HelmetB_light", "NVGoggles", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio"};
    weapons[] = {"arifle_MX_F","Binocular"};
    respawnweapons[] = {"arifle_MX_F","Binocular"};
    magazines[] = {"30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","HandGrenade","HandGrenade",};
    Respawnmagazines[] = {"30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag","HandGrenade","HandGrenade",};
};
