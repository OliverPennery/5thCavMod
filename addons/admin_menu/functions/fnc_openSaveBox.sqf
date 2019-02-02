#include "script_component.hpp"

params ["_control"];

ctrlParent (_control # 0) ctrlCreate [QGVAR(console_saveBox_frame_border),312220];
ctrlParent (_control # 0) ctrlCreate [QGVAR(console_saveBox_edit_fileName),1402];
ctrlParent (_control # 0) ctrlCreate [QGVAR(console_saveBox_button_cancel),312221];
ctrlParent (_control # 0) ctrlCreate [QGVAR(console_saveBox_button_save),1601];
