#include "script_component.hpp"

/*_____________________________________________________________________________
@filename: config.sqf

Author:
    Brecon

Description:
    Defines variables for freqs and bft

Arguments:
    None

Return Value:
    None

Example:
    _handle = execVM "b\config\groupConfig.sqf";
    waitUntil {isNull _handle};

 _____________________________________________________________________________*/

// --- Groups
_hq  = "b_hq";          // Command elements
_ft  = "b_inf";         // Fireteams
_sup = "b_support";     // Support units (MMG,HMG)
_lau = "b_motor_inf";   // Launchers (MAT, HAT)
_mor = "b_mortar";      // Mortars
_eng = "b_maint";       // Engineers
_ifv = "b_mech_inf";    // IFVs & APCs
_tnk = "b_armor";       // Tanks
_rec = "b_recon";       // Recon (ST)
_hel = "b_air";         // Helicopters
_pla = "b_plane";       // Planes
_art = "b_art";         // Artillery

GVAR(BFT_Custom_Colour_Platoon) = QGVAR(ColourPlatoon);
GVAR(BFT_Custom_Colour_Alpha)   = QGVAR(ColourAlpha);
GVAR(BFT_Custom_Colour_Bravo)   = QGVAR(ColourBravo);
GVAR(BFT_Custom_Colour_Chalie)  = QGVAR(ColourCharlie);
GVAR(BFT_Custom_Colour_Delta)   = QGVAR(ColourDelta);
GVAR(BFT_Custom_Colour_Support) = QGVAR(ColourSupport);
GVAR(BFT_Custom_Colour_Tank)    = QGVAR(ColourArmour);
GVAR(BFT_Custom_Colour_Air)     = QGVAR(ColourAir);

// --- Group Markers with Freq
// --- Callsign = [Grp Name,Marker, Display Name on Map, Colour, SW Freq, Default SW channel,  LR Freq, Default LR channel]

CAV_FREQS = [["60", "70", "80", "90", "100", "110", "120", "130", "140"], ["30", "40", "50"]];

// --- Platoon
CAV_Platoon =  [_hq,  ["PL"],          GVAR(BFT_Custom_Colour_Platoon),   0, 0];
CAV_Alpha   =  [_hq,  ["A1", "A2"],    GVAR(BFT_Custom_Colour_Alpha),     1, 0];
CAV_Bravo   =  [_hq,  ["B1", "B2"],    GVAR(BFT_Custom_Colour_Bravo),     2, 0];
CAV_Charlie =  [_hq,  ["C1", "C2"],    GVAR(BFT_Custom_Colour_Chalie),    3, 0];
CAV_Delta   =  [_hq,  ["D1", "D2"],    GVAR(BFT_Custom_Colour_Delta),     4, 0];

// --- Medium MG Team
CAV_MMG1    = [_sup, ["MMG1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_MMG2    = [_sup, ["MMG2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Heavy MG Team
CAV_HMG1    = [_sup, ["HMG1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_HMG2    = [_sup, ["HMG2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Medium AT Team
CAV_MAT1    = [_lau, ["MAT1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_MAT2    = [_lau, ["MAT2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Heavy AT Team
CAV_HAT1    = [_lau, ["HAT1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_HAT2    = [_lau, ["HAT2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Mortar Team
CAV_MTR1    = [_mor, ["MTR1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_MTR2    = [_mor, ["MTR2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Medium SAM Team
CAV_MSAM1   = [_lau, ["MSAM1"],        GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_MSAM2   = [_lau, ["MSAM2"],        GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Heavy SAM Team
CAV_HSAM1   = [_lau, ["HSAM1"],        GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_HSAM2   = [_lau, ["HSAM2"],        GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Sniper Team
CAV_ST1     = [_rec, ["ST1"],          GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_ST2     = [_rec, ["ST2"],          GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Diver Team
CAV_DT1     = [_rec, ["DT1"],          GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_DT2     = [_rec, ["DT2"],          GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- Engineer Team
CAV_ET1     = [_eng, ["ENG1"],         GVAR(BFT_Custom_Colour_Support),   5, 0];
CAV_ET2     = [_eng, ["ENG2"],         GVAR(BFT_Custom_Colour_Support),   4, 0];

// --- APC
CAV_APC1    = [_ifv, ["APC1"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_APC2    = [_ifv, ["APC2"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];
CAV_APC3    = [_ifv, ["APC3"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_APC4    = [_ifv, ["APC4"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];

// --- IFV
CAV_IFV1    = [_ifv, ["IFV1"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_IFV2    = [_ifv, ["IFV2"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];
CAV_IFV3    = [_ifv, ["IFV3"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_IFV4    = [_ifv, ["IFV4"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];

// --- Tank
CAV_TANK1   = [_tnk, ["TNK1"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_TANK2   = [_tnk, ["TNK2"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];
CAV_TANK3   = [_tnk, ["TNK3"],         GVAR(BFT_Custom_Colour_Tank),      6, 0];
CAV_TANK4   = [_tnk, ["TNK4"],         GVAR(BFT_Custom_Colour_Tank),      7, 0];

// --- Transport Helicopter
CAV_TH1     = [_hel, ["TH1"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_TH2     = [_hel, ["TH2"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_TH3     = [_hel, ["TH3"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_TH4     = [_hel, ["TH4"],          GVAR(BFT_Custom_Colour_Air),       8, 0];

// --- Attack Helicopter
CAV_AH1     = [_hel, ["AH1"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_AH2     = [_hel, ["AH2"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_AH3     = [_hel, ["AH3"],          GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_AH4     = [_hel, ["AH4"],          GVAR(BFT_Custom_Colour_Air),       8, 0];

// --- Close Air Support
CAV_CAS1    = [_pla, ["CAS1"],         GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_CAS2    = [_pla, ["CAS2"],         GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_CAS3    = [_pla, ["CAS3"],         GVAR(BFT_Custom_Colour_Air),       8, 0];
CAV_CAS4    = [_pla, ["CAS4"],         GVAR(BFT_Custom_Colour_Air),       8, 0];


CAV_GROUP_LIST = ["CAV_Platoon","CAV_Alpha","CAV_Bravo","CAV_Charlie","CAV_Delta","CAV_MMG1","CAV_MMG2","CAV_HMG1","CAV_HMG2","CAV_MAT1","CAV_MAT2","CAV_HAT1","CAV_HAT2","CAV_MTR1","CAV_MTR2","CAV_MSAM1","CAV_MSAM2","CAV_HSAM1","CAV_HSAM2","CAV_ST1","CAV_ST2","CAV_DT1","CAV_DT2","CAV_ET1","CAV_ET2","CAV_APC1","CAV_APC2","CAV_APC3","CAV_APC4","CAV_IFV1","CAV_IFV2","CAV_IFV3","CAV_IFV4","CAV_TANK1","CAV_TANK2","CAV_TANK3","CAV_TANK4","CAV_TH1","CAV_TH2","CAV_TH3","CAV_TH4","CAV_AH1","CAV_AH2","CAV_AH3","CAV_AH4","CAV_CAS1","CAV_CAS2","CAV_CAS3","CAV_CAS4"];
