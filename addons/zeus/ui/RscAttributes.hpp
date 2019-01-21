class RscControlsGroup;
class RscControlsGroupNoScrollbars;
class RscText;
class RscListbox;
class RscCombo;
class RscEdit;
class RscXSliderH;
class RscCheckBox;
class RscActivePicture;
class RscMapControl;
class RscPicture;
class ctrlToolbox;
class RscButton;
class ScrollBar;
class ListScrollBar : ScrollBar {};

class RscDisplayAttributes {
    class Controls {
        class Background;
        class Title;
        class Content: RscControlsGroup {
            class controls;
        };
        class ButtonOK;
        class ButtonCancel;
    };
};

class GVAR(RscDropBomb): RscDisplayAttributes {
    onLoad = QUOTE([ARR_3('onLoad', _this, QQGVAR(RscDropBomb))] call FUNC(zeusAttributes));
    onUnload = QUOTE([ARR_3('onUnload', _this, QQGVAR(RscDropBomb))] call FUNC(zeusAttributes));
    class Controls: Controls {
        class Background: Background {};
        class Title: Title {};
        class Content: Content {
            class Controls {
                class dropBomb: RscControlsGroupNoScrollbars {
                    onSetFocus = QUOTE(_this call FUNC(ui_dropBomb));
                    idc = 36180;
                    x = 0;
                    y = 0;
                    w = W_PART(26);
                    h = H_PART(5.2);
                    class controls {
                        class BombTypeLabel: RscText {
                            idc = -1;
                            text = CSTRING(ModuleDropBomb_BombType);
                            tooltip = CSTRING(ModuleDropBomb_BombType_Tooltip);
                            x = 0;
                            y = 0;
                            w = W_PART(10);
                            h = H_PART(1);
                            colorBackground[] = {0, 0, 0, 0.5};
                        };
                        class BombType: RscListbox {
							class ListScrollBar {};
                            idc = 36181;
                            x = W_PART(10.1);
                            y = 0;
                            w = W_PART(15.9);
                            h = H_PART(3);
                        };
                        class HeightLabel: BombTypeLabel {
                            text = CSTRING(ModuleDropBomb_Height);
                            tooltip = CSTRING(ModuleDropBomb_Height_Tooltip);
                            y = H_PART(3.1);
                        };
                        class Height: RscXSliderH {
                            idc = 36182;
							x = W_PART(10.1);
                            y = H_PART(3.1);
                            w = W_PART(15.9);
							h = H_PART(1);
                        };
                        class HeightText: RscEdit {
                            idc = 36183;
							x = W_PART(10.1);
                            y = H_PART(4.2);
                            w = W_PART(15.9);
							h = H_PART(1);
                            autocomplete = "";
                            maxChars = 3;
                            canModify = 0;
                        };
                    };
                };
            };
        };
        class ButtonOK: ButtonOK {};
        class ButtonCancel: ButtonCancel {};
    };
};
