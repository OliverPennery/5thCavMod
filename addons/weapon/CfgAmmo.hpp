class CfgAmmo {
    class FlareCore;
    class FlareBase: FlareCore {
        timeToLive = 90;
        brightness = 10000;
        intensity = 1250000;
        flareSize = 20;
    };
    class F_40mm_White: FlareBase {
        timeToLive = 90;
        brightness = 20000;
        flareSize = 20;
    };
    class F_20mm_White: FlareBase {
        timeToLive = 90;
        brightness = 10000;
        intensity = 500000;
        flareSize = 10;
   };
    class Flare_82mm_AMOS_White: FlareCore {
        timeToLive = 90;
        brightness = 40000;
        intensity = 2000000;
        flareSize = 30;
    };
};
