params ["_parentDisplay", "_editIdc"];


private _editControl = _parentDisplay displayCtrl _editIdc;
/* systemChat str _listboxControl; */
private _data = ctrlText _editControl;
/* systemChat str _data; */

[_editControl, _data]
