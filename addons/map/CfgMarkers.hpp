class cfgMarkerClasses {
  class GVAR(man_icons) {
    displayName = CSTRING(Man_Icons);
  };
};
class cfgMarkers {
  class GVAR(man) {
    name = CSTRING(man);
    markerClass = QGVAR(man_icons)
    icon = "\A3\ui_f\data\map\vehicleicons\iconMan_ca.paa";
    color[] = {1, 1, 1, 1};
    size = 22;
    shadow = true;
    scope = 2;
  };
  class GVAR(man_leader) : GVAR(man) {
    name = CSTRING(man_leader);
    icon = "\A3\ui_f\data\map\vehicleicons\iconManLeader_ca.paa";
  };
  class GVAR(man_medic) : GVAR(man) {
    name = CSTRING(man_medic);
    icon = "\A3\ui_f\data\map\vehicleicons\iconManMedic_ca.paa";
  };
  class GVAR(man_mg) : GVAR(man) {
    name = CSTRING(man_mg);
    icon = "\A3\ui_f\data\map\vehicleicons\iconManMG_ca.paa";
  };
  class GVAR(man_at) : GVAR(man) {
    name = CSTRING(man_at);
    icon = "\A3\ui_f\data\map\vehicleicons\iconManAT_ca.paa";
  };
  class GVAR(man_engineer) : GVAR(man) {
    name = CSTRING(man_engineer);
    icon = "\A3\ui_f\data\map\vehicleicons\iconManEngineer_ca.paa";
  };
  class GVAR(man_cargo) : GVAR(man) {
    name = CSTRING(man_cargo);
    icon = "\A3\ui_f\data\igui\cfg\commandbar\imagecargo_ca.paa";
  };
  class GVAR(man_driver) : GVAR(man) {
    name = CSTRING(man_driver);
    icon = "\A3\ui_f\data\igui\cfg\commandbar\imagedriver_ca.paa";
  };
  class GVAR(man_ffv) : GVAR(man) {
    name = CSTRING(man_ffv);
    icon = "\A3\ui_f\data\igui\cfg\simpletasks\types\rifle_ca.paa";
  };
  class GVAR(man_gunner) : GVAR(man) {
    name = CSTRING(man_gunner);
    icon = "\A3\ui_f\data\igui\cfg\commandbar\imagegunner_ca.paa";
  };
  class GVAR(man_commander) : GVAR(man) {
    name = CSTRING(man_commander);
    icon = "\A3\ui_f\data\igui\cfg\commandbar\imagecommander_ca.paa";
  };
};
