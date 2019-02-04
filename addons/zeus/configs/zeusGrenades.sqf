GVAR(zeusGrenades) = [
    ["RGO Grenade","GrenadeHand"],
    ["RGN Grenade","mini_Grenade"],
    ["Smoke Grenade","SmokeShell"],
    ["IR Grenade","B_IRStrobe"],
    ["Stone","GrenadeHand_stone"]
];

//check for mods and add their stuff
if (isClass(configFile >> "cfgPatches" >> "rhs_main")) then {
    GVAR(zeusGrenades) pushback ["RHS HE Grenade","rhs_ammo_rgd5"];
    GVAR(zeusGrenades) pushback ["RHS Impact Grenade","rhs_ammo_rgn"];
    GVAR(zeusGrenades) pushback ["RHS Fragmentation Grenade","rhs_ammo_m67"];
};

if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
    GVAR(zeusGrenades) pushBack ["M127A1 Hand Held Signal (White)","ACE_G_Handflare_White"];
    GVAR(zeusGrenades) pushBack ["M127A1 Hand Held Signal (Red)","ACE_G_Handflare_Red"];
    GVAR(zeusGrenades) pushBack ["M127A1 Hand Held Signal (Green)","ACE_G_Handflare_Green"];
    GVAR(zeusGrenades) pushBack ["M127A1 Hand Held Signal (Yellow)","ACE_G_Handflare_Yellow"];
    GVAR(zeusGrenades) pushBack ["M84 Stun Grenade","ACE_G_M84"];
    GVAR(zeusGrenades) pushBack ["AN-M14 Incendiary Grenade","ACE_G_M14"];
};
