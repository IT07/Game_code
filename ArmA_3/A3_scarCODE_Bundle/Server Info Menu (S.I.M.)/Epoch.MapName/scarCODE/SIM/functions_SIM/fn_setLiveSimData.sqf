/*
	Author: IT07

	Description:
	whilst SIM is open, will refresh uptime and player count

	Params:
	none

	Returns:
	nothing
*/

_timeInit = ["UPT"] call SC_fnc_getliveSimData;
_playerInit = ["PLY"] call SC_fnc_getliveSimData;

while { true } do
{
	if (!isNull(findDisplay 297)) then
	{
		_timeCheck = ["UPT"] call SC_fnc_getliveSimData;
		_playerCheck = ["PLY"] call SC_fnc_getliveSimData;

		if !(_playerCheck isEqualTo _playerInit) then
		{
			_playerInit = ["PLY"] call SC_fnc_getliveSimData;
			["SLOT_USAGE"] call SC_fnc_setSimCtrlText;
		};

		if !(_timeCheck isEqualTo _timeInit) then
		{
			_timeInit = ["UPT"] call SC_fnc_getliveSimData;
			["UPTIME"] call SC_fnc_setSimCtrlText;
		};
	};
	uiSleep 1;
};