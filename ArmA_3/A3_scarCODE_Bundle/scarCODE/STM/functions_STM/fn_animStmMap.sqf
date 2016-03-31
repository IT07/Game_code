/*
	Author: IT07

	Description:
	called by onLBSelChanged. Switches map to selected location.

	Params:
	_this select 0: CONTROL - control that called this fnc
	_this select 1: SCALAR - index

	Returns:
	nothing
*/

disableSerialization;
_gc = ["tpCoords"] call SC_fnc_getStmSetting;
_co = _gc select 0;
_mt = _co select (_this select 1);
_m = (findDisplay 299) displayCtrl 1800;
_m ctrlMapAnimAdd [0.5, 0.2, _mt];
ctrlMapAnimCommit _m;