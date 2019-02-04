#include "script_component.hpp"
class CfgRespawnTemplates
{
	class GVAR(5thCavRespawn)
	{
        displayName = CSTRING(RespawnTemplate_DisplayName);
        onPlayerKilled = QFUNC(OnKilled);
        onPlayerRespawn = QFUNC(OnRespawn);
        respawnDelay = 20;
        respawnOnStart = -1;
        respawnTypes[] = {2,3};
    };
};
