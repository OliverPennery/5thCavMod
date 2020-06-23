#define COMPONENT mission_helper
#define COMPONENT_BEAUTIFIED Mission Helper
#include "\y\cav\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define CBA_DEBUG_SYNCHRONOUS
// #define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_MISSION_HELPER
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_MISSION_HELPER
    #define DEBUG_SETTINGS MISSION_HELPER
#endif

#include "\y\cav\addons\main\script_macros.hpp"

// UI grid
#define SIZEX ((safeZoneW / safeZoneH) min 1.2)
#define SIZEY (SIZEX / 1.2)
#define W_PART(num) (num * (SIZEX / 40))
#define H_PART(num) (num * (SIZEY / 25))
#define X_PART(num) (W_PART(num) + (safeZoneX + (safeZoneW - SIZEX) / 2))
#define Y_PART(num) (H_PART(num) + (safeZoneY + (safeZoneH - SIZEY) / 2))

/*
GUI Editor Settings for above grid (ctrl+g)
x: (safeZoneX + (safeZoneW - ((safeZoneW / safeZoneH) min 1.2)) / 2)
y: (safeZoneY + (safeZoneH - (((safeZoneW / safeZoneH) min 1.2)/1.2)) / 2)
area w: ((safeZoneW / safeZoneH) min 1.2)
area h: (((safeZoneW / safeZoneH) min 1.2)/1.2)
segment w: (((safeZoneW / safeZoneH) min 1.2)/40)
segment h: (((((safeZoneW / safeZoneH) min 1.2) / 1.2))/25)
*/
