#include "script_component.hpp"

params [["_vic", objNull], ["_mode", 0]];

if !(isNull _vic) then{
    switch (_mode) do {
        case 0:{
            SETPVAR(_vic, deployedFuel, fuel _vic);
            _vic setFuel 0;
        };
        case 1:{
            _vic setFuel GETVAR(_vic, deployedFuel, 0.75);
        };
    };
};
