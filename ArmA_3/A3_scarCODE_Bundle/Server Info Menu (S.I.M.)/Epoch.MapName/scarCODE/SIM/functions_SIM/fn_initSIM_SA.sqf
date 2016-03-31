/*
	Author: IT07

	Description:
	init file for Server Info Menu (standalone mode)
*/

if not(hasInterface) exitWith {};
[] spawn
{
	_gs = ["useScrollMenu","customControl"] call SC_fnc_getSimSetting; // GetSettings
	_es = _gs select 0; // EnableScroll
	_ecc = _gs select 1; // EnableCustomControl

	waitUntil { uiSleep 1; not(isNull(findDisplay 46)); not(isNil"EPOCH_loadingScreenDone") };
	uiSleep 1;
	if ((typeName _es) isEqualTo "SCALAR") then
	{
		_aa = player addAction ["<t color='#57877b'>Server Info</t>",{createDialog'SC_simDiag';}, "", -1, false, true];
	};

	if ((typeName _ecc) isEqualTo "STRING" and not(_ecc isEqualTo "")) then
	{
		[_ecc] spawn // Antihax do not like EHs....
		{
			_ecc = _this select 0;
			while {alive player} do
			{
				waitUntil { inputAction "User7" isEqualTo 1; };
				createDialog'SC_simDiag';
				waitUntil { uiSleep 2; isNull(findDisplay 297) };
			};
		};
	};
};
