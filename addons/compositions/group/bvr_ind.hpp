class GVAR(bvr_Woodland){
    name = "Infantry(Woodland)";

    class GVAR(bvr_Woodland_Fireteam){
        name = "Fireteam";
        faction = QGVAR(bvr_Ind);
        side = 2;
        icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";

        class Unit0{
            side = 2;
            vehicle = QGVAR(bvr_Soldier_Rifleman);
            rank = "SERGEANT";
            position[] = {0,0,0};
        };

        class Unit1{
            side = 2;
            vehicle = "I_soldier_F";
            rank = "CORPORAL";
            position[] = {5,-5,0};
        };
    };
};
