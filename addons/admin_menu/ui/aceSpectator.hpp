class GVAR(aceSpectator_button_openMenu): GVAR(gui_button)
{
    idc = 312206;
    text = "Admin Menu"; //--- ToDo: Localize;
    x = 0.354635 * safezoneW + safezoneX;
    y = 0.00172197 * safezoneH + safezoneY;
    w = 0.0528598 * safezoneW;
    h = 0.0188029 * safezoneH;
    action = QUOTE([QUOTE(QGVAR(main))] call FUNC(openMenu););
};
