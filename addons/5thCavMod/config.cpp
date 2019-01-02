class CfgPatches
{
	class 5thCavMod
	{
		requiredVersion=1.6;
		requiredAddons[]={"CBA_Main","Extended_EventHandlers"};
		author="Brecon and FieldGeneral";
		units[]={};
		weapons[]={};
	};
};
class CfgFunctions
{
	class CAV
	{
		class functions
		{
			file = "5thCavMod\functions";
			class blueForceTrackingUpdate {};
		};
	};
};
class Extended_PreInit_EventHandlers {
    class 5thCavMod_preinit {
		init = "call compile preprocessFileLineNumbers '5thCavMod\XEH_preInit.sqf'";
    };
};
class Extended_PostInit_EventHandlers {
    class 5thCavMod_postinit {
		init = "call compile preprocessFileLineNumbers '5thCavMod\XEH_postInit.sqf'";
    };
};

