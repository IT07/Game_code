/*
	Author: IT07

	Description:
	called when player pushes SPAWN button

	Params:
	2 given, none used

	Returns:
	nothing
*/

_d = 299; // Display idd
_gc = ["tpCoords"] call SC_fnc_getStmSetting;
_co = _gc select 0;
_gl = ["tpLocations"] call SC_fnc_getStmSetting;
_l = _gl select 0;
_cb = (findDisplay _d) displayCtrl 2100;
_cs = lbCurSel _cb;
_lbt = _cb lbText _cs;
_fl = _l find _lbt;
_gtc = _co select _fl;
player setPos _gtc;
closeDialog _d;