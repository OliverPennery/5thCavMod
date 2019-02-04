#include "script_component.hpp"
//systemChat "Toggle";
with uiNamespace do {
    if (isNull ((findDisplay 12) displayCtrl 31051)) then {
        (findDisplay 12) ctrlCreate [QGVAR(RscListBox_31052),31052];
        (findDisplay 12) ctrlCreate [QGVAR(RscStructuredText_31051),31051];
        ((findDisplay 12) displayCtrl 31050) ctrlSetText localize LSTRING(Close_Roster);
    } else {
        ctrlDelete ((findDisplay 12) displayCtrl 31051);
        ctrlDelete ((findDisplay 12) displayCtrl 31052);
        ((findDisplay 12) displayCtrl 31050) ctrlSetText localize LSTRING(Open_Roster);
    };
};
if (!(isNull ((findDisplay 12) displayCtrl 31051))) then {
    call FUNC(updateRoster);
};
