//cba settings
/*
Example:
[
    "Commy_ViewDistance", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "View Distance", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    "My Mission Settings", // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [200, 15000, 5000, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        setViewDistance _value;
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_Settings_fnc_init;
*/
[
    "CAV_bft_enable_setting",
    "CHECKBOX",
    "Enable BFT",
    ["5th Cav Settings","Blue Force Tracking"],
    [true],
    nil,
    {  
        params ["_value"];
        CAV_bft_enable = _value;
    }
] call CBA_Settings_fnc_init;
[
    "CAV_bft_hideAI_setting",
    "CHECKBOX",
    "Hide AI Groups",
    ["5th Cav Settings","Blue Force Tracking"],
    [true],
    nil,
    {  
        params ["_value"];
        CAV_bft_hideAI = _value;
    }
] call CBA_Settings_fnc_init;
[
    "CAV_bft_delay_setting",
    "SLIDER",
    "Marker Update Delay",
    ["5th Cav Settings","Blue Force Tracking"],
    [0.1, 30, 15, 1],
    nil,
    {  
        params ["_value"];
		CAV_bft_delay = _value1;
    }
] call CBA_Settings_fnc_init;

