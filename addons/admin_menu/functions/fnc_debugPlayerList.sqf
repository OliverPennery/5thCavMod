#include "script_component.hpp"

params ["_control"];
private _parentDisplay = ctrlParent _control;

_handle = [
{
    (_this select 0) params ["_control", "_parentDisplay", "_player"];
    if (isNull _parentDisplay) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    lbClear _control;
    _control lbAdd "All";
    private _text = "|I|T|D|V|S|C|M|E|Z";
    _control lbSetTextRight [0, _text];

    private _toggleFormat =  ["|0", "|X"];
    {
    	if (isPlayer _x) then
    	{
    		private _index = _control lbAdd (name _x);
            _control lbSetData [_index, (_x call BIS_fnc_netId)];

            private _text = "";

            _text = _text + (_toggleFormat select parseNumber (isObjectHidden _x));
            _text = _text + (_toggleFormat select parseNumber (captive _x));
            _text = _text + (_toggleFormat select parseNumber (!isDamageAllowed _x));
            _text = _text + (_toggleFormat select parseNumber ((!isNull objectParent _x) and (!isDamageAllowed vehicle _x)));
            _text = _text + (_toggleFormat select parseNumber (_x getVariable ["ace_captives_isSurrendering", false]));
            _text = _text + (_toggleFormat select parseNumber (_x getVariable ["ace_captives_isHandcuffed", false]));
            _text = _text + (_toggleFormat select parseNumber ([_x] call ace_medical_fnc_isMedic));
            _text = _text + (_toggleFormat select parseNumber ([_x] call ace_repair_fnc_isEngineer));
            _text = _text + (_toggleFormat select parseNumber (false));

            _control lbSetTextRight  [_index, _text];
            if !(alive _x) then{
                _control lbSetColor [_index, [1,0,0,1]];
            };
            if (_player == _x and (lbCurSel _control) == -1) then{
                _control lbSetCurSel _index;
            };
    	};
    } forEach allPlayers - entities "HeadlessClient_F";
},1,[_control, _parentDisplay, player]] call CBA_fnc_addPerFrameHandler;
