params ["_giveGPS","_ai"];

if (_ai) then {
    switch (_giveGPS) do {
        case (1):
        {
            {
                (leader _x) linkItem "ItemGPS";
            } forEach allGroups;
        };
        case (2):
        {
            {
                _x linkItem "ItemGPS";
            } forEach allUnits;
            };
        };
} else {
    switch (_giveGPS) do {
        case (1):
        {
            {
                (leader _x) linkItem "ItemGPS";
            } forEach (allGroups select {[leader _x] call ace_common_fnc_isPlayer});
        };
        case (2):
        {
            {
                _x linkItem "ItemGPS";
            } forEach (allPlayers - entities "HeadlessClient_F");
        };
    };
};
