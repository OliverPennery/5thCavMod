//hint str _this;
#include "script_component.hpp"

private _return = call compile _this;
if (_return isEqualType "") then{
    missionNamespace setVariable [QGVAR(compile_return), _return, true];
}else{
    missionNamespace setVariable [QGVAR(compile_return), str(_return), true];
};


//SETMVAR (GVAR(compile_return), (call compile _this));
