#define COMPONENT spectator
#define COMPONENT_BEAUTIFIED Spectator
#include "\y\cav\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define CBA_DEBUG_SYNCHRONOUS
// #define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_SPECTATOR
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_SPECTATOR
    #define DEBUG_SETTINGS DEBUG_SETTINGS_SPECTATOR
#endif

#include "\y\cav\addons\main\script_macros.hpp"

#define MAX_VIEW_DISTANCE       2500
#define MIN_VIEW_DISTANCE       500
#define DEFAULT_VIEW_DISTANCE   1200

#define FIRE_HIGHLIGHT_TIME 0.05
#define MAX_GRENADES 15
#define MAX_PROJECTILES 50
#define MAX_PROJECTILE_SEGMENTS 50

#define DISTANCE_ICONS_SQR 9000000 // Icons are rendered within 3000m, squared for `distanceSqr` speed
#define DISTANCE_NAMES_SQR 90000 // Names are rendered within 300m, squared for `distanceSqr` speed
#define DISTANCE_NAMES_AI_SQR 30625 // AI names are rendered within 175m, squared for `distanceSqr` speed
#define NAME_MAX_CHARACTERS 17

#define LIST_ENTITIES 0
#define LIST_UPDATE_RATE 1

// Revive variables
#define BIS_REVIVE "BIS_revive_incapacitated"
#define ACE_REVIVE "ACE_isUnconscious"
#define NEEDS_REVIVE(unit) (unit getVariable [ACE_REVIVE,false]) || {unit getVariable [BIS_REVIVE,false]}

// Icons used in the UI/drawing
#define ICON_DEAD                       "a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"
#define ICON_GRENADE                    "A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_connect_ca.paa"
#define ICON_UNIT                       "a3\ui_f\data\map\markers\military\dot_ca.paa" //a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\UnitIcon_ca.paa
#define ICON_VEHICLE                    "a3\ui_f\data\map\markers\military\triangle_ca.paa"
#define ICON_GROUP                      "a3\ui_f\data\map\markers\nato\o_unknown.paa"
#define ICON_REVIVE                     "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\ReviveIcon_ca.paa"
#define ICON_BACKGROUND_UNIT            "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\UnitName_ca.paa"
#define ICON_CAMERA                     "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\cameraTexture_ca.paa"
#define CAM_ICON_FREE                   "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FreeSelected.paa"
#define CAM_ICON_FREE_SELECTED          "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\Free.paa"
#define CAM_ICON_FOLLOW                 "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FollowSelected.paa"
#define CAM_ICON_FOLLOW_SELECTED        "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\Follow.paa"
#define CAM_ICON_FPS                    "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FpsSelected.paa"
#define CAM_ICON_FPS_SELECTED           "a3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\Fps.paa"
