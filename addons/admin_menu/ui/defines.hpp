///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


class IGUIBack;
class RscFrame;
class RscText;
class RscButton;
class RscEdit;
class RscListBox;
class RscCombo;

///////////////////////////////////////////////////////////////////////////
/// Custom Classes
///////////////////////////////////////////////////////////////////////////


class cav_admin_menu_gui_background:IGUIBack
{
    colorbackground[] =	{0,0,0,0.6};
};

class cav_admin_menu_gui_frame:IGUIBack
{
    colorbackground[] =	{0,0,0,0.6};
};


class cav_admin_menu_gui_title:RscText
{
	colorBackground[] =
	{
		0.988,
		0.788,
		0.094,
		1
	};
	style = 2;
};


class cav_admin_menu_gui_button:RscButton
{
    colorBackground[] =
	{
		0.988,
		0.788,
		0.094,
		1
	};
};


class cav_admin_menu_gui_edit:RscEdit
{
    style = 16 + 512 + ST_LEFT;
    //colorbackground[] = {0,0,0,0.85};
};


class cav_admin_menu_gui_listbox:RscListBox
{
    style = ST_LEFT;
    colorbackground[] = {0,0,0,0.85};
};


class _CT_TREE
{
    access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
    idc = CT_TREE; // Control identification (without it, the control won't be displayed)
    idcSearch = 1337; //The ctrlEdit with this IDC will automatically be used as search input. Can be any unique number
    type = CT_TREE; // Type is 12
    style = ST_LEFT; // Style
    default = 0; // Control selected by default (only one within a display can be used)
    blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

    x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
    y = 3 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
    w = 10 * GUI_GRID_CENTER_W; // Width
    h = 3 * GUI_GRID_CENTER_H; // Height

    colorBorder[] = {0,0,0,1}; // Frame color

    colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
    colorSelect[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 0)
    colorMarked[] = {1,0.5,0,0.5}; // Marked item fill color (when multiselectEnabled is 1)
    colorMarkedSelected[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 1)

    // sizeEx = GUI_GRID_CENTER_H; // Text size
    // font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)"; // Text size
	font = "RobotoCondensed"; // Font from CfgFontFamilies
    shadow = 1; // Shadow (0 - none, 1 - N/A, 2 - black outline)
    colorText[] = {1,1,1,1}; // Text color
    colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
    colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)

    tooltip = "CT_TREE"; // Tooltip text
    tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
    tooltipColorText[] = {1,1,1,1}; // Tooltip text color
    tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

    multiselectEnabled = 1; // Allow selecting multiple items while holding Ctrl or Shift
    expandOnDoubleclick = 1; // Expand/collapse item upon double-click
    hiddenTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
    expandedTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon
    maxHistoryDelay = 1; // Time since last keyboard type search to reset it

    // Scrollbar configuration
    class ScrollBar
    {
    	width = 0; // width of ScrollBar
    	height = 0; // height of ScrollBar
    	scrollSpeed = 0.01; // scroll speed of ScrollBar

    	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
    	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
    	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
    	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

    	color[] = {1,1,1,1}; // Scrollbar color
    };

    colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
    colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

    colorPicture[] = {0,0,0,1};
	colorPictureSelected[] = {0,0,0,1};
	colorPictureDisabled[] = {1,1,1,0};
	colorPictureRight[] = {0,0,0,1};
	colorPictureRightSelected[] = {0,0,0,1};
	colorPictureRightDisabled[] = {1,1,1,0};

    // onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
    // onDestroy = "systemChat str ['onDestroy',_this]; false";
    // onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
    // onMouseExit = "systemChat str ['onMouseExit',_this]; false";
    // onSetFocus = "systemChat str ['onSetFocus',_this]; false";
    // onKillFocus = "systemChat str ['onKillFocus',_this]; false";
    // onKeyDown = "systemChat str ['onKeyDown',_this]; false";
    // onKeyUp = "systemChat str ['onKeyUp',_this]; false";
    // onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
    // onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
    // onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
    // onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
    // onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
    // onMouseMoving = "";
    // onMouseHolding = "";

    // onTreeSelChanged = "systemChat str ['onTreeSelChanged',_this]; false";
    // onTreeLButtonDown = "systemChat str ['onTreeLButtonDown',_this]; false";
    // onTreeDblClick = "systemChat str ['onTreeDblClick',_this]; false";
    // onTreeExpanded = "systemChat str ['onTreeExpanded',_this]; false";
    // onTreeCollapsed = "systemChat str ['onTreeCollapsed',_this]; false";
    //onTreeMouseMove = "systemChat str ['onTreeMouseMove',_this]; false"; // Causing CTD
    //onTreeMouseHold = "systemChat str ['onTreeMouseHold',_this]; false"; // Causing CTD
    // onTreeMouseExit = "systemChat str ['onTreeMouseExit',_this]; false";
};
