/*
	Author: IT07

	Description:
	this function is called when onLoad fired for this dialog

	Params:
	2 given, none used

	Returns:
	nothing
*/

_dsp = 297;
if not(isNull(findDisplay _dsp)) then
{
	// Trigger the filling of all content
	["TITLE","SLOT_USAGE","UPTIME","RESTARTINTV","ADDRESS","AH","MANAGEDBY"] call SC_fnc_setSimCtrlText;

	_gc = ["menuCategories"] call SC_fnc_getSimSetting; // GetCategories

	_cb = (findDisplay _dsp) displayCtrl 2100; // comboBox
	lnbClear _cb; // Clear comboBox
	{
		_cb lbAdd _x;
	} forEach (_gc select 0);
	_cb lbSetCurSel 0;
};