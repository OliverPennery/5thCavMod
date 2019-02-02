#include "script_component.hpp"

params ["_parentDisplay", "_listboxIdc"];

private _listboxControl = _parentDisplay displayCtrl _listboxIdc;
/* systemChat str _listboxControl; */
private _index =  lbCurSel _listboxControl;
/* systemChat str _index; */
private _data = _listboxControl lbData _index;
/* systemChat str _data; */

[_listboxControl, _index, _data]
