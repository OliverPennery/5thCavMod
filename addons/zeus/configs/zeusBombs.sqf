GVAR(zeusBombs) = [
    ["GBU 12","Bo_GBU12_LGB"],
    ["Mk 82","Bo_Mk82"],
    ["KAB 250 LGB","Bomb_03_F"],
    ["CBU-85","BombCluster_01_Ammo_F"],
    ["RBK-500F","BombCluster_02_Ammo_F"],
    ["BL778","BombCluster_03_Ammo_F"]
];

//check for mods and add their stuff
if (isClass(configFile >> "cfgPatches" >> "rhs_main")) then {
    GVAR(zeusBombs) pushback ["RHS FAB 100","rhs_ammo_fab100"];
    GVAR(zeusBombs) pushback ["RHS FAB 250","rhs_ammo_fab250"];
    GVAR(zeusBombs) pushback ["RHS FAB 500","rhs_ammo_fab500"];
    GVAR(zeusBombs) pushback ["RHS GBU 12","rhs_ammo_gbu12"];
    GVAR(zeusBombs) pushback ["RHS GBU 32","rhs_ammo_gbu32"];
    GVAR(zeusBombs) pushback ["RHS KAB 250","rhs_ammo_kab250"];
    GVAR(zeusBombs) pushback ["RHS KAB 500","rhs_amm_kab500"];
    GVAR(zeusBombs) pushback ["RHS CBU 87","rhs_ammo_cbu87"];
    GVAR(zeusBombs) pushback ["RHS CBU 89","rhs_ammo_cbu89"];
    GVAR(zeusBombs) pushback ["RHS CBU 100","rhs_ammo_cbu100"];
};
