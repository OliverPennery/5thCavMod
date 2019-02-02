#include "script_component.hpp"

params ["_btnControl", "_consoleIdc", "_fileNameIdc"];

_fileName = ctrlText ((ctrlParent (_btnControl # 0)) displayCtrl _fileNameIdc);
_code = ctrlText ((ctrlParent (_btnControl # 0)) displayCtrl _consoleIdc);

private _savedCode  = (profileNameSpace getVariable [QGVAR(savedCode), []]);

_savedCode pushBack [_fileName, _code];

profileNameSpace setVariable [QGVAR(savedCode), _savedCode];
saveProfileNameSpace;

_btnControl call FUNC(closeSaveBox);
[format ["Saved Custom File Called %1", _fileName], 2] call FUNC(clientLog);
[format ["%1 Saved Custom File Called %2", name player, _fileName], 2, false] call FUNC(log);
