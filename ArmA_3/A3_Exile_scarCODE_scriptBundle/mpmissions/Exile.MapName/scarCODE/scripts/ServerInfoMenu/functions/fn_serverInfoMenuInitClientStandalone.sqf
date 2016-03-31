/*
	Author: IT07

	Description:
	init file for Server Info Menu (standalone mode)
*/

if hasInterface then
{
	[] spawn
	{
		_gs = ["customControl","useScrollMenu"] call SC_fnc_serverInfoMenuGetSetting; // GetSettings
		_cc = [_gs, 0, "User7", [""]] call BIS_fnc_param; // customControl
		_us = [_gs, 1, 1, [0]] call BIS_fnc_param; // useScrollmenu

		waitUntil { uiSleep 1; not isNull(findDisplay 46); isNull(findDisplay 101); isNull(findDisplay 24001); isNull(findDisplay 24002) };
		_aa = player addAction ["<t size='1.5'>Server Info</t>",{createDialog'SC_ServerInfoMenuDiag';}, "", -1, false, true];
		if not(_cc isEqualTo "") then
		{
			[_cc] spawn
			{
				_cc = _this select 0;
				while {alive player} do
				{
					waitUntil { inputAction _cc isEqualTo 1; };
					createDialog'SC_ServerInfoMenuDiag';
					waitUntil { uiSleep 2; isNull(findDisplay 297) };
				};
			};
		};
	};
};
