class CfgMarkerColors {
    class Default;

    //Shack Tac
    class GVAR(ColourPlatoon) : Default {
    name = CSTRING(ColourPlatoon);
    scope = 2;
    color[] = {1,0.945,0.573,1};
    };
    class GVAR(ColourAlpha) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourAlpha);
    color[] = {1,0.545,0.545,1};
    };
    class GVAR(ColourBravo) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourBravo);
    color[] = {0.729,0.894,0.973,1};
    };
    class GVAR(ColourCharlie) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourCharlie);
    color[] = {0.773,0.922,0.569,1};
    };
    class GVAR(ColourDelta) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourDelta);
    color[] = {0.259,0.851,0.957,1};
    };
    class GVAR(ColourSupport) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourSupport);
    color[] = {1,0.702,0.278,1};
    };
    class GVAR(ColourArmour) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourArmour);
    color[] = {0,0,0,1};
    };
    class GVAR(ColourAir) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourAir);
    color[] = {1,0,1,1};
    };

    // Jed
    class GVAR(ColourJedPlatoon) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedPlatoon);
    color[] = {1,1,1,1}; // French blue
    };
    class GVAR(ColourJedAlpha) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedAlpha);
    color[] = {0.976,0.639,0.91,1}; // OwO Pink
    };
    class GVAR(ColourJedBravo) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedBravo);
    color[] = {0.196,0.608,0.506,1}; // Unpleasant Ocean Green
    };
    class GVAR(ColourJedCharlie) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedCharlie);
    color[] = {1,0.553,0.2,1}; // Orange
    };
    class GVAR(ColourJedDelta) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedDelta);
    color[] = {1,0,0,1}; // colourblind green
    };
    class GVAR(ColourJedSupport) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedSupport);
    color[] = {0.973,1,0.576,1}; // Ayaya yellow
    };
    class GVAR(ColourJedArmour) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedArmour);
    color[] = {0,1,0.09,1}; // Greenscreen green
    };
    class GVAR(ColourJedAir) : GVAR(ColourPlatoon) {
    name = CSTRING(ColourJedAir);
    color[] = {0.29,0.255,0.165,1}; // literally the most ugly colour in the world
    };
};
