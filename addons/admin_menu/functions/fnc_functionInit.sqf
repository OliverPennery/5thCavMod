#include "script_component.hpp"

params ["_btnControl", "_btnNumber"];

private _btnName = call compile (format[QGVAR(AM_Func_Btn_%1_Name), _btnNumber]);
//private _btnFunction = call compile (format[QGVAR(AM_Func_Btn_%1_Func), _btnNumber]);

(_btnControl # 0) ctrlSetText (_btnName);

switch (_btnNumber) do {
    case 1 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, name _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_1_Func);
            call compile _btnFunction;
        }];
    };
    case 2 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_2_Func);
            call compile _btnFunction;
        }];
    };
    case 3 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_3_Func);
            call compile _btnFunction;
        }];
    };
    case 4 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_4_Func);
            call compile _btnFunction;
        }];
    };
    case 5 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_5_Func);
            call compile _btnFunction;
        }];
    };
    case 6 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_6_Func);
            call compile _btnFunction;
        }];
    };
    case 7 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_7_Func);
            call compile _btnFunction;
        }];
    };
    case 8 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_8_Func);
            call compile _btnFunction;
        }];
    };
    case 9 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_9_Func);
            call compile _btnFunction;
        }];
    };
    case 10 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_10_Func);
            call compile _btnFunction;
        }];
    };
    case 11 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_11_Func);
            call compile _btnFunction;
        }];
    };
    case 12 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_12_Func);
            call compile _btnFunction;
        }];
    };
    case 13 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_13_Func);
            call compile _btnFunction;
        }];
    };
    case 14 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_14_Func);
            call compile _btnFunction;
        }];
    };
    case 15 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_15_Func);
            call compile _btnFunction;
        }];
    };
    case 16 : {
        (_btnControl # 0) ctrlAddEventHandler["ButtonClick", {
            private _unit = name ((([(ctrlParent (_this # 0)), 1500] call FUNC(getListboxData)) # 2)call BIS_fnc_objectFromNetId);
            private _btnName = ctrlText (_this # 0);
            [format ["Ran Function %1", _btnName], 2] call FUNC(clientLog);
            [format ["%1 Ran Function %2", _btnName, _unit], 2, true] call FUNC(log);

            private _btnFunction = GVAR(AM_Func_Btn_16_Func);
            call compile _btnFunction;
        }];
    };
};
