/* #Respawn
$[
1.063,
["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
[2200,"cav_admin_menu_respawn_background",[1,"",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.317159 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1801,"cav_admin_menu_respawn_frame_border",[1,"Respawn",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.317159 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1800,"cav_admin_menu_respawn_frame_selectedPlayers",[1,"Players",["0.381065 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.308349 * safezoneW","0.347854 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1500,"cav_admin_menu_respawn_listbox_players",[1,"",["0.38547 * safezoneW + safezoneX","0.321372 * safezoneH + safezoneY","0.215844 * safezoneW","0.31965 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
[1608,"cav_admin_menu_respawn_button_addTicket",[1,"Add Ticket",["0.610125 * safezoneW + safezoneX","0.321372 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1609,"cav_admin_menu_respawn_button_selected_removeTicket",[1,"Remove Ticket",["0.610125 * safezoneW + safezoneX","0.377781 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1617,"cav_admin_menu_respawn_button_selected_setRespawnTime",[1,"Set Respawn Time",["0.610125 * safezoneW + safezoneX","0.43419 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1400,"cav_admin_menu_respawn_edit_selected_respawnTime",[1,"",["0.610125 * safezoneW + safezoneX","0.490598 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1611,"cav_admin_menu_respawn_button_selected_forceDeploy",[1,"Force Deploy",["0.610125 * safezoneW + safezoneX","0.547007 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1610,"cav_admin_menu_respawn_button_selected_forceRespawn",[1,"Force Respawn",["0.610125 * safezoneW + safezoneX","0.603416 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1802,"cav_admin_menu_respawn_frame_debug",[1,"Debug",["0.381065 * safezoneW + safezoneX","0.678628 * safezoneH + safezoneY","0.308349 * safezoneW","0.0658103 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1501,"cav_admin_menu_respawn_listbox_debug_vars",[1,"",["0.38547 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.215844 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1616,"cav_admin_menu_respawn_button_debug_deployMedVic",[1,"Deploy MedVic",["0.610125 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class GVAR(respawn):GVAR(main)
{
    idd = 31221;
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););

    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame),
        GVAR(respawn_background),
        GVAR(respawn_frame_border)
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
        GVAR(respawn_frame_selectedPlayers),
        GVAR(respawn_listbox_players),
        GVAR(respawn_button_addTicket),
        GVAR(respawn_button_selected_removeTicket),
        GVAR(respawn_button_selected_setRespawnTime),
        GVAR(respawn_edit_selected_respawnTime),
        GVAR(respawn_button_selected_forceDeploy),
        GVAR(respawn_button_selected_forceRespawn),
        GVAR(respawn_frame_debug),
        GVAR(respawn_listbox_debug_vars),
        GVAR(respawn_button_debug_deployMedVic)

    };
    class GVAR(respawn_background): IGUIBack
    {
        idc = 2200;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.317159 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(respawn_frame_border): RscFrame
    {
        idc = 1801;
        text = "Respawn"; //--- ToDo: Localize;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.317159 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(respawn_frame_selectedPlayers): RscFrame
    {
        idc = 1800;
        text = "Players"; //--- ToDo: Localize;
        x = 0.381065 * safezoneW + safezoneX;
        y = 0.302569 * safezoneH + safezoneY;
        w = 0.308349 * safezoneW;
        h = 0.347854 * safezoneH;
    };
    class GVAR(respawn_listbox_players): RscListbox
    {
        idc = 1500;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.321372 * safezoneH + safezoneY;
        w = 0.215844 * safezoneW;
        h = 0.31965 * safezoneH;
        onLoad = QUOTE(_this call FUNC(respawnPlayerList););
    };
    class GVAR(respawn_button_addTicket): RscButton
    {
        idc = 1608;
        text = "Add Ticket"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.321372 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_3(_this, 1500, 1)] call FUNC(setTicket););
    };
    class GVAR(respawn_button_selected_removeTicket): RscButton
    {
        idc = 1609;
        text = "Remove Ticket"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.377781 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_3(_this, 1500, -1)] call FUNC(setTicket););
    };
    class GVAR(respawn_button_selected_setRespawnTime): RscButton
    {
        idc = 1617;
        text = "Set Respawn Time"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.43419 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_3(_this, 1500, 1400)] call FUNC(setRespawnTime););
    };
    class GVAR(respawn_edit_selected_respawnTime): RscEdit
    {
        idc = 1400;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.490598 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(respawn_button_selected_forceDeploy): RscButton
    {
        idc = 1611;
        text = "Force Deploy"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.547007 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this, 1500)] call FUNC(setRespawnTime););
    };
    class GVAR(respawn_button_selected_forceRespawn): RscButton
    {
        idc = 1610;
        text = "Force Respawn"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.603416 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this # 0, 1500)] call FUNC(forceRespawn););
    };
    class GVAR(respawn_frame_debug): RscFrame
    {
        idc = 1802;
        text = "Debug"; //--- ToDo: Localize;
        x = 0.381065 * safezoneW + safezoneX;
        y = 0.678628 * safezoneH + safezoneY;
        w = 0.308349 * safezoneW;
        h = 0.0658103 * safezoneH;
    };
    class GVAR(respawn_listbox_debug_vars): RscListbox
    {
        idc = 1501;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.215844 * safezoneW;
        h = 0.0376059 * safezoneH;
        onLoad = QUOTE([ARR_1(_this)] call FUNC(medVicStatus););
    };
    class GVAR(respawn_button_debug_deployMedVic): RscButton
    {
        idc = 1616;
        text = "Deploy MedVic"; //--- ToDo: Localize;
        x = 0.610125 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_1(_this)] call FUNC(toggleMedVic););
    };
};
