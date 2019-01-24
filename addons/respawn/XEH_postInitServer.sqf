#include "script_component.hpp"

LOG(MSG_INIT);

if (GVAR(CustomRespawnMode) == 1 || GVAR(CustomRespawnMode) == 2) then {
	_medVic = call (compile GVAR(medVicString));
	if (isNull _medVic) then {
		systemchat localize LSTRING(medVic_errorMessage);
	} else {
		GVAR(medVic) = _medVic;
	};
	if (GVAR(CustomRespawnMode) == 1) then {
		GVAR(medVic) setVariable ["deployed",false,true];
	};
};
