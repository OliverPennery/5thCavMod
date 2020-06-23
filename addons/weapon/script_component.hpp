#define COMPONENT weapon
#define COMPONENT_BEAUTIFIED Weapon
#include "\y\cav\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define CBA_DEBUG_SYNCHRONOUS
// #define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_WEAPON
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_WEAPON
    #define DEBUG_SETTINGS DEBUG_SETTINGS_WEAPON
#endif

#include "\y\cav\addons\main\script_macros.hpp"
