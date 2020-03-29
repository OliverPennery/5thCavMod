// class ACE_Medical_Actions {
//     class Advanced {
//         class fieldDressing;
//         class FastBandage: fieldDressing {
//             displayName = CSTRING(Actions_FastBandage);
//             items[] = {"CAV_fastBandage"};
//         };
//         class Gauze: fieldDressing {
//             displayName = CSTRING(Actions_Gauze);
//             items[] = {"CAV_gauze"};
//             litter[] = {
//                 {"All", "", {"ACE_MedicalLitter_QuickClot"}},
//                 {"All", "_bloodLossOnSelection > 0", {{"ACE_MedicalLitter_bandage2", "ACE_MedicalLitter_bandage3"}}},
//                 {"All", "_bloodLossOnSelection <= 0", {"ACE_MedicalLitter_clean"}}
//             };
//         };
//     };
// };

class ACE_medical_treatment {
    class Bandaging {
        class fieldDressing;
        class FastBandage: fieldDressing {
            class Abrasion {
                reopeningMinDelay = 80;
                reopeningMaxDelay = 150;
            };
            class AbrasionMinor: Abrasion {
                effectiveness = 3.5;
                reopeningChance = 0.7;
            };
            class AbrasionMedium: Abrasion {
                effectiveness = 3;
                reopeningChance = 0.8;
            };
            class AbrasionLarge: Abrasion {
                effectiveness = 2.5;
                reopeningChance = 0.9;
            };

            class Avulsion: Abrasion {
                reopeningMinDelay = 100;
                reopeningMaxDelay = 160;
            };
            class AvulsionMinor: Avulsion {
                effectiveness = 2;
                reopeningChance = 0.65;
            };
            class AvulsionMedium: Avulsion {
                effectiveness = 1.5;
                reopeningChance = 0.75;
            };
            class AvulsionLarge: Avulsion {
                effectiveness = 1;
                reopeningChance = 0.85;
            };

            class Contusion: Abrasion {
                effectiveness = 2;
                reopeningChance = 0;
                reopeningMinDelay = 0;
                reopeningMaxDelay = 0;
            };
            class ContusionMinor: Contusion {};
            class ContusionMedium: Contusion {};
            class ContusionLarge: Contusion {};

            class Crush: Abrasion {
                reopeningMinDelay = 60;
                reopeningMaxDelay = 100;
            };
            class CrushMinor: Crush {
                effectiveness = 2.25;
                reopeningChance = 0.65;
            };
            class CrushMedium: Crush {
                effectiveness = 2;
                reopeningChance = 0.75;
            };
            class CrushLarge: Crush {
                effectiveness = 1.75;
                reopeningChance = 0.85;
            };

            class Cut: Abrasion {
                reopeningMinDelay = 70;
                reopeningMaxDelay = 100;
            };
            class CutMinor: Cut {
                effectiveness = 5;
                reopeningChance = 0.65;
            };
            class CutMedium: Cut {
                effectiveness = 3.5;
                reopeningChance = 0.75;
            };
            class CutLarge: Cut {
                effectiveness = 2;
                reopeningChance = 0.85;
            };

            class Laceration: Abrasion {
                reopeningMinDelay = 50;
                reopeningMaxDelay = 200;
            };
            class LacerationMinor: Laceration {
                effectiveness = 2;
                reopeningChance = 0.7;
            };
            class LacerationMedium: Laceration {
                effectiveness = 1.5;
                reopeningChance = 0.8;
            };
            class LacerationLarge: Laceration {
                effectiveness = 1;
                reopeningChance = 0.9;
            };

            class VelocityWound: Abrasion {
                reopeningMinDelay = 80;
                reopeningMaxDelay = 200;
            };
            class VelocityWoundMinor: VelocityWound {
                effectiveness = 2.5;
                reopeningChance = 0.85;
            };
            class VelocityWoundMedium: VelocityWound {
                effectiveness = 2;
                reopeningChance = 0.9;
            };
            class VelocityWoundLarge: VelocityWound {
                effectiveness = 1.75;
                reopeningChance = 0.95;
            };

            class PunctureWound: Abrasion {
                reopeningMinDelay = 100;
                reopeningMaxDelay = 300;
            };
            class PunctureWoundMinor: PunctureWound {
                effectiveness = 2.5;
                reopeningChance = 0.85;
            };
            class PunctureWoundMedium: PunctureWound {
                effectiveness = 2;
                reopeningChance = 0.9;
            };
            class PunctureWoundLarge: PunctureWound {
                effectiveness = 1.5;
                reopeningChance = 0.95;
            };
        };
        class Gauze: fieldDressing {
            class Abrasion {
                reopeningMinDelay = 800;
                reopeningMaxDelay = 1500;
            };
            class AbrasionMinor: Abrasion {
                effectiveness = 2;
                reopeningChance = 0.2;
            };
            class AbrasionMedium: Abrasion {
                effectiveness = 1.5;
                reopeningChance = 0.25;
            };
            class AbrasionLarge: Abrasion {
                effectiveness = 1;
                reopeningChance = 0.3;
            };

            class Avulsion: Abrasion {
                reopeningMinDelay = 1000;
                reopeningMaxDelay = 1600;
            };
            class AvulsionMinor: Avulsion {
                effectiveness = 0.75;
                reopeningChance = 0.15;
            };
            class AvulsionMedium: Avulsion {
                effectiveness = 0.75;
                reopeningChance = 0.2;
            };
            class AvulsionLarge: Avulsion {
                effectiveness = 0.70;
                reopeningChance = 0.25;
            };

            class Contusion: Abrasion {
                effectiveness = 1;
                reopeningChance = 0;
                reopeningMinDelay = 0;
                reopeningMaxDelay = 0;
            };
            class ContusionMinor: Contusion {};
            class ContusionMedium: Contusion {};
            class ContusionLarge: Contusion {};

            class Crush: Abrasion {
                reopeningMinDelay = 600;
                reopeningMaxDelay = 1000;
            };
            class CrushMinor: Crush {
                effectiveness = 1.1;
                reopeningChance = 0.2;
            };
            class CrushMedium: Crush {
                effectiveness = 1;
                reopeningChance = 0.25;
            };
            class CrushLarge: Crush {
                effectiveness = 0.9;
                reopeningChance = 0.3;
            };

            class Cut: Abrasion {
                reopeningMinDelay = 700;
                reopeningMaxDelay = 1000;
            };
            class CutMinor: Cut {
                effectiveness = 2;
                reopeningChance = 0.15;
            };
            class CutMedium: Cut {
                effectiveness = 1.5;
                reopeningChance = 0.2;
            };
            class CutLarge: Cut {
                effectiveness = 1;
                reopeningChance = 0.25;
            };

            class Laceration: Abrasion {
                reopeningMinDelay = 500;
                reopeningMaxDelay = 2000;
            };
            class LacerationMinor: Laceration {
                effectiveness = 0.85;
                reopeningChance = 0.2;
            };
            class LacerationMedium: Laceration {
                effectiveness = 0.75;
                reopeningChance = 0.25;
            };
            class LacerationLarge: Laceration {
                effectiveness = 0.65;
                reopeningChance = 0.3;
            };

            class VelocityWound: Abrasion {
                reopeningMinDelay = 800;
                reopeningMaxDelay = 2000;
            };
            class VelocityWoundMinor: VelocityWound {
                effectiveness = 1.25;
                reopeningChance = 0.2;
            };
            class VelocityWoundMedium: VelocityWound {
                effectiveness = 1;
                reopeningChance = 0.3;
            };
            class VelocityWoundLarge: VelocityWound {
                effectiveness = 0.75;
                reopeningChance = 0.4;
            };

            class PunctureWound: Abrasion {
                reopeningMinDelay = 1000;
                reopeningMaxDelay = 3000;
            };
            class PunctureWoundMinor: PunctureWound {
                effectiveness = 1.25;
                reopeningChance = 0.2;
            };
            class PunctureWoundMedium: PunctureWound {
                effectiveness = 1;
                reopeningChance = 0.3;
            };
            class PunctureWoundLarge: PunctureWound {
                effectiveness = 0.75;
                reopeningChance = 0.4;
            };
        };
    };
};
