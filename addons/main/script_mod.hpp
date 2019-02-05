// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp

#define MAINPREFIX y
#define PREFIX cav

#include "script_version.hpp"

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 0.8

#define REQUIRED_CBA_VERSION {3,9,0}


#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(proj_templ - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(proj_templ - COMPONENT)
#endif
