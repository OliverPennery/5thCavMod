GVAR(zeusMissiles) = [
    ["DAGR","M_PG_AT"],
    ["DAR","M_AT"],
    ["Titan AP Missile","M_Titan_AP"],
    ["Titan AT Missile","M_Titan_AT"],
    ["Scalpel E2","M_Scalpel_AT"],
    ["ASRAAM","M_Air_AA"],
    ["Zephyr","M_Zephyr"],
    ["AG Missile","M_Air_AT"],
    ["Macer","Missile_AGM_02_F"],
    ["MAAWS HEAT 75 Round","R_MRAAWS_HEAT_F"],
    ["MAAWS HE 44 Round","R_MRAAWS_HE_F"],
    ["Shrieker HE","Rocket_04_HE_F"],
    ["Shrieker AP","Rocket_04_AP_F"],
    ["Skyfire","R_80mm_HE"],
    ["RPG-42 Rocket","R_PG32V_F"],
    ["RPG-42 HE Rocket","R_TBG32V_F"],
    ["PCML Missile","M_NLAW_AT_F"]
];

//check for mods and add their stuff
if (isClass(configFile >> "cfgPatches" >> "rhs_main")) then {
    GVAR(zeusMissiles) pushback ["RHS M136 HEDP","rhs_ammo_M136_hedp_rocket"];
    GVAR(zeusMissiles) pushback ["RHS M136 HP","rhs_ammo_M136_hp_rocket"];
    GVAR(zeusMissiles) pushback ["RHS M136 HE","rhs_ammo_M136_rocket"];
    GVAR(zeusMissiles) pushback ["RHS Maaws HE","rhs_ammo_maaws_HE"];
    GVAR(zeusMissiles) pushback ["RHS Maaws HEAT","rhs_ammo_maaws_HEAT"];
    GVAR(zeusMissiles) pushback ["RHS Maaws HEDP","rhs_ammo_maaws_HEDP"];
    GVAR(zeusMissiles) pushback ["RHS 9M113 Konkurs","rhs_ammo_9m113m"];
    GVAR(zeusMissiles) pushback ["RHS AGM-65","rhs_ammo_agm65"];
    GVAR(zeusMissiles) pushback ["RHS Hydra (M151)","rhs_ammo_Hydra_M151"];
    GVAR(zeusMissiles) pushback ["RHS Hydra (M229)","rhs_ammo_Hydra_M229"];
    GVAR(zeusMissiles) pushback ["RHS Hellfire","rhs_ammo_Hellfire_AT"];
    GVAR(zeusMissiles) pushback ["RHS DAGR","RHS_Ammo_DAGR"];
};
