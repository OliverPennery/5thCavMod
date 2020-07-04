class cav_soldier_nato_apex_woodland_base: SoldierGB{
    SCOPEL(PROTECTED)
    side = 1;
    faction = cav_nato_apex_woodland;
    editorSubcategory = QGVAR(edsubcat_nato_apex_woodland);
};

class cav_soldier_nato_apex_woodland_w_rifleman: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Rifleman";
    LOADOUT_NATO_APEX_WOODLAND_RIFLEMAN
};
class cav_soldier_nato_apex_woodland_w_riflemanat: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Rifleman (AT)";
    LOADOUT_NATO_APEX_WOODLAND_RIFLEMANAT
};
class cav_soldier_nato_apex_woodland_w_grenadier: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Grenadier";
    LOADOUT_NATO_APEX_WOODLAND_GRENADIER
};
class cav_soldier_nato_apex_woodland_w_autorifleman: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Autorifleman";
    LOADOUT_NATO_APEX_WOODLAND_AUTORIFLEMAN
};
class cav_soldier_nato_apex_woodland_w_gunner: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "MachineGunner";
    LOADOUT_NATO_APEX_WOODLAND_GUNNER
};
class cav_soldier_nato_apex_woodland_w_hgunner: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Heavy Gunner";
    LOADOUT_NATO_APEX_WOODLAND_HGUNNER
};
class cav_soldier_nato_apex_woodland_w_marksman: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Marksman";
    LOADOUT_NATO_APEX_WOODLAND_MARKSMAN
};
class cav_soldier_nato_apex_woodland_w_sharpshooter: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Sharpshooter";
    LOADOUT_NATO_APEX_WOODLAND_SHARPSHOOTER
};
class cav_soldier_nato_apex_woodland_w_medic: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Medic";
    LOADOUT_NATO_APEX_WOODLAND_MEDIC
};
class cav_soldier_nato_apex_woodland_w_squadleader: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Squad Leader";
    LOADOUT_NATO_APEX_WOODLAND_SQUADLEADER
};
class cav_soldier_nato_apex_woodland_w_teamleader: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Team Leader";
    LOADOUT_NATO_APEX_WOODLAND_TEAMLEADER
};
class cav_soldier_nato_apex_woodland_w_crewman: cav_soldier_nato_apex_woodland_base{
    SCOPEL(PUBLIC)
    displayName = "Crewman";
    LOADOUT_NATO_APEX_WOODLAND_CREWMAN
};

class cav_soldier_nato_apex_woodland_i_rifleman: cav_soldier_nato_apex_woodland_w_rifleman{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_riflemanat: cav_soldier_nato_apex_woodland_w_riflemanat{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_grenadier: cav_soldier_nato_apex_woodland_w_grenadier{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_autorifleman: cav_soldier_nato_apex_woodland_w_autorifleman{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_gunner: cav_soldier_nato_apex_woodland_w_gunner{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_hgunner: cav_soldier_nato_apex_woodland_w_hgunner{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_marksman: cav_soldier_nato_apex_woodland_w_marksman{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_sharpshooter: cav_soldier_nato_apex_woodland_w_sharpshooter{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_medic: cav_soldier_nato_apex_woodland_w_medic{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_squadleader: cav_soldier_nato_apex_woodland_w_squadleader{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_teamleader: cav_soldier_nato_apex_woodland_w_teamleader{
    side=2;
};
class cav_soldier_nato_apex_woodland_i_crewman: cav_soldier_nato_apex_woodland_w_crewman{
    side=2;
};

class cav_soldier_nato_apex_woodland_e_rifleman: cav_soldier_nato_apex_woodland_w_rifleman{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_riflemanat: cav_soldier_nato_apex_woodland_w_riflemanat{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_grenadier: cav_soldier_nato_apex_woodland_w_grenadier{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_autorifleman: cav_soldier_nato_apex_woodland_w_autorifleman{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_gunner: cav_soldier_nato_apex_woodland_w_gunner{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_hgunner: cav_soldier_nato_apex_woodland_w_hgunner{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_marksman: cav_soldier_nato_apex_woodland_w_marksman{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_sharpshooter: cav_soldier_nato_apex_woodland_w_sharpshooter{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_medic: cav_soldier_nato_apex_woodland_w_medic{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_squadleader: cav_soldier_nato_apex_woodland_w_squadleader{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_teamleader: cav_soldier_nato_apex_woodland_w_teamleader{
    side=0;
};
class cav_soldier_nato_apex_woodland_e_crewman: cav_soldier_nato_apex_woodland_w_crewman{
    side=0;
};
