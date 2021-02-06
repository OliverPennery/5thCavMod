class cav_soldier_fia_m14_base: SoldierGB{
    SCOPEL(PROTECTED)
    side = 1;
    faction = cav_brecons;
    editorSubcategory = QGVAR(edsubcat_fia_m14);
};

class cav_soldier_fia_m14_w_rifleman: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Rifleman";
    LOADOUT_FIA_M14_RIFLEMAN
};
class cav_soldier_fia_m14_w_riflemanat: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Rifleman (AT)";
    LOADOUT_FIA_M14_RIFLEMANAT
};
class cav_soldier_fia_m14_w_autorifleman: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Autorifleman";
    LOADOUT_FIA_M14_AUTORIFLEMAN
};
class cav_soldier_fia_m14_w_gunner: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "MachineGunner";
    LOADOUT_FIA_M14_GUNNER
};
class cav_soldier_fia_m14_w_marksman: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Marksman";
    LOADOUT_FIA_M14_MARKSMAN
};
class cav_soldier_fia_m14_w_cms: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "CMS";
    LOADOUT_FIA_M14_CMS
};
class cav_soldier_fia_m14_w_medic: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Medic";
    LOADOUT_FIA_M14_MEDIC
};
class cav_soldier_fia_m14_w_squadleader: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Squad Leader";
    LOADOUT_FIA_M14_SQUADLEADER
};
class cav_soldier_fia_m14_w_teamleader: cav_soldier_fia_m14_base{
    SCOPEL(PUBLIC)
    displayName = "Team Leader";
    LOADOUT_FIA_M14_TEAMLEADER
};

class cav_soldier_fia_m14_i_rifleman: cav_soldier_fia_m14_w_rifleman{
    side=2;
};
class cav_soldier_fia_m14_i_riflemanat: cav_soldier_fia_m14_w_riflemanat{
    side=2;
};
class cav_soldier_fia_m14_i_autorifleman: cav_soldier_fia_m14_w_autorifleman{
    side=2;
};
class cav_soldier_fia_m14_i_gunner: cav_soldier_fia_m14_w_gunner{
    side=2;
};
class cav_soldier_fia_m14_i_marksman: cav_soldier_fia_m14_w_marksman{
    side=2;
};
class cav_soldier_fia_m14_i_cms: cav_soldier_fia_m14_w_cms{
    side=2;
};
class cav_soldier_fia_m14_i_medic: cav_soldier_fia_m14_w_medic{
    side=2;
};
class cav_soldier_fia_m14_i_squadleader: cav_soldier_fia_m14_w_squadleader{
    side=2;
};
class cav_soldier_fia_m14_i_teamleader: cav_soldier_fia_m14_w_teamleader{
    side=2;
};

class cav_soldier_fia_m14_e_rifleman: cav_soldier_fia_m14_w_rifleman{
    side=0;
};
class cav_soldier_fia_m14_e_riflemanat: cav_soldier_fia_m14_w_riflemanat{
    side=0;
};
class cav_soldier_fia_m14_e_autorifleman: cav_soldier_fia_m14_w_autorifleman{
    side=0;
};
class cav_soldier_fia_m14_e_gunner: cav_soldier_fia_m14_w_gunner{
    side=0;
};
class cav_soldier_fia_m14_e_marksman: cav_soldier_fia_m14_w_marksman{
    side=0;
};
class cav_soldier_fia_m14_e_cms: cav_soldier_fia_m14_w_cms{
    side=0;
};
class cav_soldier_fia_m14_e_medic: cav_soldier_fia_m14_w_medic{
    side=0;
};
class cav_soldier_fia_m14_e_squadleader: cav_soldier_fia_m14_w_squadleader{
    side=0;
};
class cav_soldier_fia_m14_e_teamleader: cav_soldier_fia_m14_w_teamleader{
    side=0;
};
