#include "script_component.hpp"
/*
 * Author: commy2 @ACE
 * Returns item type of given classname.
 *
 * Modifier: Brecon
 * Reason: Output formating and adding additional classes
 *
 * Arguments:
 * 0: Item <STRING>
 * 1: Mode <INT>
 *
 * Return Value:
 * 0: Category (0,1,2,3) <INT>
 *
 * Example:
 * ["tire"] call cav_admin_menu_fnc_getItemClass
 *
 * Public: Yes
 */


params ["_item", ["_mode", 0]];

//----------------------------------------------------------------------------------------------------------------------------------------\\
private _TYPE_WEAPON_PRIMARY = 1;
private _TYPE_WEAPON_HANDGUN = 2;
private _TYPE_WEAPON_SECONDARY = 4;
// magazine types
private _TYPE_MAGAZINE_HANDGUN_AND_GL = 16; // mainly
private _TYPE_MAGAZINE_PRIMARY_AND_THROW = 256;
private _TYPE_MAGAZINE_SECONDARY_AND_PUT = 512; // mainly
// more types
private _TYPE_BINOCULAR_AND_NVG = 4096;
private _TYPE_WEAPON_VEHICLE = 65536;
private _TYPE_ITEM = 131072;
// item types
private _TYPE_DEFAULT = 0;
private _TYPE_MUZZLE = 101;
private _TYPE_OPTICS = 201;
private _TYPE_FLASHLIGHT = 301;
private _TYPE_BIPOD = 302;
private _TYPE_FIRST_AID_KIT = 401;
private _TYPE_NVG = 602;
private _TYPE_GOGGLE = 603;
private _TYPE_HEADGEAR = 605;
private _TYPE_FACTOR = 607;
private _TYPE_RADIO = 611;
private _TYPE_HMD = 616;
private _TYPE_BINOCULAR = 617;
private _TYPE_MEDIKIT = 619;
private _TYPE_TOOLKIT = 620;
private _TYPE_UAV_TERMINAL = 621;
private _TYPE_VEST = 701;
private _TYPE_UNIFORM = 801;
private _TYPE_BACKPACK = 901;
private _ACE_MEDICAL = ["ACE_fieldDressing",
                        "ACE_packingBandage",
                        "ACE_elasticBandage",
                        "ACE_tourniquet",
                        "ACE_morphine",
                        "ACE_adenosine",
                        "ACE_atropine",
                        "ACE_epinephrine",
                        "ACE_plasmaIV",
                        "ACE_plasmaIV_500",
                        "ACE_plasmaIV_250",
                        "ACE_bloodIV",
                        "ACE_bloodIV_500",
                        "ACE_bloodIV_250",
                        "ACE_salineIV",
                        "ACE_salineIV_500",
                        "ACE_salineIV_250",
                        "ACE_quikclot",
                        "ACE_personalAidKit",
                        "ACE_splint",
                        "ACE_surgicalKit"];

private _CONFIG_CFG_WEAPONS = configFile >> "CfgWeapons";
private _GRENADE_LIST = [];
{
    _GRENADE_LIST append getArray (_CONFIG_CFG_WEAPONS >> "Throw" >> _x >> "magazines");
    false
} count getArray (_CONFIG_CFG_WEAPONS >> "Throw" >> "muzzles");
{
    _GRENADE_LIST append getArray (_configCfgWeapons >> "Put" >> _x >> "magazines");
    false
} count getArray (_configCfgWeapons >> "Put" >> "muzzles");
//----------------------------------------------------------------------------------------------------------------------------------------\\


private _config = _item call CBA_fnc_getItemConfig;

if (isNull _config) exitWith {["", ""]};

private _cfgType = configName ((configHierarchy _config) param [1, configNull]);

if (_cfgType == "CfgGlasses") exitWith {0};

private _config = configFile >> _cfgType >> _item;
private _type = getNumber (_config >> "type");
private _simulation = getText (_config >> "simulation");

if (isNumber (_config >> "ItemInfo" >> "type")) then {
    _type = getNumber (_config >> "ItemInfo" >> "type");
};

switch (true) do {
    case (_type == 0): {[_default, "unknown"]};
    case (_type == _TYPE_WEAPON_PRIMARY): {3};
    case (_type == _TYPE_WEAPON_HANDGUN): {3};
    case (_type == _TYPE_WEAPON_SECONDARY): {3};
    case (_item in _GRENADE_LIST): {1};
    case (_type == _TYPE_MAGAZINE_HANDGUN_AND_GL): {[1, 0] # _mode}; // handgun
    case (_type == _TYPE_MAGAZINE_PRIMARY_AND_THROW): {[1, 0] # _mode}; // rifle
    case (_type == _TYPE_MAGAZINE_SECONDARY_AND_PUT): {[1, 0] # _mode}; // rpg, mg, mines
    //case (_type  < 2^11): {["magazine", "unknown"]};

    case (_item in _ACE_MEDICAL) : {2};
    case (_type == _TYPE_MUZZLE): {[0, 3] # _mode};
    case (_type == _TYPE_OPTICS): {[0, 3] # _mode};
    case (_type == _TYPE_FLASHLIGHT): {[0, 3] # _mode};
    case (_type == _TYPE_BIPOD): {[0, 3] # _mode};
    case (_type == _TYPE_FIRST_AID_KIT): {2};
    case (_type == _TYPE_GOGGLE): {3};
    case (_type == _TYPE_HEADGEAR): {3};
    case (_type == _TYPE_RADIO): {3};
    case (_type == _TYPE_HMD): {3};
    case (_type == _TYPE_BINOCULAR): {3};
    case (_type == _TYPE_MEDIKIT): {2};
    case (_type == _TYPE_TOOLKIT): {3};
    case (_type == _TYPE_UAV_TERMINAL): {3};
    case (_type == _TYPE_VEST): {3};
    case (_type == _TYPE_UNIFORM): {3};

    case (_type == _TYPE_BINOCULAR_AND_NVG): {
        switch (toLower _simulation) do {
            case ("weapon"): {3};
            case ("binocular"): {3};
            case ("nvgoggles"): {3};
            case ("itemminedetector"): {3};
            default {3};
        };
    };

    case (_type == _TYPE_WEAPON_VEHICLE): {["weapon", "vehicle"]};
    case (_type == _TYPE_ITEM): {
        switch (toLower _simulation) do {
            case ("itemmap"): {3};
            case ("itemgps"): {3};
            case ("itemradio"): {3};
            case ("itemcompass"): {3};
            case ("itemwatch"): {3};
            default {3};
        };
    };
    default {3};
};
