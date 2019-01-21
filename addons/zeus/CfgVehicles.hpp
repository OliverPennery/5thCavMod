class CfgVehicles {
    class Module_F;

    class GVAR(moduleBase): Module_F {
        author = ECSTRING(common,Authors);
        category = "5thCav";
        function = QEFUNC(common,dummy);
        functionPriority = 1;
        isGlobal = 1;
        isTriggerActivated = 0;
        scope = 1;
        scopeCurator = 2;
    };
    class GVAR(moduleDropBomb): GVAR(moduleBase) {
        curatorCanAttach = 0;
        category = GVAR(Ordnance);
        displayName = CSTRING(ModuleDropBomb_DisplayName);
        icon = "a3\ui_f\data\IGUI\Cfg\simpleTasks\types\destroy_ca.paa";
        curatorInfoType = QGVAR(RscDropBomb);
    };
	
};
