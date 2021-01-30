/* #console
$[
    1.063,
    ["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
    [2200,"cav_admin_menu_console_background",[1,"",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1801,"cav_admin_menu_console_frame_border",[1,"Console",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1400,"cav_admin_menu_console_edit_entry",[1,"",["0.38547 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.308349 * safezoneW","0.338453 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1001,"cav_admin_menu_console_text_output",[1,"",["0.38547 * safezoneW + safezoneX","0.641022 * safezoneH + safezoneY","0.308349 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1608,"cav_admin_menu_console_button_global",[1,"Global Exec",["0.38547 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1610,"cav_admin_menu_console_button_server",[1,"Server Exec",["0.44714 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1611,"cav_admin_menu_console_button_local",[1,"Local Exec",["0.50881 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1612,"cav_admin_menu_console_button_player",[1,"Player Exec",["0.57048 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [2100,"cav_admin_menu_console_combo_players",[1,"",["0.63215 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.0616698 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1609,"cav_admin_menu_console_button_clear",[1,"Clear",["0.38547 * safezoneW + safezoneX","0.716234 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1615,"cav_admin_menu_console_button_load",[1,"Load File",["0.44714 * safezoneW + safezoneX","0.716234 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1614,"cav_admin_menu_console_button_save",[1,"Save Code",["0.50881 * safezoneW + safezoneX","0.716234 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1613,"cav_admin_menu_console_button_delete",[1,"Delete File",["0.57048 * safezoneW + safezoneX","0.716234 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [2101,"cav_admin_menu_console_combo_files",[1,"",["0.63215 * safezoneW + safezoneX","0.716234 * safezoneH + safezoneY","0.0616698 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]

]
*/

class GVAR(console):GVAR(main)
{
    idd = -1;
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););
    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame),
        GVAR(console_background),
        GVAR(console_frame_border)
    };

    controls[] =
    {
        GVAR(main_text_header),
        GVAR(main_button_commands),
        GVAR(main_button_console),
        GVAR(main_button_debug),
        GVAR(main_button_functions),
        GVAR(main_button_loadout),
        GVAR(main_button_respawn),
        GVAR(main_button_specPort),
        GVAR(main_button_logs),
        GVAR(console_edit_entry),
        GVAR(console_text_output),
        GVAR(console_button_global),
        GVAR(console_button_server),
        GVAR(console_button_local),
        GVAR(console_button_player),
        GVAR(console_combo_players),
        GVAR(console_button_clear),
        GVAR(console_button_load),
        GVAR(console_button_save),
        GVAR(console_button_delete),
        GVAR(console_combo_files)
    };

    class GVAR(console_background): IGUIBack
    {
        idc = 2200;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(console_frame_border): RscFrame
    {
        idc = 1801;
        text = "Console"; //--- ToDo: Localize;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(console_edit_entry): cav_admin_menu_gui_edit
    {
        idc = 1400;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.302569 * safezoneH + safezoneY;
        w = 0.308349 * safezoneW;
        h = 0.338453 * safezoneH;
    };
    class GVAR(console_text_output): RscText
    {
        idc = 1002;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.641022 * safezoneH + safezoneY;
        w = 0.308349 * safezoneW;
        h = 0.0188029 * safezoneH;
    };
    class GVAR(console_button_global): RscButton
    {
        idc = 1608;
        text = "Global Exec"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_4(_this, 1400, 0, 1002)] call FUNC(execute););
    };
    class GVAR(console_button_server): RscButton
    {
        idc = 1610;
        text = "Server Exec"; //--- ToDo: Localize;
        x = 0.44714 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_4(_this, 1400, 2, 1002)] call FUNC(execute););
    };
    class GVAR(console_button_local): RscButton
    {
        idc = 1611;
        text = "Local Exec"; //--- ToDo: Localize;
        x = 0.50881 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_4(_this, 1400, Player, 1002)] call FUNC(execute););
    };
    class GVAR(console_button_player): RscButton
    {
        idc = 1612;
        text = "Player Exec"; //--- ToDo: Localize;
        x = 0.57048 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_4(_this, 1400, 2100, 1002)] call FUNC(execute););
    };
    class GVAR(console_combo_players): RscCombo
    {
        idc = 2100;
        x = 0.63215 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.0616698 * safezoneW;
        h = 0.0188029 * safezoneH;
        onLoad = QUOTE(_this call FUNC(playerList););
    };
    class GVAR(console_button_clear): RscButton
    {
        idc = 1609;
        text = "Clear"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.716234 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE(((ctrlParent (_this)) displayCtrl 1400) ctrlSetText '' ;);
    };
    class GVAR(console_button_load): RscButton
    {
        idc = 1615;
        text = "Load File"; //--- ToDo: Localize;
        x = 0.44714 * safezoneW + safezoneX;
        y = 0.716234 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_3(_this, 2101, 1400)] call FUNC(loadCode););
    };
    class GVAR(console_button_save): RscButton
    {
        idc = 1614;
        text = "Save Code"; //--- ToDo: Localize;
        x = 0.50881 * safezoneW + safezoneX;
        y = 0.716234 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE(_this call FUNC(openSaveBox););
    };
    class GVAR(console_button_delete): RscButton
    {
        idc = 1613;
        text = "Delete File"; //--- ToDo: Localize;
        x = 0.57048 * safezoneW + safezoneX;
        y = 0.716234 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this, 2101)] call FUNC(deleteFile););
    };
    class GVAR(console_combo_files): RscCombo
    {
        idc = 2101;
        x = 0.63215 * safezoneW + safezoneX;
        y = 0.716234 * safezoneH + safezoneY;
        w = 0.0616698 * safezoneW;
        h = 0.0188029 * safezoneH;
        onLoad = QUOTE(_this call FUNC(loadFiles););
    };
};

/* #saveBox
$[
    1.063,
    ["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
    [2200,"cav_admin_menu_console_saveBox_frame_border",[1,"",["0.42952 * safezoneW + safezoneX","0.443591 * safezoneH + safezoneY","0.14096 * safezoneW","0.0940147 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1400,"cav_admin_menu_console_saveBox_edit_fileName",[1,"",["0.43833 * safezoneW + safezoneX","0.452993 * safezoneH + safezoneY","0.12334 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1600,"cav_admin_menu_console_saveBox_button_cancel",[1,"Cancel",["0.43833 * safezoneW + safezoneX","0.509401 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1601,"cav_admin_menu_console_saveBox_button_save",[1,"Save",["0.50881 * safezoneW + safezoneX","0.509401 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0188029 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/
//
// class cav_admin_menu_console_saveBox
// {
//     idd = 312231;
//     movingEnable = true;
//     controlsBackground[] = {cav_admin_menu_console_saveBox_frame_border};
//
//     controls[] =
//     {
//         cav_admin_menu_console_saveBox_edit_fileName,
//         cav_admin_menu_console_saveBox_button_cancel,
//         cav_admin_menu_console_saveBox_button_save
//     };

    class GVAR(console_saveBox_frame_border): IGUIBack
    {
        idc = 312220;
        x = 0.42952 * safezoneW + safezoneX;
        y = 0.443591 * safezoneH + safezoneY;
        w = 0.14096 * safezoneW;
        h = 0.0940147 * safezoneH;
    };
    class GVAR(console_saveBox_edit_fileName): RscEdit
    {
        idc = 1402;
        x = 0.43833 * safezoneW + safezoneX;
        y = 0.452993 * safezoneH + safezoneY;
        w = 0.12334 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(console_saveBox_button_cancel): RscButton
    {
        idc = 312221;
        text = "Cancel"; //--- ToDo: Localize;
        x = 0.43833 * safezoneW + safezoneX;
        y = 0.509401 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE(_this call FUNC(closeSaveBox););
    };
    class GVAR(console_saveBox_button_save): RscButton
    {
        idc = 1601;
        text = "Save"; //--- ToDo: Localize;
        x = 0.50881 * safezoneW + safezoneX;
        y = 0.509401 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0188029 * safezoneH;
        onButtonClick = QUOTE([ARR_3(_this, 1400, 1402)] call FUNC(saveCode););
    };
// };
