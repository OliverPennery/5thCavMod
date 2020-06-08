class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ace_zeus_delete {
                statement = QUOTE([ARR_3(QQGVAR(deleteZeus), ACE_player, ACE_player)] call CBA_fnc_targetEvent;);
            };
        };
    };
};
