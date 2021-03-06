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
    onLoad = QUOTE([ARR_3('onLoad', _this, QQGVAR(RscDropBomb))] call ace_zeus_fnc_zeusAttributes);
    onUnload = QUOTE([ARR_3('onUnload', _this, QQGVAR(RscDropBomb))] call ace_zeus_fnc_zeusAttributes);
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
                    h = H_PART(9.7);
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
                            canModify = 1;
                        };
                        class VelLabel: BombTypeLabel {
                            text = CSTRING(ModuleDropBomb_Vel);
                            tooltip = CSTRING(ModuleDropBomb_Vel_Tooltip);
                            y = H_PART(5.3);
                        };
                        class Vel: Height {
                            idc = 36184;
                            y = H_PART(5.3);
                        };
                        class VelText: HeightText {
                            idc = 36185;
                            y = H_PART(6.4);
                        };
                        class DirLabel: BombTypeLabel {
                            text = CSTRING(ModuleDropBomb_Dir);
                            tooltip = CSTRING(ModuleDropBomb_Dir_Tooltip);
                            y = H_PART(7.5);
                        };
                        class Dir: Height {
                            idc = 36186;
                            y = H_PART(7.5);
                        };
                        class DirText: HeightText {
                            idc = 36187;
                            y = H_PART(8.6);
                        };
                    };
                };
            };
        };
        class ButtonOK: ButtonOK {};
        class ButtonCancel: ButtonCancel {};
    };
};
class GVAR(RscSpawnGrenade): RscDisplayAttributes {
    onLoad = QUOTE([ARR_3('onLoad', _this, QQGVAR(RscSpawnGrenade))] call ace_zeus_fnc_zeusAttributes);
    onUnload = QUOTE([ARR_3('onUnload', _this, QQGVAR(RscSpawnGrenade))] call ace_zeus_fnc_zeusAttributes);
    class Controls: Controls {
        class Background: Background {};
        class Title: Title {};
        class Content: Content {
            class Controls {
                class spawnGrenade: RscControlsGroupNoScrollbars {
                    onSetFocus = QUOTE(_this call FUNC(ui_spawnGrenade));
                    idc = 36190;
                    x = 0;
                    y = 0;
                    w = W_PART(26);
                    h = H_PART(3.1);
                    class controls {
                        class GrenadeTypeLabel: RscText {
                            idc = -1;
                            text = CSTRING(ModuleSpawnGrenade_Type);
                            tooltip = CSTRING(ModuleSpawnGrenade_Type_Tooltip);
                            x = 0;
                            y = 0;
                            w = W_PART(10);
                            h = H_PART(1);
                            colorBackground[] = {0, 0, 0, 0.5};
                        };
                        class GrenadeType: RscListbox {
                            class ListScrollBar {};
                            idc = 36191;
                            x = W_PART(10.1);
                            y = 0;
                            w = W_PART(15.9);
                            h = H_PART(3);
                        };
                    };
                };
            };
        };
        class ButtonOK: ButtonOK {};
        class ButtonCancel: ButtonCancel {};
    };
};

class GVAR(RscLaunchMissile): RscDisplayAttributes {
    onLoad = QUOTE([ARR_3('onLoad', _this, QQGVAR(RscLaunchMissile))] call ace_zeus_fnc_zeusAttributes);
    onUnload = QUOTE([ARR_3('onUnload', _this, QQGVAR(RscLaunchMissile))] call ace_zeus_fnc_zeusAttributes);
    class Controls: Controls {
        class Background: Background {};
        class Title: Title {};
        class Content: Content {
            class Controls {
                class launchMissile: RscControlsGroupNoScrollbars {
                    onSetFocus = QUOTE(_this call FUNC(ui_LaunchMissile));
                    idc = 36200;
                    x = 0;
                    y = 0;
                    w = W_PART(26);
                    h = H_PART(7.4);
                    class controls {
                        class MissileTypeLabel: RscText {
                            idc = -1;
                            text = CSTRING(ModuleLaunchMissile_Type);
                            tooltip = CSTRING(ModuleLaunchMissile_Type_Tooltip);
                            x = 0;
                            y = 0;
                            w = W_PART(10);
                            h = H_PART(1);
                            colorBackground[] = {0, 0, 0, 0.5};
                        };
                        class MissileType: RscListbox {
                            class ListScrollBar {};
                            idc = 36201;
                            x = W_PART(10.1);
                            y = 0;
                            w = W_PART(15.9);
                            h = H_PART(3);
                        };
                        class TargetLabel: MissileTypeLabel {
                            text = CSTRING(ModuleLaunchMissile_Target);
                            tooltip = CSTRING(ModuleLaunchMissile_Target_Tooltip);
                            y = H_PART(3.1);
                        };
                        class Target: MissileType {
                            idc = 36202;
                            y = H_PART(3.1);
                            h = H_PART(2);
                        };
                        class VelLabel: MissileTypeLabel {
                            text = CSTRING(ModuleLaunchMissile_Vel);
                            tooltip = CSTRING(ModuleLaunchMissile_Vel_Tooltip);
                            y = H_PART(5.2);
                        };
                        class Vel: RscXSliderH {
                            idc = 36203;
                            x = W_PART(10.1);
                            h = H_PART(1);
                            y = H_PART(5.2);
                            w = W_PART(15.9);
                        };
                        class VelText: RscEdit {
                            idc = 36204;
                            x = W_PART(10.1);
                            y = H_PART(6.3);
                            w = W_PART(15.9);
                            h = H_PART(1);
                            autocomplete = "";
                            maxChars = 4;
                            canModify = 1;
                        };
                    };
                };
            };
        };
        class ButtonOK: ButtonOK {};
        class ButtonCancel: ButtonCancel {};
    };
};
class GVAR(RscMissileTarget): RscDisplayAttributes {
    onLoad = QUOTE([ARR_3('onLoad', _this, QQGVAR(RscMissileTarget))] call ace_zeus_fnc_zeusAttributes);
    onUnload = QUOTE([ARR_3('onUnload', _this, QQGVAR(RscMissileTarget))] call ace_zeus_fnc_zeusAttributes);
    class Controls: Controls {
        class Background: Background {};
        class Title: Title {};
        class Content: Content {
            class Controls {
                class MissileTartet: RscControlsGroupNoScrollbars {
                    onSetFocus = QUOTE(_this call FUNC(ui_MissileTarget));
                    idc = 36210;
                    x = 0;
                    y = 0;
                    w = W_PART(26);
                    h = H_PART(2.1);
                    class controls {
                        class MissileTargetLabel: RscText {
                            idc = -1;
                            text = CSTRING(ModuleMissileTarget_Name);
                            tooltip = CSTRING(ModuleMissileTarget_Name_Tooltip);
                            x = 0;
                            y = 0;
                            w = W_PART(10);
                            h = H_PART(1);
                            colorBackground[] = {0, 0, 0, 0.5};
                        };
                        class MissileTarget: RscEdit {
                            idc = 36211;
                            x = W_PART(10.1);
                            y = 0;
                            w = W_PART(15.9);
                            h = H_PART(1);
                        };
                    };
                };
            };
        };
        class ButtonOK: ButtonOK {};
        class ButtonCancel: ButtonCancel {};
    };
};
