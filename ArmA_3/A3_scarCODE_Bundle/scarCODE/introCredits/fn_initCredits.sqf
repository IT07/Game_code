/*
	AUTHOR: IT07 (Original was made by BIS)

	DESCRIPTION:
	if installed in a mission file, any player joining the mission
	will see credits on their screen as configured below. Players have the ability to skip credits by using the scroll menu action which is available until the credits are done showing.

	PARAMS: None.

	NOTES:
	this script concept was 1st released by IT07 for ArmA 2, then a guy called "Gr8" copy-pasted the concept and published it for ArmA 3 without permission.
*/

if not(hasInterface) exitWith {};
[] spawn
{
	#include "config.sqf"
	_creditsFnc =
	{
		_onScreenTime = _this select 0;
		_waitFor = _this select 1;
		_credits = _this select 2;
		_titleColor = _this select 3;
		_subColor = _this select 4;
		uiSleep _waitFor;
		{
			_selectTitle = _x select 0;
			_selectSubs = _x select 1;
			_all = format ["<t size='1.2' align='right' font='PuristaBold'>%2</t><br />", _titleColor, _selectTitle];
			_all = _all + format["<t size='1' color='%1' align='right'>", _subColor];
			{
				_all = _all + format ["%1<br />", _x];
			} forEach _selectSubs;
			_all = _all + "</t>";
			_onScreenTime + (((count _selectSubs) - 1) * 0.5);
			[_all, [safezoneX + 0.1 * safezoneW,safezoneW * 0.88], [safezoneY + 0.7 * safezoneH, safezoneH * 0.3], _onScreenTime, 0, 0, 777] call BIS_fnc_dynamicText;
			uiSleep 0.5;
		} forEach _credits;
	};

	waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone" };
	_playCredits = [_onScreenTime, _waitFor, _credits, _titleColor, _subColor] spawn _creditsFnc;
	_skip = player addAction ["Skip credits...",{terminate (_this select 3); player removeAction (_this select 2)}, _playCredits, -1, false, true];
	waitUntil { uiSleep 0.5; scriptDone _playCredits };
	player removeAction _skip;
};