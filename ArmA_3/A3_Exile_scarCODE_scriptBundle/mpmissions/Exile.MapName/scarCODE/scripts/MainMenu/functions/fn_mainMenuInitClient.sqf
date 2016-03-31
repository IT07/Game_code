/*
	Author: IT07

	Description:
	init file for ScarCode Menu Package script
*/

if hasInterface then
{
	[] spawn
	{
		_gs = ["useScrollMenu","customControl"] call SC_fnc_mainMenuGetSetting; // GetSettings
		_es = [_gs, 0, 1, [0]] call BIS_fnc_param; // EnableScroll
		_cc = [_gs, 1, "User7", [""]] call BIS_fnc_param; // customControl

		waitUntil { uiSleep 1; not isNull(findDisplay 46); isNull(findDisplay 101); isNull(findDisplay 24001); isNull(findDisplay 24002) };
		_aa = player addAction ["<t size='1.5'>Main Menu</t>",{createDialog'SC_MainMenuDiag';}, "", -1, false, true];

		if not(_cc isEqualTo "") then
		{
			[_cc] spawn // Antihax do not like EHs....
			{
				_cc = _this select 0;
				while {true} do
				{
					waitUntil { inputAction _cc > 0 };
					createDialog'SC_MainMenuDiag';
					waitUntil { uiSleep 2; isNull(findDisplay 277) };
				};
			};
		};
	};
};
