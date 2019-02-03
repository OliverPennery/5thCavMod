params ["_unit"];

if ("ItemGPS" in assignedItems _unit) exitwith {
  true
};

private _items = items _unit;

if ("ACE_microDAGR" in _items || "ACE_DAGR" in _items) exitwith {
  true
};

false
