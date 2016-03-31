/*
	Author: IT07

	Description:
	init file for ScarCode Menu Package script
*/

if not(hasInterface) exitWith {};
/////// Spawn live stats for SIM
[] spawn SC_fnc_setLiveSimData; // Live uptime and players

[] spawn
{
	_gs = ["useScrollMenu","customControl"] call SC_fnc_getSmpSetting; // GetSettings
	_es = _gs select 0; // EnableScroll
	_ecc = _gs select 1; // EnableCustomControl

	waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone" };
	uiSleep 3;

	if ((typeName _es) isEqualTo "SCALAR") then
	{
		_aa = player addAction ["<t color='#57877b'>Player SMP</t>",{createDialog'SC_smpDiag';}, "", -1, false, true];
	};

	if ((typeName _ecc) isEqualTo "STRING" and not(_ecc isEqualTo "")) then
	{
		[_ecc] spawn // Antihax do not like EHs....
		{
			_ecc = _this select 0;
			while {true} do
			{
				waitUntil { inputAction _ecc > 0 };
				createDialog'SC_smpDiag';
				waitUntil { isNull(findDisplay 277) };
			};
		};
	};
};