/*
	Author: IT07

	Description:
	this function will be called when wMenu opens. Fills the content

	Params:
	none

	Returns:
	nothing
*/

if not isNull(findDisplay 277) then
{
	private ["_d","_t"];
	setMousePosition [0.5, 0.5];
	disableSerialization;
	_im = "installedMenus" call SC_fnc_mainMenuGetSetting; // InstalledMenus = GetInstalledMenus select result
	_cb = (findDisplay 277) displayCtrl 2100; // ComboBox
	{ // Fill the RscCombo
		switch (_x) do
		{
			case "SIM":
			{
				_d = "SC_ServerInfoMenuDiag";
				_t = "Server Info Menu (S.I.M.)";
			};
			case "SAR":
			{
				_d = "SC_SimpleAmmoRepackerDiag";
				_t = "Simple Ammo Repacker (S.A.R.)";
			};
			default {}
		};

		_id = _cb lbAdd _t; // index = comboBox lbAdd text
		_cb lbSetData [_id, _d]; // comboBox lbSetData [index, className]
		if (count _im isEqualTo 1) exitWith // if 1 menu installed, open it
		{
			_cb lbSetCurSel 0;
		};
	} forEach _im;
};
