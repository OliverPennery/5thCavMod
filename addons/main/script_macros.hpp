#include "\z\ace\addons\main\script_macros.hpp"


#define SETMPVAR(var1,var2) missionNamespace SETPVAR_SYS(var1,var2)

#define SCOPEL(var) scope = var; \
                    scopeCurator = var; \
                    scopeArsenal = var;

#define PRIVATE            0
#define PROTECTED        1
#define PUBLIC            2
