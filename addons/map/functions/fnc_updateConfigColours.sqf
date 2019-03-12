#include "script_component.hpp"

params ["_i"];

private _colours = [["ColorYellow","ColorRed","ColorBlue","ColorGreen","ColorPink","ColorOrange","ColorBlack","ColorRed"],[QEGVAR(common,ColourPlatoon),QEGVAR(common,ColourAlpha),QEGVAR(common,ColourBravo),QEGVAR(common,ColourCharlie),QEGVAR(common,ColourDelta),QEGVAR(common,ColourSupport),QEGVAR(common,ColourArmour),QEGVAR(common,ColourAir)],[QEGVAR(common,ColourJedPlatoon),QEGVAR(common,ColourJedAlpha),QEGVAR(common,ColourJedBravo),QEGVAR(common,ColourJedCharlie),QEGVAR(common,ColourJedDelta),QEGVAR(common,ColourJedSupport),QEGVAR(common,ColourJedArmour),QEGVAR(common,ColourJedAir)]];

_colours = (_colours # _i);

_fnc = {
    params ["_colour", "_array"];
    {
        _x set [2, _colour];
    } forEach _array;
};

[(_colours # 0), [CAV_Platoon,CAV_PlatoonV]] call _fnc;
[(_colours # 1), [CAV_AlphaHQ,CAV_Alpha1,CAV_Alpha2,CAV_AlphaV]] call _fnc;
[(_colours # 2), [CAV_BravoHQ,CAV_Bravo1,CAV_Bravo2,CAV_BravoV]] call _fnc;
[(_colours # 3), [CAV_CharlieHQ,CAV_Charlie1,CAV_Charlie2,CAV_CharlieV]] call _fnc;
[(_colours # 4), [CAV_DeltaHQ,CAV_Delta1,CAV_Delta2,CAV_DeltaV]] call _fnc;
[(_colours # 5), [CAV_MMG1,CAV_MMG2,CAV_HMG1,CAV_HMG2,CAV_MAT1,CAV_MAT2,CAV_HAT1,CAV_HAT2,CAV_MTR1,CAV_MTR2,CAV_MSAM1,CAV_MSAM2,CAV_HSAM1,CAV_HSAM2,CAV_ST1,CAV_ST2,CAV_DT1,CAV_DT2,CAV_ET1,CAV_ET2]] call _fnc;
[(_colours # 6), [CAV_APC1,CAV_APC2,CAV_APC3,CAV_APC4,CAV_IFV1,CAV_IFV2,CAV_IFV3,CAV_IFV4,CAV_TANK1,CAV_TANK2,CAV_TANK3,CAV_TANK4]] call _fnc;
[(_colours # 7), [CAV_TH1,CAV_TH2,CAV_TH3,CAV_TH4,CAV_AH1,CAV_AH2,CAV_AH3,CAV_AH4,CAV_CAS1,CAV_CAS2,CAV_CAS3,CAV_CAS4]] call _fnc;
