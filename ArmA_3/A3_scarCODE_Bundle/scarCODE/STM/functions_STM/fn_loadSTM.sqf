/*
	Author: IT07

	Description:
	executed by onLoad, loads all inital content

	Params:
	none

	Returns:
	nothing
*/

_d = 299;
if (player nearObjects["Debug_static_F", 20] isEqualTo[]) exitWith
{
	closeDialog _d; systemChat"You are not a fresh spawn. Access to menu denied.";
};

if (not(isNull (findDisplay _d))) then
{
	disableSerialization;
	_gl = ["tpLocations"] call SC_fnc_getStmSetting;
	_l = _gl select 0;
	_c = (findDisplay _d) displayCtrl 2100;
	lnbClear _c;
	{
		_c lbAdd _x;
	} forEach _l;
};