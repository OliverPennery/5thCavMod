/* #commands
$[
    1.063,
    ["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
    [2200,"cav_admin_menu_commands_background",[1,"",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1801,"cav_admin_menu_commands_frame_border",[1,"Commands",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1803,"cav_admin_menu_commands_frame_player",[1,"Player",["0.381065 * safezoneW + safezoneX","0.311971 * safezoneH + safezoneY","0.317159 * safezoneW","0.122219 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1802,"cav_admin_menu_commands_frame_server",[1,"Server",["0.381065 * safezoneW + safezoneX","0.452993 * safezoneH + safezoneY","0.317159 * safezoneW","0.291446 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1500,"cav_admin_menu_commands_listbox_player_players",[1,"",["0.38547 * safezoneW + safezoneX","0.330773 * safezoneH + safezoneY","0.229059 * safezoneW","0.0940147 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1618,"cav_admin_menu_commands_button_player_kick",[1,"Kick",["0.62334 * safezoneW + safezoneX","0.330773 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1619,"cav_admin_menu_commands_button_player_ban",[1,"Ban",["0.62334 * safezoneW + safezoneX","0.387182 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1621,"cav_admin_menu_commands_button_server_debugOff",[1,"Debug off",["0.38547 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"https://community.bistudio.com/wiki/Multiplayer_Server_Commands","-1"],[]],
    [1614,"cav_admin_menu_commands_button_server_unlock",[1,"Unlock",["0.46476 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Unlocks the server, allows new clients to join","-1"],[]],
    [1615,"cav_admin_menu_commands_button_server_lock",[1,"Lock",["0.54405 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Locks the server, prevents new clients from joining","-1"],[]],
    [1622,"cav_admin_menu_commands_button_server_placeholder1",[1,"placeholder1",["0.62334 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1620,"cav_admin_menu_commands_button_server_debug",[1,"Debug",["0.38547 * safezoneW + safezoneX","0.528204 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"https://community.bistudio.com/wiki/Multiplayer_Server_Commands","-1"],[]],
    [1401,"cav_admin_menu_commands_edit_server_debug",[1,"",["0.46476 * safezoneW + safezoneX","0.528204 * safezoneH + safezoneY","0.229059 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1608,"cav_admin_menu_commands_button_server_reassign",[1,"Reassign",["0.38547 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Start over and reassign roles","-1"],[]],
    [1612,"cav_admin_menu_commands_button_server_restart",[1,"Restart",["0.46476 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Restart mission","-1"],[]],
    [1613,"cav_admin_menu_commands_button_server_monitor",[1,"Monitor",["0.54405 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Shows performance information of the server. Interval 0 means to stop monitoring","-1"],[]],
    [1402,"cav_admin_menu_commands_edit_server_monitor",[1,"",["0.62334 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1610,"cav_admin_menu_commands_button_server_mission",[1,"Mission",["0.38547 * safezoneW + safezoneX","0.641022 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Select mission with known name","-1"],[]],
    [1400,"cav_admin_menu_commands_edit_server_mission",[1,"",["0.46476 * safezoneW + safezoneX","0.641022 * safezoneH + safezoneY","0.229059 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
    [1609,"cav_admin_menu_commands_button_server_missions",[1,"Missions",["0.38547 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Select mission","-1"],[]],
    [1616,"cav_admin_menu_commands_button_server_init",[1,"Init",["0.46476 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Reload server config file loaded by -config option","-1"],[]],
    [1617,"cav_admin_menu_commands_button_server_restartServer",[1,"Restart Server",["0.54405 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Shuts down and restarts the server immediately","-1"],[]],
    [1611,"cav_admin_menu_commands_button_server_shutdown",[1,"Shutdown",["0.62334 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Shuts down the server immediately","-1"],[]]
]
*/

class GVAR(commands):GVAR(main)
{
    idd = -1;
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););
    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame),
        GVAR(commands_background),
        GVAR(commands_frame_border)
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
        GVAR(commands_frame_player),
        GVAR(commands_listbox_player_players),
        GVAR(commands_button_player_kick),
        GVAR(commands_button_player_ban),
        GVAR(commands_frame_server),
        GVAR(commands_button_server_debugOff),
        GVAR(commands_button_server_unlock),
        GVAR(commands_button_server_lock),
        GVAR(commands_button_server_placeholder1),
        GVAR(commands_button_server_debug),
        GVAR(commands_edit_server_debug),
        GVAR(commands_button_server_reassign),
        GVAR(commands_button_server_restart),
        GVAR(commands_button_server_monitor),
        GVAR(commands_edit_server_monitor),
        GVAR(commands_button_server_mission),
        GVAR(commands_edit_server_mission),
        GVAR(commands_button_server_missions),
        GVAR(commands_button_server_init),
        GVAR(commands_button_server_restartServer),
        GVAR(commands_button_server_shutdown)
    };

    class GVAR(commands_background): IGUIBack
    {
        idc = 2200;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(commands_frame_border): RscFrame
    {
        idc = 1801;
        text = "Commands"; //--- ToDo: Localize;
        x = 0.37666 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.325969 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(commands_frame_player): RscFrame
    {
        idc = 1803;
        text = "Player"; //--- ToDo: Localize;
        x = 0.381065 * safezoneW + safezoneX;
        y = 0.311971 * safezoneH + safezoneY;
        w = 0.317159 * safezoneW;
        h = 0.122219 * safezoneH;
    };
    class GVAR(commands_listbox_player_players): RscListbox
    {
        idc = 1500;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.330773 * safezoneH + safezoneY;
        w = 0.229059 * safezoneW;
        h = 0.0940147 * safezoneH;
        onLoad = QUOTE(_this call FUNC(commandPlayerList););
    };
    class GVAR(commands_button_player_kick): RscButton
    {
        idc = 1618;
        text = "Kick"; //--- ToDo: Localize;
        x = 0.62334 * safezoneW + safezoneX;
        y = 0.330773 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onLoad = QUOTE(_this call FUNC(commandKick););
    };
    class GVAR(commands_button_player_ban): RscButton
    {
        idc = 1619;
        text = "Ban"; //--- ToDo: Localize;
        x = 0.62334 * safezoneW + safezoneX;
        y = 0.387182 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        onLoad = QUOTE(_this call FUNC(commandBan););
    };
    class GVAR(commands_frame_server): RscFrame
    {
        idc = 1802;
        text = "Server"; //--- ToDo: Localize;
        x = 0.381065 * safezoneW + safezoneX;
        y = 0.452993 * safezoneH + safezoneY;
        w = 0.317159 * safezoneW;
        h = 0.291446 * safezoneH;
    };
    class GVAR(commands_button_server_debugOff): RscButton
    {
        idc = 1621;
        text = "Debug off"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.471796 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "https://community.bistudio.com/wiki/Multiplayer_Server_Commands"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandDebugOff););
    };
    class GVAR(commands_button_server_unlock): RscButton
    {
        idc = 1614;
        text = "Unlock"; //--- ToDo: Localize;
        x = 0.46476 * safezoneW + safezoneX;
        y = 0.471796 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Unlocks the server, allows new clients to join"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandUnlock););
    };
    class GVAR(commands_button_server_lock): RscButton
    {
        idc = 1615;
        text = "Lock"; //--- ToDo: Localize;
        x = 0.54405 * safezoneW + safezoneX;
        y = 0.471796 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Locks the server, prevents new clients from joining"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandLock););
    };
    class GVAR(commands_button_server_placeholder1): RscButton
    {
        idc = 1622;
        text = "User List"; //--- ToDo: Localize;
        x = 0.62334 * safezoneW + safezoneX;
        y = 0.471796 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Displays the list of users on the server"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandUserList););
    };
    class GVAR(commands_button_server_debug): RscButton
    {
        idc = 1620;
        text = "Debug"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.528204 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "https://community.bistudio.com/wiki/Multiplayer_Server_Commands"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandDebug););
    };
    class GVAR(commands_edit_server_debug): RscEdit
    {
        idc = 1401;
        x = 0.46476 * safezoneW + safezoneX;
        y = 0.528204 * safezoneH + safezoneY;
        w = 0.229059 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(commands_button_server_reassign): RscButton
    {
        idc = 1608;
        text = "Reassign"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.584613 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Start over and reassign roles"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandReassign););
    };
    class GVAR(commands_button_server_restart): RscButton
    {
        idc = 1612;
        text = "Restart"; //--- ToDo: Localize;
        x = 0.46476 * safezoneW + safezoneX;
        y = 0.584613 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Restart mission"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandRestart););
    };
    class GVAR(commands_button_server_monitor): RscButton
    {
        idc = 1613;
        text = "Monitor"; //--- ToDo: Localize;
        x = 0.54405 * safezoneW + safezoneX;
        y = 0.584613 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Shows performance information of the server. Interval 0 means to stop monitoring"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandMonitor););
    };
    class GVAR(commands_edit_server_monitor): RscEdit
    {
        idc = 1402;
        x = 0.62334 * safezoneW + safezoneX;
        y = 0.584613 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(commands_button_server_mission): RscButton
    {
        idc = 1610;
        text = "Mission"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.641022 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Select mission with known name"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandMission););
    };
    class GVAR(commands_edit_server_mission): RscEdit
    {
        idc = 1400;
        x = 0.46476 * safezoneW + safezoneX;
        y = 0.641022 * safezoneH + safezoneY;
        w = 0.229059 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(commands_button_server_missions): RscButton
    {
        idc = 1609;
        text = "Missions"; //--- ToDo: Localize;
        x = 0.38547 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Select mission"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandMissions););
    };
    class GVAR(commands_button_server_init): RscButton
    {
        idc = 1616;
        text = "Init"; //--- ToDo: Localize;
        x = 0.46476 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Reload server config file loaded by -config option"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandInit););
    };
    class GVAR(commands_button_server_restartServer): RscButton
    {
        idc = 1617;
        text = "Restart Server"; //--- ToDo: Localize;
        x = 0.54405 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Shuts down and restarts the server immediately"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandRestartServer););
    };
    class GVAR(commands_button_server_shutdown): RscButton
    {
        idc = 1611;
        text = "Shutdown"; //--- ToDo: Localize;
        x = 0.62334 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.0376059 * safezoneH;
        tooltip = "Shuts down the server immediately"; //--- ToDo: Localize;
        onLoad = QUOTE(_this call FUNC(commandShutdown););
    };
};
