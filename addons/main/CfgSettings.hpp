class CfgSettings {
    class CBA {
        class Versioning {
            class CAV {
                main_addon = "cav_main";
                class dependencies {
                    //Mod will hard exit if these are missing or out of date
                    CBA[] = {"cba_main", REQUIRED_CBA_VERSION, "(true)"};
                    ACE[] = {"ace_main", REQUIRED_ACE_VERSION, "(true)"};
                };
            };
        };
    };
};
