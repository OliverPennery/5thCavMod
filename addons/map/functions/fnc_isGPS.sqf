params ["_unit"];

private _items = assignedItems _unit;
_items append (items _unit);
private _gps = false;

if ("ItemMap" in _items && ("ItemGPS" in _items || "ACE_microDAGR" in _items || "ACE_DAGR" in _items)) then {
  _gps = true;
};

_gps
