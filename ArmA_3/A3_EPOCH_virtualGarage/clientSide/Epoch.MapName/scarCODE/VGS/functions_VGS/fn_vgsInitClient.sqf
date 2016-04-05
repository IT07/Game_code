/*
	Author: IT07

	Description:
	init file for Virtual Garage System menu
*/

if not hasInterface exitWith {};
[] spawn
{
	if not isNull(findDisplay 46) exitWith
 	{
		if not isNil"EPOCH_loadingScreenDone" then
		{
			["[EPOCH VGS] ERROR! fn_initClientVGS called when display 46 AND EPOCH_loadingScreenDone are not(isNull/isNil)"] call BIS_fnc_errorMsg
		};
	};
	waitUntil { uiSleep 2; (not(isNull(findDisplay 46)) AND not(isNil"EPOCH_loadingScreenDone")) };
	_aa = player addAction ["<t size='2' shadow='0'>VGS</t>",{createDialog'SC_vgsDiag';}, "", -1, false, true];
	"DynamicBlur" ppEffectEnable true;
	waitUntil { uiSleep 0.5; not isNil"EPOCH_vgsMyKey" };
	if not(EPOCH_vgsMyKey isEqualTo "") then
	{
		EPOCH_vgsPV = ["Request",[player,EPOCH_vgsMyKey]];
		publicVariableServer "EPOCH_vgsPV";
		EPOCH_vgsPV = nil;
	};
};
