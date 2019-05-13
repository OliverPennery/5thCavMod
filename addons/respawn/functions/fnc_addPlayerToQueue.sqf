#include "script_component.hpp"

params ["_id"];

if (isPlayer (objectFromNetId _id)) then {
    CAV_DQ pushBack _id;
    publicVariable "CAV_DQ";
    true
};
false
