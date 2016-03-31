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
			_i = toUpper ("shortServerName" call SC_fnc_serverInfoMenuGetSetting);
		};
		case "SLOT_USAGE":
		{
			_c = (findDisplay _d) displayCtrl 1002;
			_i = ["PLY"] call SC_fnc_serverInfoMenuGetLiveData;
		};
		case "UPTIME":
		{
			_c = (findDisplay _d) displayCtrl 1004;
			_i = ["UPT"] call SC_fnc_serverInfoMenuGetLiveData;
		};
		case "RESTARTINTV":
		{
			_c = (findDisplay _d) displayCtrl 1009;
			_i = format["%1 hours", "restartInterval" call SC_fnc_serverInfoMenuGetSetting];
		};
		case "ADDRESS":
		{
			_c = (findDisplay _d) displayCtrl 1007;
			_i = format["%1", "serverAddress" call SC_fnc_serverInfoMenuGetSetting];
		};
		case "AH":
		{
			_c = (findDisplay _d) displayCtrl 1005;
			_i = "serverAH" call SC_fnc_serverInfoMenuGetSetting;
		};
		case "MANAGEDBY":
		{
			_c = (findDisplay _d) displayCtrl 1013;
			_i = "serverManagedBy" call SC_fnc_serverInfoMenuGetSetting;
		};
		case "GET_PLAYERUID":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_i = format["%1", getPlayerUID player];
		};
		case "GET_ADDRESS":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_i = "serverAddress" call SC_fnc_serverInfoMenuGetSetting;
		};
		case "GET_GT_URL":
		{
			_c = (findDisplay _d) displayCtrl 1402;
			_i = "gametrackerURL" call SC_fnc_serverInfoMenuGetSetting;
		};
		default { closeDialog _d; }; //A script kiddie tried to "hack" the function
	};

	_c ctrlSetText _i; // Set text to _control with given text
	if (count _this > 1) then
	{
		uiSleep 0.05;
	};
} forEach _this;
