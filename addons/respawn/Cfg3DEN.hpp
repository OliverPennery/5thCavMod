#include "\a3\3DEN\UI\macros.inc"
#include "\a3\3DEN\UI\macroexecs.inc"

class ctrlEdit;
class ctrlStructuredText;
class ctrlCombo;
class ctrlButton;
class title;
class ctrlCheckbox;
class ctrlXSliderH;
class ctrlControlsGroupNoScrollbars;
class ctrlMenuStrip;
class ctrlMenu;
class ctrlStaticBackground;
class ctrlStatic;
class ctrlStaticFooter;
class ctrlStaticTitle;
class ctrlTree;
class ctrlListbox;
class ctrlStaticPictureKeepAspect;
class ctrlStaticMulti;
class ctrlButtonOK;
class ctrlButtonCancel;
class ctrlButtonSearch;

class Cfg3DEN
{
    class Attributes
    {
        class Default;
        class Title: Default
        {
            class Controls
            {
                class Title;
            };
        };
        class GVAR(RscRespawnMode) : Title
        {
            attributeLoad =
            "\
            _ctrlGroup = _this;\
            _ctrlListBox = _ctrlGroup controlsgroupctrl 100;\
            _ctrlListBox lbSetCurSel _value;\
            ";
            attributeSave =
            "\
            _value = lbCurSel (_this controlsGroupCtrl 100);\
            _value;\
            ";
            h = 5 * SIZE_M * GRID_H;
            class Controls: Controls
            {
                class Title: Title {};
                class Value: ctrlListbox
                {
                    x = ATTRIBUTE_TITLE_W * GRID_W;
                    w = ATTRIBUTE_CONTENT_W * GRID_W;
                    h = 5 * SIZE_M * GRID_H;
                    idc = 100;
                    class Items
                    {
                        class ticket
                        {
                            text=CSTRING(CustomRespawnMode_0_DisplayName);
                            tooltip=CSTRING(CustomRespawnMode_0_Tooltip);
                            data="ticket";
                            value=0;
                        };
                        class mVicTicket
                        {
                            text=CSTRING(CustomRespawnMode_1_DisplayName);
                            tooltip=CSTRING(CustomRespawnMode_1_Tooltip);
                            data="mVicTicket";
                            value=1;
                        };
                        class rhsMVicTicket
                        {
                            text=CSTRING(CustomRespawnMode_2_DisplayName);
                            tooltip=CSTRING(CustomRespawnMode_2_Tooltip);
                            data="rhsMVicTicket";
                            value=2;
                        };
                        class disabled
                        {
                            text=CSTRING(CustomRespawnMode_3_DisplayName);
                            tooltip=CSTRING(CustomRespawnMode_3_Tooltip);
                            data="disabled";
                            value=3;
                        };
                        onLBSelChanged="                _ctrlCombo = _this select 0;                _cursel = _this select 1;                _respawnType = _ctrlCombo lbvalue _cursel;                missionnamespace setvariable ['cav_respawn_CustomRespawnMode',_respawnType];            ";
                    };
                };
            };
        };
        class GVAR(RscRespawns) : Title
        {
            attributeLoad =
            "\
            _ctrlGroup = _this;\
            _ctrlSlider = _ctrlGroup controlsgroupctrl 100;\
            _ctrlEdit = _ctrlGroup controlsgroupctrl 101;\
            _value = _value max (sliderrange _ctrlSlider # 0) min (sliderrange _ctrlSlider # 1);\
            _ctrlEdit ctrlSetText (str (round (_value)));\
            _ctrlSlider sliderSetPosition _value;\
            ";
            attributeSave =
            "\
            _value = sliderPosition (_this controlsGroupCtrl 100);\
            _value = round _value;\
            _value;\
            ";
            class Controls: Controls {
                class Title: Title {};
                class Value: ctrlXSliderH
                {
                idc = 100;
                x = ATTRIBUTE_TITLE_W * GRID_W;
                w = (ATTRIBUTE_CONTENT_W - 10) * GRID_W;
                h = SIZE_M * GRID_H;
                sliderRange[]={0,25};
                sliderPosition=1;
                onSliderPosChanged =
                "\
                _ctrlGroup = ctrlParentControlsGroup (_this # 0);\
                _ctrlEdit = _ctrlGroup controlsGroupCtrl 101;\
                _value = sliderPosition (_this # 0);\
                _value = round _value;\
                _ctrlEdit ctrlSetText (str _value);\
                ";
                };
                class Edit: ctrlEdit
                {
                idc = 101;
                canModify = 1;
                x = (ATTRIBUTE_TITLE_W + ATTRIBUTE_CONTENT_W - 10) * GRID_W;
                w = 10 * GRID_W;
                h = SIZE_M * GRID_H;
                onKillFocus =
                "\
                _ctrlEdit = _this # 0;\
                _ctrlGroup = ctrlParentControlsGroup _ctrlEdit;\
                _ctrlSlider = _ctrlGroup controlsGroupctrl 100;\
                _value = parseNumber ctrlText _ctrlEdit;\
                _value = _value max (sliderRange _ctrlSlider # 0) min (sliderRange _ctrlSlider # 1);\
                _ctrlEdit ctrlSetText (str (round (_value)));\
                _ctrlSlider sliderSetPosition _value;\
                ";
                };
            };
        };
    };
    class Mission
    {
        class Multiplayer
        {
            class AttributeCategories
            {
                class GVAR(Settings)
                {
                    displayName=CSTRING(3DEN_Category);
                    collapsed=0;
                    class Attributes
                    {
                        class GVAR(CustomRespawnMode)
                        {
                            property=QGVAR(CustomRespawnMode);
                            expression = QUOTE(GVAR(CustomRespawnMode) = round(_value); publicVariable QQGVAR(CustomRespawnMode););
                            control=QGVAR(RscRespawnMode);
                            displayName=CSTRING(CustomRespawnMode_DisplayName);
                            tooltip=CSTRING(CustomRespawnMode_Description);
                            defaultValue = "3";
                        };
                        class GVAR(NumberOfRespawns)
                        {
                            property=QGVAR(NumberOfRespawns);
                            expression = QUOTE(GVAR(NumberOfRespawns) = round(_value); publicVariable QQGVAR(NumberOfRespawns););
                            control=QGVAR(RscRespawns);
                            displayName=CSTRING(NumberOfRespawns_DisplayName);
                            tooltip=CSTRING(NumberOfRespawns_Description);
                            defaultValue = "1";
                        };
                        class GVAR(RespawnTime)
                        {
                            property=QGVAR(RespawnTime);
                            expression = QUOTE(GVAR(RespawnTime) = round(_value); publicVariable QQGVAR(RespawnTime););
                            control="SliderTimeRespawn";
                            displayName=CSTRING(RespawnTime_DisplayName);
                            tooltip=CSTRING(RespawnTime_Description);
                            defaultValue = "10";
                        };
                        class GVAR(medVicDeployTime)
                        {
                            property=QGVAR(medVicDeployTime);
                            expression = QUOTE(GVAR(medVicDeployTime) = round(_value); publicVariable QQGVAR(medVicDeployTime););
                            control="SliderTimeRespawn";
                            displayName=CSTRING(medVicDeployTime_DisplayName);
                            tooltip=CSTRING(medVicDeployTime_Description);
                            defaultValue = "10";
                        };
                        class GVAR(medVic)
                        {
                            property=QGVAR(MedVicString);
                            expression = QUOTE(GVAR(MedVicString) = _value; publicVariable QQGVAR(MedVicString););
                            control="edit";
                            displayName=CSTRING(MedVic_DisplayName);
                            tooltip=CSTRING(MedVic_Description);
                            defaultValue = "'medVic'";
                            typeName = "STRING";
                        };
                    };
                };
            };
        };
    };
};
