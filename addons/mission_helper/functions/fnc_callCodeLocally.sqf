#include "script_component.hpp"

params ["_commandType","_command","_commandParams",["_group",grpNull],["_unit",objNull]];

if (!isNull _unit && {local _unit}) then {
    _commandParams call (compile _command);
} else {
    if (_commandType == "group" && !isNull _group) then {
        if isNil {_commandParams remoteExecCall [_command, groupOwner _group]} then {
            systemChat ("callCodeLocally error: " + _commandType + " " + _command + " " + str(_commandParams)  + " " + str(_group) + " " + str(_unit));
        };
    } else {
        if (_commandType == "unit" && !isNull _unit) then {
            if isNil {_commandParams remoteExecCall [_command, _unit]} then {
                systemChat ("callCodeLocally error: " + _commandType + " " + _command + " " + str(_commandParams)  + " " + str(_group) + " " + str(_unit));
            };
        } else {
            systemChat "commandType in callCodeLocally unrecognized";
        };
    };
};
