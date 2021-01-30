/* #Jyfyqa
$[
	1.063,
	["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2200,"cav_admin_menu_logs_background",[1,"",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1801,"cav_admin_menu_logs_frame_border",[1,"logs",["0.37666 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.325969 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"cav_admin_menu_logs_listbox_players",[1,"",["0.38547 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.229059 * safezoneW","0.432468 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1609,"cav_admin_menu_logs_button_placeholder2",[1,"Placeholder2",["0.62334 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1610,"cav_admin_menu_logs_button_placeholder4",[1,"Placeholder4",["0.62334 * safezoneW + safezoneX","0.358978 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1617,"cav_admin_menu_logs_button_placeholder6",[1,"Placeholder6",["0.62334 * safezoneW + safezoneX","0.415387 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1608,"cav_admin_menu_logs_button_placeholder8",[1,"Placeholder8",["0.62334 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1623,"cav_admin_menu_logs_button_placeholder10",[1,"Placeholder10",["0.62334 * safezoneW + safezoneX","0.528204 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1613,"cav_admin_menu_logs_button_placeholder12",[1,"Placeholder12",["0.62334 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1619,"cav_admin_menu_logs_button_placeholder14",[1,"Placeholder14",["0.62334 * safezoneW + safezoneX","0.641022 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1615,"cav_admin_menu_logs_button_placeholder16",[1,"Placeholder16",["0.62334 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0704798 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class GVAR(logs):GVAR(main)
{
    idd = -1;
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););

    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame),
        GVAR(logs_background),
        GVAR(logs_frame_border)
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
        GVAR(logs_listbox_players),
        GVAR(logs_button_placeholder1),
        GVAR(logs_button_placeholder2),
        GVAR(logs_button_placeholder3),
        GVAR(logs_button_placeholder4),
        GVAR(logs_button_placeholder5),
        GVAR(logs_button_placeholder6),
        GVAR(logs_button_placeholder7),
        GVAR(logs_button_placeholder8)
    };

    class GVAR(logs_background): IGUIBack
    {
    	idc = 2200;
    	x = 0.37666 * safezoneW + safezoneX;
    	y = 0.283766 * safezoneH + safezoneY;
    	w = 0.325969 * safezoneW;
    	h = 0.470074 * safezoneH;
    };
    class GVAR(logs_frame_border): RscFrame
    {
    	idc = 1801;
    	text = "logs"; //--- ToDo: Localize;
    	x = 0.37666 * safezoneW + safezoneX;
    	y = 0.283766 * safezoneH + safezoneY;
    	w = 0.325969 * safezoneW;
    	h = 0.470074 * safezoneH;
    };
    class GVAR(logs_listbox_players): RscListbox
    {
    	idc = 1500;
    	x = 0.38547 * safezoneW + safezoneX;
    	y = 0.302569 * safezoneH + safezoneY;
    	w = 0.229059 * safezoneW;
    	h = 0.432468 * safezoneH;
        onLoad = QUOTE([ARR_2(_this, 1500)] call FUNC(killList););
    };
    class GVAR(logs_button_placeholder1): RscButton
    {
    	idc = 1609;
    	text = "All Players Killed"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.302569 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this, 1500)] call FUNC(killList););
    };
    class GVAR(logs_button_placeholder2): RscButton
    {
    	idc = 1610;
    	text = "Team Kills"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.358978 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this, 1500)] call FUNC(tkList););
    };
    class GVAR(logs_button_placeholder3): RscButton
    {
    	idc = 1617;
    	text = "Grenade Log"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.415387 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([ARR_2(_this, 1500)] call FUNC(nadeList););
    };
    class GVAR(logs_button_placeholder4): RscButton
    {
    	idc = 1608;
    	text = "Safe Start Vio."; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.471796 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
        //onButtonClick = QUOTE([ARR_2(_this, 1500)] call FUNC(safeStartList););
    };
    class GVAR(logs_button_placeholder5): RscButton
    {
    	idc = 1623;
    	text = "Placeholder5"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.528204 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
    };
    class GVAR(logs_button_placeholder6): RscButton
    {
    	idc = 1613;
    	text = "Placeholder6"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.584613 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
    };
    class GVAR(logs_button_placeholder7): RscButton
    {
    	idc = 1619;
    	text = "Placeholder7"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.641022 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
    };
    class GVAR(logs_button_placeholder8): RscButton
    {
    	idc = 1615;
    	text = "Placeholder8"; //--- ToDo: Localize;
    	x = 0.62334 * safezoneW + safezoneX;
    	y = 0.697431 * safezoneH + safezoneY;
    	w = 0.0704798 * safezoneW;
    	h = 0.0376059 * safezoneH;
    };
};
