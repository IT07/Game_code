/*
	Author: IT07

	Description:
	sends user-given data from menu to server

	Params:
	none

	Returns:
	nothing
*/

_d = 298; // Display idd
if (isNil"PSR_activeUnits" or isNil"PSR_authToken") exitWith
{
	closeDialog _d;
	["PSR_noToken"] call BIS_fnc_showNotification;
};

if not((typeName PSR_activeUnits) isEqualTo "ARRAY") exitWith
{
	player setDamage 1; // Screw you, script kid
};

// activeUnits is an ARRAY, check how many users are online
if ((count PSR_activeUnits) isEqualTo 0) exitWith
{
	closeDialog _d;
	["PSR_offLine"] call BIS_fnc_showNotification;
};

// Support is online, let's send it
_cm = (findDisplay _d) displayCtrl 1400;
_ty = (findDisplay _d) displayCtrl 2100;
PSR_ask = [lbCursel _ty, ctrlText _cm, PSR_authToken];
publicVariableServer "PSR_ask";
closeDialog _d;