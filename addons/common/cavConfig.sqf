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
_hq = "b_hq";			// Command elements
_ft = "b_inf";			// Fireteams
_sup = "b_support";		// Support units (MMG,HMG)
_lau = "b_motor_inf";	// Launchers (MAT, HAT)
_mor = "b_mortar";		// Mortars
_eng = "b_maint";		// Engineers
_ifv = "b_mech_inf";	// IFVs & APCs
_tnk = "b_armor";		// Tanks
_rec = "b_recon";		// Recon (ST)
_hel = "b_air";			// Helicopters
_pla = "b_plane";		// Planes
_art = "b_art";			// Artillery

GVAR(BFT_Custom_Colour_Platoon) = QGVAR(ColourPlatoon);
GVAR(BFT_Custom_Colour_Alpha) = QGVAR(ColourAlpha);
GVAR(BFT_Custom_Colour_Bravo) = QGVAR(ColourBravo);
GVAR(BFT_Custom_Colour_Chalie) = QGVAR(ColourCharlie);
GVAR(BFT_Custom_Colour_Delta) = QGVAR(ColourDelta);
GVAR(BFT_Custom_Colour_Support) = QGVAR(ColourSupport);
GVAR(BFT_Custom_Colour_Tank) = QGVAR(ColourArmour);
GVAR(BFT_Custom_Colour_Air) = QGVAR(ColourAir);

CAV_SWRadioChannels = ["Platoon","Alpha","Bravo","Charlie","Delta","APC","Mech","Tank","Helo 1","Helo 2","Plane","MG Teams","AT Teams","Mortar","AA Teams","Special Teams"];

// --- Group Markers with Freq
// --- Callsign = [Grp Name,Marker, Display Name on Map, Colour, Acre SR Channel, Acre LR Channel, Type]

// --- Platoon
CAV_Platoon   = [_hq,  "PL",    GVAR(BFT_Custom_Colour_Platoon), 1, 1, "Leadership"];
CAV_PlatoonV  = [_lau, "COV",   GVAR(BFT_Custom_Colour_Platoon), 1, 1, "Basic"];

// --- Alpha
CAV_AlphaHQ   = [_hq,  "ASL",   GVAR(BFT_Custom_Colour_Alpha), 2, 1, "Leadership"];
CAV_Alpha1    = [_ft,  "A1",    GVAR(BFT_Custom_Colour_Alpha), 2, 1, "Basic"];
CAV_Alpha2    = [_ft,  "A2",    GVAR(BFT_Custom_Colour_Alpha), 2, 1, "Basic"];
CAV_AlphaV    = [_lau, "AV",    GVAR(BFT_Custom_Colour_Alpha), 2, 1, "Basic"];

// --- Bravo
CAV_BravoHQ   = [_hq,  "BSL",   GVAR(BFT_Custom_Colour_Bravo), 3, 1, "Leadership"];
CAV_Bravo1    = [_ft,  "B1",    GVAR(BFT_Custom_Colour_Bravo), 3, 1, "Basic"];
CAV_Bravo2    = [_ft,  "B2",    GVAR(BFT_Custom_Colour_Bravo), 3, 1, "Basic"];
CAV_BravoV    = [_lau, "BV",    GVAR(BFT_Custom_Colour_Bravo), 3, 1, "Basic"];

// --- Charlie
CAV_CharlieHQ = [_hq,  "CSL",   GVAR(BFT_Custom_Colour_Chalie), 4, 1, "Leadership"];
CAV_Charlie1  = [_ft,  "C1",    GVAR(BFT_Custom_Colour_Chalie), 4, 1, "Basic"];
CAV_Charlie2  = [_ft,  "C2",    GVAR(BFT_Custom_Colour_Chalie), 4, 1, "Basic"];
CAV_CharlieV  = [_lau, "CV",    GVAR(BFT_Custom_Colour_Chalie), 4, 1, "Basic"];

// --- Delta
CAV_DeltaHQ   = [_hq,  "DSL",   GVAR(BFT_Custom_Colour_Delta), 5, 1, "Leadership"];
CAV_Delta1    = [_ft,  "D1",    GVAR(BFT_Custom_Colour_Delta), 5, 1, "Basic"];
CAV_Delta2    = [_ft,  "D2",    GVAR(BFT_Custom_Colour_Delta), 5, 1, "Basic"];
CAV_DeltaV    = [_ifv, "DV",    GVAR(BFT_Custom_Colour_Delta), 5, 1, "Basic"];

// --- Medium MG Team
CAV_MMG1      = [_sup, "MMG1",  GVAR(BFT_Custom_Colour_Support), 12, 1, "Leadership"];
CAV_MMG2      = [_sup, "MMG2",  GVAR(BFT_Custom_Colour_Support), 12, 1, "Asset"];

// --- Heavy MG Team
CAV_HMG1      = [_sup, "HMG1",  GVAR(BFT_Custom_Colour_Support), 12, 1, "Leadership"];
CAV_HMG2      = [_sup, "HMG2",  GVAR(BFT_Custom_Colour_Support), 12, 1, "Asset"];

// --- Medium AT Team
CAV_MAT1      = [_lau, "MAT1",  GVAR(BFT_Custom_Colour_Support), 13, 1, "Leadership"];
CAV_MAT2      = [_lau, "MAT2",  GVAR(BFT_Custom_Colour_Support), 13, 1, "Asset"];

// --- Heavy AT Team
CAV_HAT1      = [_lau, "HAT1",  GVAR(BFT_Custom_Colour_Support), 13, 1, "Leadership"];
CAV_HAT2      = [_lau, "HAT2",  GVAR(BFT_Custom_Colour_Support), 13, 1, "Asset"];

// --- Mortar Team
CAV_MTR1      = [_mor, "MTR1",  GVAR(BFT_Custom_Colour_Support), 14, 1, "Leadership"];
CAV_MTR2      = [_mor, "MTR2",  GVAR(BFT_Custom_Colour_Support), 14, 1, "Asset"];

// --- Medium SAM Team
CAV_MSAM1     = [_lau, "MSAM1", GVAR(BFT_Custom_Colour_Support), 15, 1, "Leadership"];
CAV_MSAM2     = [_lau, "MSAM2", GVAR(BFT_Custom_Colour_Support), 15, 1, "Asset"];

// --- Heavy SAM Team
CAV_HSAM1     = [_lau, "HSAM1", GVAR(BFT_Custom_Colour_Support), 15, 1, "Leadership"];
CAV_HSAM2     = [_lau, "HSAM2", GVAR(BFT_Custom_Colour_Support), 15, 1, "Asset"];

// --- Sniper Team
CAV_ST1       = [_rec, "ST1",   GVAR(BFT_Custom_Colour_Support), 16, 1, "Leadership"];
CAV_ST2       = [_rec, "ST2",   GVAR(BFT_Custom_Colour_Support), 16, 1, "Asset"];

// --- Diver Team
CAV_DT1       = [_rec, "DT1",   GVAR(BFT_Custom_Colour_Support), 16, 1, "Leadership"];
CAV_DT2       = [_rec, "DT2",   GVAR(BFT_Custom_Colour_Support), 16, 1, "Asset"];

// --- Engineer Team
CAV_ET1       = [_eng, "ENG1",  GVAR(BFT_Custom_Colour_Support), 16, 1, "Leadership"];
CAV_ET2       = [_eng, "ENG2",  GVAR(BFT_Custom_Colour_Support), 16, 1, "Asset"];

// --- APC
CAV_APC1      = [_ifv, "APC1",  GVAR(BFT_Custom_Colour_Tank), 6, 1, "Leadership"];
CAV_APC2      = [_ifv, "APC2",  GVAR(BFT_Custom_Colour_Tank), 6, 1, "Asset"];
CAV_APC3      = [_ifv, "APC3",  GVAR(BFT_Custom_Colour_Tank), 6, 1, "Asset"];
CAV_APC4      = [_ifv, "APC4",  GVAR(BFT_Custom_Colour_Tank), 6, 1, "Asset"];

// --- IFV
CAV_IFV1      = [_ifv, "IFV1",  GVAR(BFT_Custom_Colour_Tank), 7, 1, "Leadership"];
CAV_IFV2      = [_ifv, "IFV2",  GVAR(BFT_Custom_Colour_Tank), 7, 1, "Asset"];
CAV_IFV3      = [_ifv, "IFV3",  GVAR(BFT_Custom_Colour_Tank), 7, 1, "Asset"];
CAV_IFV4      = [_ifv, "IFV4",  GVAR(BFT_Custom_Colour_Tank), 7, 1, "Asset"];

// --- Tank
CAV_TANK1     = [_tnk, "TNK1",  GVAR(BFT_Custom_Colour_Tank), 8, 1, "Leadership"];
CAV_TANK2     = [_tnk, "TNK2",  GVAR(BFT_Custom_Colour_Tank), 8, 1, "Asset"];
CAV_TANK3     = [_tnk, "TNK3",  GVAR(BFT_Custom_Colour_Tank), 8, 1, "Asset"];
CAV_TANK4     = [_tnk, "TNK4",  GVAR(BFT_Custom_Colour_Tank), 8, 1, "Asset"];

// --- Transport Helicopter
CAV_TH1       = [_hel, "TH1",   GVAR(BFT_Custom_Colour_Air), 9, 1, "Leadership"];
CAV_TH2       = [_hel, "TH2",   GVAR(BFT_Custom_Colour_Air), 9, 1, "Asset"];
CAV_TH3       = [_hel, "TH3",   GVAR(BFT_Custom_Colour_Air), 9, 1, "Asset"];
CAV_TH4       = [_hel, "TH4",   GVAR(BFT_Custom_Colour_Air), 9, 1, "Asset"];

// --- Attack Helicopter
CAV_AH1       = [_hel, "AH1",   GVAR(BFT_Custom_Colour_Air), 10, 1, "Leadership"];
CAV_AH2       = [_hel, "AH2",   GVAR(BFT_Custom_Colour_Air), 10, 1, "Asset"];
CAV_AH3       = [_hel, "AH3",   GVAR(BFT_Custom_Colour_Air), 10, 1, "Asset"];
CAV_AH4       = [_hel, "AH4",   GVAR(BFT_Custom_Colour_Air), 10, 1, "Asset"];

// --- Close Air Support
CAV_CAS1      = [_pla, "CAS1",  GVAR(BFT_Custom_Colour_Air), 11, 1, "Leadership"];
CAV_CAS2      = [_pla, "CAS2",  GVAR(BFT_Custom_Colour_Air), 11, 1, "Asset"];
CAV_CAS3      = [_pla, "CAS3",  GVAR(BFT_Custom_Colour_Air), 11, 1, "Asset"];
CAV_CAS4      = [_pla, "CAS4",  GVAR(BFT_Custom_Colour_Air), 11, 1, "Asset"];


CAV_GROUP_LIST = ["CAV_Platoon","CAV_PlatoonV","CAV_AlphaHQ","CAV_Alpha1","CAV_Alpha2","CAV_AlphaV","CAV_BravoHQ","CAV_Bravo1","CAV_Bravo2","CAV_BravoV","CAV_CharlieHQ","CAV_Charlie1","CAV_Charlie2","CAV_CharlieV","CAV_DeltaHQ","CAV_Delta1","CAV_Delta2","CAV_DeltaV","CAV_MMG1","CAV_MMG2","CAV_HMG1","CAV_HMG2","CAV_MAT1","CAV_MAT2","CAV_HAT1","CAV_HAT2","CAV_MTR1","CAV_MTR2","CAV_MSAM1","CAV_MSAM2","CAV_HSAM1","CAV_HSAM2","CAV_ST1","CAV_ST2","CAV_DT1","CAV_DT2","CAV_ET1","CAV_ET2","CAV_APC1","CAV_APC2","CAV_APC3","CAV_APC4","CAV_IFV1","CAV_IFV2","CAV_IFV3","CAV_IFV4","CAV_TANK1","CAV_TANK2","CAV_TANK3","CAV_TANK4","CAV_TH1","CAV_TH2","CAV_TH3","CAV_TH4","CAV_AH1","CAV_AH2","CAV_AH3","CAV_AH4","CAV_CAS1","CAV_CAS2","CAV_CAS3","CAV_CAS4"];
