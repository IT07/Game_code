/*
	Author: IT07
	Script name: Missionfile-based server restart warnings by IT07
	Version: 02039_PATCH1
*/

if not(hasInterface) exitWith {};
[] spawn
{
	#include "config.sqf"
	waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone" };
	uiSleep 3;
	if (count _warningSchedule > 0 and _restartInterval > 0) then // Only start if the warning schedule isn't empty and if restartInterval is valid
	{
		[_restartInterval, _warningSchedule, _restartWarningTxt, _enableDebug] spawn SC_fnc_restartTimeCheck;
	};
};