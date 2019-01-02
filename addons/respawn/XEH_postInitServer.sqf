#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(CustomRespawnMode) == 1) then {
	if (isNull call (compile GVAR(medVicString))) then {
		systemChat "medVic not found";
	} else {
		GVAR(medVic) = call (compile GVAR(medVicString));
	};
	GVAR(medVic) setVariable ["deployed",false,true];
};