class CfgAcreComponents {
    class ACRE_BaseRadio;
    class ACRE_PRC343_base: ACRE_BaseRadio {
        class Interfaces;
    };
    class ACRE_PRC343: ACRE_PRC343_base {
        class Interfaces: Interfaces {
            class CfgAcreDataInterface {
                getListInfo = QFUNC(343ChannelDescription);
                getChannelDescription = QFUNC(343ChannelDescription);
            };
        };
    };
};
