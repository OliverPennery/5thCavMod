#include "script_component.hpp"

// Exit on Headless as well
if (!hasInterface) exitWith {};

ace_medical_gui_selfInteractionActions = [];
[] call ace_medical_gui_fnc_addTreatmentActions;
[] call ace_medical_gui_fnc_collectActions;
