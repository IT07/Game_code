/*
	Author: IT07

	Description:
	initializes the SAR script

	Params:
	none that I know of lol

	Returns:
	why the **** would an init file return something? You moron :P
*/

if not(hasInterface) exitWith {};
[] spawn // Why? Because of { postInit = 1; };
{
	waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone"; };
	uiSleep 1;
	_aa = player addAction ["<img size='1.5' image='\a3\ui_f\data\IGUI\Cfg\Actions\reload_ca.paa' />  Ammo Repack",{createDialog'SC_sarDiag';}, "", -1, false, true];
};