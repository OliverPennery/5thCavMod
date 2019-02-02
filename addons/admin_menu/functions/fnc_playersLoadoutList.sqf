#include "script_component.hpp"

params ["_control", "_listboxIdc"];

tvClear (_control # 0);

(_control # 0) tvAdd [ [],"Weapons"];                            // - [0]

    (_control # 0) tvAdd [ [0],"Primary"];                       // - [0,0]
    (_control # 0) tvSetData [[0,0], "Primary"];
        (_control # 0) tvAdd [ [0,0],"Attachments"];             // - [0,0,0]
        (_control # 0) tvAdd [ [0,0],"Ammo"];                    // - [0,0,1]

    (_control # 0) tvAdd [ [0],"Launcher"];                      // - [0,1]
    (_control # 0) tvSetData [[0,1], "Launcher"];
        (_control # 0) tvAdd [ [0,1],"Attachments"];             // - [0,1,0]
        (_control # 0) tvAdd [ [0,1],"Ammo"];                    // - [0,1,1]

    (_control # 0) tvAdd [ [0],"Secondary"];                     // - [0,2]
    (_control # 0) tvSetData [[0,2], "Secondary"];
        (_control # 0) tvAdd [ [0,2],"Attachments"];             // - [0,2,0]
        (_control # 0) tvAdd [ [0,2],"Ammo"];                    // - [0,2,1]

(_control # 0) tvAdd [ [],"Clothing"];                           // - [1]
    (_control # 0) tvAdd [ [1],"Uniform"];                       // - [1,0]
    (_control # 0) tvSetData [[1,0], "Uniform"];
        (_control # 0) tvAdd [ [1,0],"Ammo"];                    // - [1,0,0]
        (_control # 0) tvAdd [ [1,0],"Grenades"];                // - [1,0,1]
        (_control # 0) tvAdd [ [1,0],"Medical"];                 // - [1,0,2]
        (_control # 0) tvAdd [ [1,0],"Misc"];                    // - [1,0,3]

    (_control # 0) tvAdd [ [1],"Vest"];                          // - [1,1]
    (_control # 0) tvSetData [[1,1], "Vest"];
        (_control # 0) tvAdd [ [1,1],"Ammo"];                    // - [1,1,0]
        (_control # 0) tvAdd [ [1,1],"Grenades"];                // - [1,1,1]
        (_control # 0) tvAdd [ [1,1],"Medical"];                 // - [1,1,2]
        (_control # 0) tvAdd [ [1,1],"Misc"];                    // - [1,1,3]

    (_control # 0) tvAdd [ [1],"Backpack"];                      // - [1,2]
    (_control # 0) tvSetData [[1,2], "Backpack"];
        (_control # 0) tvAdd [ [1,2],"Ammo"];                    // - [1,2,1]
        (_control # 0) tvAdd [ [1,2],"Grenades"];                // - [1,2,2]
        (_control # 0) tvAdd [ [1,2],"Medical"];                 // - [1,2,3]
        (_control # 0) tvAdd [ [1,2],"Misc"];                    // - [1,2,4]

    (_control # 0) tvAdd [ [1],"Headgear"];                      // - [1,3]
    (_control # 0) tvSetData [[1,3], "Headgear"];

    (_control # 0) tvAdd [ [1],"Facewear"];                      // - [1,4]
    (_control # 0) tvSetData [[1,4], "Facewear"];

(_control # 0) tvAdd [ [],"Misc"];                               // - [2]


{
    (_control # 0) tvExpand [_x];
}forEach [0,1,2];

_fnc_setInfo = {
    params ["_item", "_current", "_type"];
    if (count (_item) != 0) then {
        private ["_name", "_image", "_config"];
        if (typeName _item == "ARRAY") then {
            private _config = (_item # 0) call CBA_fnc_getItemConfig;
            if (isNull _config) then{
                _config = configfile >> "CfgVehicles" >> (_item # 0);
            };
            _name = getText (_config >> "displayName");
            _image = getText (_config >> "picture");
            if (count (_item) == 3) then{
                _name = format ["%1 * %2 - %3rnd", (_item # 1), _name, (_item # 2)];
            }else{
                if (_type == 1) then{
                    _name = format ["%1 * %2", (_item # 1), _name];
                }else{
                    _name = format ["%1 - %2rnd", _name, (_item # 1)];
                };
            };
        }else{
            private _config = _item call CBA_fnc_getItemConfig;
            if (isNull _config) then{
                _config = configfile >> "CfgVehicles" >> _item;
            };
            _name = getText (_config >> "displayName");
            _image = getText (_config >> "picture");
        };

        if (count((_control # 0) tvData _current) == 0) then {
            private _path = (_control # 0) tvAdd [_current, _name];
            //systemChat format["%1 : %2", (_name), (_current + [_path])];
            (_control # 0) tvSetPicture  [(_current + [_path]), _image];
        }else{
            (_control # 0) tvSetText [_current, _name];
            (_control # 0) tvSetPicture  [_current, _image];
        };
    };
};

_fnc_clear = {
    params ["_subPath", "_mode"];
    {
        private _childs = (((_control # 0) tvCount _x) - 1);
        //diag_log text format ["_childs : %1", _childs];
        if (_childs != 0) then{
            for "_childPath" from _childs to 0 step -1 do {
                //diag_log text format ["tvDelete : %1", (_x + [_childPath])];
                (_control # 0) tvDelete (_x + [_childPath]);
            };
        };
    }forEach ([[[0,_subPath,0], [0,_subPath,1]],
               [[1,_subPath,0], [1,_subPath,1],[1,_subPath,2], [1,_subPath,3]],
               [[2]]] # _mode);
};

_fnc_init = {
    params ["_data", "_subPath", "_parentPath"];
    [_subPath,_parentPath] call _fnc_clear;

    if (count (_data) != 0)then{
        if (typeName _data == "ARRAY" and _parentPath != 2) then {
            [(_data # 0), [_parentPath,_subPath], _parentPath] call _fnc_setInfo;
            {
                if (typeName _x == "ARRAY") then {
                    [_x, [_parentPath,_subPath,([(_x # 0), _parentPath] call FUNC(getItemClass))], _parentPath] call _fnc_setInfo;
                }else{
                    [_x, [_parentPath,_subPath,([_x, _parentPath] call FUNC(getItemClass))], _parentPath] call _fnc_setInfo;
                };
            }forEach ([(_data select [1,7]), (_data # 1)] # _parentPath);
        }else{
            if (_parentPath == 2) then{
                if (typeName _data == "ARRAY") then {
                    {
                        [_x, [_parentPath], _parentPath] call _fnc_setInfo;
                    }forEach _data;
                }else{
                    [_data, [_parentPath], _parentPath] call _fnc_setInfo;
                };
            }else{
                [_data, [_parentPath,_subPath], _parentPath] call _fnc_setInfo;
            };
        };
    }else{
        (_control # 0) tvSetText [[_parentPath,_subPath], ((_control # 0) tvData [_parentPath,_subPath])];
        (_control # 0) tvSetPicture  [[_parentPath,_subPath], ""];
    };
};

//private _loadout = getUnitLoadout bob;



//player setVariable [QGVAR(lastLoadout(), [],true];

_handle = [
{
    (_this select 0) params ["_control", "_listboxIdc", "_fnc_init", "_fnc_setInfo", "_fnc_clear"];
    if (isNull (ctrlParent (_control # 0))) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    private _unit = (([(ctrlParent (_control # 0)), _listboxIdc] call FUNC(getListboxData)) # 2) call BIS_fnc_objectFromNetId;

	if (isPlayer _unit) then
	{
		private _loadout = getUnitLoadout _unit;
        if (!((player getVariable [QGVAR(lastLoadout), []]) isEqualTo _loadout)) then{
            player setVariable [QGVAR(lastLoadout), _loadout,true];
            [format ["Viewing %1 Loadout", (name _unit)], 2] call FUNC(clientLog);
            [format ["%1 Viewing %2 Loadout", name player, (name _unit)], 2, true] call FUNC(log);
            {
                switch (_forEachIndex) do {
                    case 0 : {[_x,0,0] call _fnc_init;};
                    case 1 : {[_x,1,0] call _fnc_init;};
                    case 2 : {[_x,2,0] call _fnc_init;};
                    case 3 : {[_x,0,1] call _fnc_init;};
                    case 4 : {[_x,1,1] call _fnc_init;};
                    case 5 : {[_x,2,1] call _fnc_init;};
                    case 6 : {[_x,3,1] call _fnc_init;};
                    case 7 : {[_x,4,1] call _fnc_init;};
                    case 8 : {[(_x # 0),0,2] call _fnc_init;};
                    case 9 : {[_x,0,2] call _fnc_init;};
                };
            } forEach _loadout;
        };
    };
},0,[_control, _listboxIdc, _fnc_init, _fnc_setInfo, _fnc_clear]] call CBA_fnc_addPerFrameHandler;
