/*
	Author: IT07

	Description:
	Pushes defined content to defined controls if requested

	Params:
	_this: ARRAY - STRING(s) that matches any of defined in switch

	Returns:
	nothing
*/

disableSerialization;
_d = 297; // Display idd
_c = false; // Control
_i = false; // Input

{
	switch _x do
	{
		case "TITLE":
		{
			_c = (findDisplay _d) displayCtrl 1000;
			_o = ["shortServerName"] call SC_fnc_getSimSetting;
			_i = format ["%1", _o select 0];
		};
		case "SLOT_USAGE":
		{
			_c = (findDisplay _d) displayCtrl 1002;
			_i = ["PLY"] call SC_fnc_getLiveSimData;
		};
		case "UPTIME":
		{
			_c = (findDisplay _d) displayCtrl 1004;
			_i = ["UPT"] call SC_fnc_getLiveSimData;
		};
		case "RESTARTINTV":
		{
			_c = (findDisplay _d) displayCtrl 1009;
			_o = ["restartInterval"] call SC_fnc_getSimSetting;
			_i = format["%1 hours", _o select 0];
		};
		case "ADDRESS":
		{
			_c = (findDisplay _d) displayCtrl 1007;
			_o = ["serverAddress"] call SC_fnc_getSimSetting;
			_i = format["%1", _o select 0];
		};
		case "AH":
		{
			_c = (findDisplay _d) displayCtrl 1005;
			_o = ["serverAH"] call SC_fnc_getSimSetting;
			_i = _o select 0;
		};
		case "MANAGEDBY":
		{
			_c = (findDisplay _d) displayCtrl 1013;
			_o = ["serverManagedBy"] call SC_fnc_getSimSetting;
			_i = _o select 0;
		};
		case "GET_PLAYERUID":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_i = format["%1", getPlayerUID player];
		};
		case "GET_ADDRESS":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_o = ["serverAddress"] call SC_fnc_getSimSetting;
			_i = _o select 0;
		};
		case "GET_GT_URL":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_o = ["gametrackerURL"] call SC_fnc_getSimSetting;
			_i = format["%1", _o select 0];
		};
		default { closeDialog _d; }; //A script kiddie tried to "hack" the function
	};

	_c ctrlSetText _i; // Set text to _control with given text
} forEach _this;
