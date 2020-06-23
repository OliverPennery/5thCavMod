/* GUI Editor with Custom Grid Defintions (ctrl+g) for macros (need to add 3.5 to X_PART() in control groups for some reason)
$[
	1.063,
	["mission_helper",[["(safeZoneX + (safeZoneW - ((safeZoneW / safeZoneH) min 1.2)) / 2)","(safeZoneY + (safeZoneH - (((safeZoneW / safeZoneH) min 1.2)/1.2)) / 2)","((safeZoneW / safeZoneH) min 1.2)","(((safeZoneW / safeZoneH) min 1.2)/1.2)"],"(((safeZoneW / safeZoneH) min 1.2)/40)","(((((safeZoneW / safeZoneH) min 1.2) / 1.2))/25)","GUI_GRID"],0,0,0],
	[2200,"",[2,"",["-15 * GUI_GRID_W + GUI_GRID_X","-6 * GUI_GRID_H + GUI_GRID_Y","70 * GUI_GRID_W","37 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1200,"",[2,"#(argb,8,8,3)color(1,1,1,1)",["-14.5 * GUI_GRID_W + GUI_GRID_X","-5.5 * GUI_GRID_H + GUI_GRID_Y","50 * GUI_GRID_W","24.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1800,"",[2301,"Selection Mode",["0 * GUI_GRID_W","0 * GUI_GRID_H","20 * GUI_GRID_W","4.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","0.75"],[]],
	[2301,"",[2,"",["-14.5 * GUI_GRID_W + GUI_GRID_X","19.5 * GUI_GRID_H + GUI_GRID_Y","20 * GUI_GRID_W","4.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1601,"",[2301,"New",["13.5 * GUI_GRID_W","1 * GUI_GRID_H","6 * GUI_GRID_W","3 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1602,"",[2301,"Group",["0.5 * GUI_GRID_W","1 * GUI_GRID_H","6 * GUI_GRID_W","3 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1603,"",[2301,"Unit",["7 * GUI_GRID_W","1 * GUI_GRID_H","6 * GUI_GRID_W","3 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2300,"",[2,"",["36 * GUI_GRID_W + GUI_GRID_X","-5.5 * GUI_GRID_H + GUI_GRID_Y","18.5 * GUI_GRID_W","36 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[2300,"",["0.5 * GUI_GRID_W","0.5 * GUI_GRID_H","17.5 * GUI_GRID_W","2.5 * GUI_GRID_H"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/
class RscControlsGroup;
class RscControlsGroupNoScrollbars;
class RscText;
class RscListbox;
class RscCombo;
class RscEdit;
class RscFrame;
class RscXSliderH;
class RscCheckBox;
class RscActiveText;
class RscActivePicture;
class RscMapControl;
class RscPicture;
class ctrlToolbox;
class RscButton;
class ScrollBar;
class ListScrollBar : ScrollBar {};

class GVAR(main) {
    idd = 33001;
    movingEnable = true;
    onLoad = QUOTE(call DFUNC(onLoad));
    onUnload = QUOTE(call DFUNC(onUnload));
    class controls {
        class GVAR(frame): RscText {
            moving = 1;
            idc = 33002;
            colorBackground[] = { 0.051, 0.051, 0.051, 0.6};

            x = X_PART(-15);
            y = Y_PART(-6);
            w = W_PART(70);
            h = H_PART(37);
        };

        class GVAR(selectionControlGroup): RscControlsGroupNoScrollbars {
            idc = 33004;
            x = X_PART(-14.5);
            y = Y_PART(19.5);
            w = W_PART(20.5);
            h = H_PART(4.5);

            class controls {
                class GVAR(background): RscFrame {
                    idc = 33041;
                    colorBackground[] = { 1, 1, 1, 0};
                    text = "Selection Mode";

                    x = X_PART(3.5);
                    y = Y_PART(0);
                    w = W_PART(20);
                    h = H_PART(4.5);
                };

                class GVAR(buttonGroup): RscButton {
                    idc = 33042;
                    text = "Group";
                    x = X_PART(4);
                    y = Y_PART(1);
                    w = W_PART(6);
                    h = H_PART(3);

                    action = QUOTE([ARR_2(""group"",true)] call DFUNC(selectionButtonClick););
                };

                class GVAR(buttonUnit): RscButton {
                    idc = 33043;
                    text = "Unit";
                    x = X_PART(10.5);
                    y = Y_PART(1);
                    w = W_PART(6);
                    h = H_PART(3);

                    action = QUOTE([ARR_2(""unit"",true)] call DFUNC(selectionButtonClick););
                };

                class GVAR(buttonNew): RscButton {
                    idc = 33044;
                    text = "New";
                    x = X_PART(17);
                    y = Y_PART(1);
                    w = W_PART(6);
                    h = H_PART(3);

                    action = QUOTE([ARR_2(""new"",true)] call DFUNC(selectionButtonClick););
                };
            };
        };

        class GVAR(mapBackground) : RscText {
            idc = -1;

            x = X_PART(-14.5);
            y = Y_PART(-5.5);
            w = W_PART(50);
            h = H_PART(24.5);

            colorBackground[] = { 1, 1, 1, 1};
            colorText[] = { 1, 1, 1, 0};
            text = "";
        };

        class GVAR(map): RscMapControl {
            idc = 33201;

            x = X_PART(-14.5);
            y = Y_PART(-5.5);
            w = W_PART(50);
            h = H_PART(24.5);

            text = "";
            onMouseButtonDown = QUOTE(_this call DFUNC(mouseDownMap););
            onMouseButtonUp = QUOTE(_this call DFUNC(mouseUpMap););
            onMouseButtonDblClick = QUOTE(_this call DFUNC(mouseDblClickMap););
            onMouseMoving = QUOTE(_this call DFUNC(mouseMovingMap););
        };

        class GVAR(sideMenuGroup): RscControlsGroup {
            idc = 33050;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {

            };
        };

        class GVAR(sideMenuGroupSelected): RscControlsGroup {
            idc = 33060;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {

            };
        };

        class GVAR(sideMenuUnit): RscControlsGroup {
            idc = 33070;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {

            };
        };

        class GVAR(sideMenuUnitSelected): RscControlsGroup {
            idc = 33080;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {

            };
        };

        class GVAR(sideMenuNewUnit): RscControlsGroup {
            idc = 33090;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {
                class GVAR(spawnPosBox): RscText {
                    idc = 33092;

                    x = X_PART(4);
                    y = Y_PART(0.5);
                    w = W_PART(17.5);
                    h = H_PART(2.5);

                    text = "";
                };
            };
        };

        class GVAR(sideMenuNewGroup): RscControlsGroup {
            idc = 33100;

            x = X_PART(36);
            y = Y_PART(-5.5);
            w = W_PART(18.5);
            h = H_PART(36);

            class controls {

            };
        };

        class GVAR(closeDialog): RscButton {
            idc = 33003;
            text = "Close";
            action = QUOTE(closeDialog 0;);

            x = X_PART(47);
            y = Y_PART(28);
            w = W_PART(7.5);
            h = H_PART(2.5);
        };
    };
};
