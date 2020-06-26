/* #main
$[
1.063,
["",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
[2200,"cav_admin_menu_main_background",[1,"",["0.297371 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.0704798 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1800,"cav_admin_menu_main_frame",[1,"",["0.297371 * safezoneW + safezoneX","0.283766 * safezoneH + safezoneY","0.0704798 * safezoneW","0.470074 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1000,"cav_admin_menu_main_text_header",[1,"5th Cav Admin Menu",["0.297371 * safezoneW + safezoneX","0.24616 * safezoneH + safezoneY","0.405259 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1606,"cav_admin_menu_main_button_commands",[1,"Commands",["0.306181 * safezoneW + safezoneX","0.302569 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1601,"cav_admin_menu_main_button_console",[1,"Console",["0.306181 * safezoneW + safezoneX","0.358978 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1605,"cav_admin_menu_main_button_debug",[1,"Debug",["0.306181 * safezoneW + safezoneX","0.415387 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1604,"cav_admin_menu_main_button_functions",[1,"Functions",["0.306181 * safezoneW + safezoneX","0.471796 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1602,"cav_admin_menu_main_button_loadout",[1,"Loadout Viewer",["0.306181 * safezoneW + safezoneX","0.528204 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1600,"cav_admin_menu_main_button_respawn",[1,"Respawn",["0.306181 * safezoneW + safezoneX","0.584613 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1603,"cav_admin_menu_main_button_specPort",[1,"Spectate | TP",["0.306181 * safezoneW + safezoneX","0.641022 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
[1607,"cav_admin_menu_main_button_placeholder1",[1,"Placeholder1",["0.306181 * safezoneW + safezoneX","0.697431 * safezoneH + safezoneY","0.0528598 * safezoneW","0.0376059 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/


class GVAR(main)
{
    idd = -1; //http://rumkin.com/tools/cipher/numbers.php
    movingEnable = true;
    // onLoad = QUOTE(uiNamespace setVariable [QGVAR(currentDisplay), (_this select 0)];);
    onLoad = QUOTE(SETUVAR(QGVAR(currentDisplay),(_this select 0)););
    controlsBackground[] =
    {
        GVAR(main_background),
        GVAR(main_frame)
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
        GVAR(main_button_placeholder1)
    };

    class GVAR(main_background): IGUIBack
    {
        idc = 2200;
        x = 0.297371 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(main_frame): RscFrame
    {
        idc = 1800;
        x = 0.297371 * safezoneW + safezoneX;
        y = 0.283766 * safezoneH + safezoneY;
        w = 0.0704798 * safezoneW;
        h = 0.470074 * safezoneH;
    };
    class GVAR(main_text_header): cav_admin_menu_gui_title
    {
        idc = 1000;
        text = "5th Cav Admin Menu"; //--- ToDo: Localize;
        x = 0.297371 * safezoneW + safezoneX;
        y = 0.24616 * safezoneH + safezoneY;
        w = 0.405259 * safezoneW;
        h = 0.0376059 * safezoneH;
    };
    class GVAR(main_button_commands): RscButton
    {
        idc = 1606;
        text = "Commands"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.302569 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(commands))] call FUNC(openMenu););
    };
    class GVAR(main_button_console): RscButton
    {
        idc = 1601;
        text = "Console"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.358978 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(console))] call FUNC(openMenu););
    };
    class GVAR(main_button_debug): RscButton
    {
        idc = 1605;
        text = "Debug"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.415387 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(debug))] call FUNC(openMenu););
    };
    class GVAR(main_button_functions): RscButton
    {
        idc = 1604;
        text = "Functions"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.471796 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(functions))] call FUNC(openMenu););
    };
    class GVAR(main_button_loadout): RscButton
    {
        idc = 1602;
        text = "Loadout Viewer"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.528204 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(loadoutViewer))] call FUNC(openMenu););
    };
    class GVAR(main_button_respawn): RscButton
    {
        idc = 1600;
        text = "Respawn"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.584613 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(respawn))] call FUNC(openMenu););
    };
    class GVAR(main_button_specPort): RscButton
    {
        idc = 1603;
        text = "Spectate | TP"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.641022 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(specPort))] call FUNC(openMenu););
    };
    class GVAR(main_button_placeholder1): RscButton
    {
        idc = 1607;
        text = "Placeholder1"; //--- ToDo: Localize;
        x = 0.306181 * safezoneW + safezoneX;
        y = 0.697431 * safezoneH + safezoneY;
        w = 0.0528598 * safezoneW;
        h = 0.0376059 * safezoneH;
        onButtonClick = QUOTE([QUOTE(QGVAR(test))] call FUNC(openMenu););
    };
};
