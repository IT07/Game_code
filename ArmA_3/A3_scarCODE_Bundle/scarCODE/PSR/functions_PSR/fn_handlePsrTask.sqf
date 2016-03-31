/*
	Author: IT07

	Description:
	called when doubleClicked on request. Sends data from selected item to server

	Params:
	none

	Returns:
	nothing
*/

disableSerialization;
_d = 298; // Display idd
_c = (findDisplay _d) displayCtrl 1500; // Control 1500
if (not(isNull(findDisplay _d)) and not(isNil"PSR_taskData") and (_this select 0) isEqualTo _c) then
{
	PSR_takeRequest = [PSR_taskData select (_this select 1),PSR_authToken];
	publicVariableServer "PSR_takeRequest";
};
