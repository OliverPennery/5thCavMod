class CfgVehicles {
    class Man;
    // class CAManBase: Man {
    //     class ACE_SelfActions {
    //         #include "CAV_Medical_SelfActions.hpp"
    //     };
    //
    //     class ACE_Actions {
    //         #define EXCEPTIONS exceptions[] = {"isNotSwimming"};
    //         // Include actions in body parts for treatment while in the open
    //         #include "CAV_Medical_Actions.hpp"
    //
    //         // Create a consolidates medical menu for treatment while boarded
    //         class ACE_MainActions {
    //             class Medical {
    //                 #include "CAV_Medical_Actions.hpp"
    //             };
    //         };
    //     };
    // };

    class Item_Base_F;
    class CAV_fastBandageItem: Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(Bandage_Fast_Display);
        author = "Brecon";
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(CAV_fastBandage,1);
        };
    };
    class CAV_gauzeItem: Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(Bandage_Gauze_Display);
        author = "Brecon";
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(CAV_gauze,1);
        };
    };
};
