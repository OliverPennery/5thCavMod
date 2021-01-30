/* #Metaxe
$[
    1.063,
    ["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
    [2200,"cav_admin_menu_loadoutViewer_background",[1,"",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1801,"cav_admin_menu_loadoutViewer_frame_border",[1,"Loadout Viewer",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1800,"cav_admin_menu_loadoutViewer_frame_players",[1,"Players",["0.38547 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.101315 * safezoneW","0.432468 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1500,"cav_admin_menu_loadoutViewer_list_players",[1,"",["0.38547 * safezoneW + safezoneX","0.311971 * safezoneH + safezoneY","0.101315 * safezoneW","0.423066 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1802,"cav_admin_menu_loadoutViewer_frame_loadouts",[1,"Player Loadout",["0.49119 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.202629 * safezoneW","0.432468 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1501,"cav_admin_menu_loadoutViewer_list_loadout",[1,"",["0.49119 * safezoneW + safezoneX","0.311971 * safezoneH + safezoneY","0.202629 * safezoneW","0.423066 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/



class GVAR(loadoutViewer):GVAR(main)
{
    idd = -1;
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););

    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame),
        GVAR(loadoutViewer_background),
        GVAR(loadoutViewer_frame_border)
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
        GVAR(loadoutViewer_frame_players),
        GVAR(loadoutViewer_list_players),
        GVAR(loadoutViewer_frame_loadouts),
        GVAR(loadoutViewer_list_loadout)
    };

    class GVAR(loadoutViewer_background): IGUIBack
    {
        idc = 2200;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(loadoutViewer_frame_border): RscFrame
    {
        idc = 1801;
        text = "Loadout Viewer"; //--- ToDo: Localize;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(loadoutViewer_frame_players): RscFrame
    {
        idc = 1800;
        text = "Players"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.302569 * safezoneH + safezoneY;
        w = 0.101315 * safezoneW;
        h = 0.432468 * safezoneH;
    };
    class GVAR(loadoutViewer_list_players): RscListbox
    {
        idc = 1500;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.311971 * safezoneH + safezoneY;
        w = 0.101315 * safezoneW;
        h = 0.423066 * safezoneH;
        onLoad = QUOTE(_this call FUNC(loadoutPlayerList););
    };
    class GVAR(loadoutViewer_frame_loadouts): RscFrame
    {
        idc = 1802;
        text = "Player Loadout"; //--- ToDo: Localize;
        x = 0.49119 * safezoneW + safezoneX;
        y = 0.302569 * safezoneH + safezoneY;
        w = 0.202629 * safezoneW;
        h = 0.432468 * safezoneH;
    };
    class GVAR(loadoutViewer_list_loadout): _CT_Tree
    {
        idc = 1501;
        x = 0.49119 * safezoneW + safezoneX;
        y = 0.311971 * safezoneH + safezoneY;
        w = 0.202629 * safezoneW;
        h = 0.423066 * safezoneH;
        onLoad = QUOTE([ARR_2(_this, 1500)] call FUNC(playersLoadoutList););
    };
};
