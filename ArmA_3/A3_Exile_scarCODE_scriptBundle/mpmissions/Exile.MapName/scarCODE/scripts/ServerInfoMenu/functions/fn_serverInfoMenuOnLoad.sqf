/*
	Author: IT07

	Description:
	this function is called when onLoad fired for this dialog

	Params:
	2 given, none used

	Returns:
	nothing
*/

disableSerialization;
_dsp = uiNamespace getVariable "SC_ServerInfoMenuDisplay";
if not isNull _dsp then
{
	[_dsp] spawn
	{
		disableSerialization;
		_dsp = _this select 0;
		{
			_x ctrlSetFade 0;
			_x ctrlCommit 0.2;
			playSound "ReadOutClick";
			uiSleep 0.05;
		} forEach (allControls _dsp);
	};
	// Trigger the filling of all content
	["TITLE","SLOT_USAGE","UPTIME","RESTARTINTV","ADDRESS","AH","MANAGEDBY"] call SC_fnc_serverInfoMenuCtrlSetText;

	_gc = "menuCategories" call SC_fnc_serverInfoMenuGetSetting; // GetCategories

	_cb = _dsp displayCtrl 2100; // comboBox
	lnbClear _cb; // Clear comboBox
	{
		_cb lbAdd _x;
	} forEach _gc;
	_cb lbSetCurSel 0;
};
