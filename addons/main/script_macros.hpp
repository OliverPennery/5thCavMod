#include "\z\ace\addons\main\script_macros.hpp"


#define SETMPVAR(var1,var2) missionNamespace SETPVAR_SYS(var1,var2)
#define SFUNC(var1,var2) var1 remoteExecCall [FUNC(var2), 2]

#define SCOPEL(var) scope = var; \
                    scopeCurator = var; \
                    scopeArsenal = var;

#define PRIVATE            0
#define PROTECTED        1
#define PUBLIC            2

//For use with other mods ex. SGVAR(ace,captives,isHandcuffed)
#define SGVAR(var1,var2,var3) TRIPLES(var1,var2,var3)
#define QSGVAR(var1,var2,var3) QUOTE(SGVAR(var1,var2,var3))
#define QQSGVAR(var1,var2,var3) QUOTE(QSGVAR(var1,var2,var3))

//For use with other mods ex. SFUNC(ace,medical_treatment,isMedic)
#define SFUNC(var1,var2,var3) TRIPLES(DOUBLES(var1,var2),fnc,var3)
#define QSFUNC(var1,var2,var3) QUOTE(SFUNC(var1,var2,var3))
#define QQSFUNC(var1,var2,var3) QUOTE(QSFUNC(var1,var2,var3))
