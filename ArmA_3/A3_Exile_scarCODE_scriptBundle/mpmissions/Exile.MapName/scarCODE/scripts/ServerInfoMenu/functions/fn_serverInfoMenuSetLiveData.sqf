/*
	Author: IT07

	Description:
	whilst SIM is open, will refresh uptime and player count

	Params:
	none

	Returns:
	nothing
*/

_timeInit = ["UPT"] call SC_fnc_serverInfoMenuGetLiveData;
_playerInit = ["PLY"] call SC_fnc_serverInfoMenuGetLiveData;

while { true } do
{
	if (!isNull(findDisplay 297)) then
	{
		_timeCheck = ["UPT"] call SC_fnc_serverInfoMenuGetLiveData;
		_playerCheck = ["PLY"] call SC_fnc_serverInfoMenuGetLiveData;

		if !(_playerCheck isEqualTo _playerInit) then
		{
			_playerInit = ["PLY"] call SC_fnc_serverInfoMenuGetLiveData;
			["SLOT_USAGE"] call SC_fnc_serverInfoMenuCtrlSetText;
		};

		if !(_timeCheck isEqualTo _timeInit) then
		{
			_timeInit = ["UPT"] call SC_fnc_serverInfoMenuGetLiveData;
			["UPTIME"] call SC_fnc_serverInfoMenuCtrlSetText;
		};
	};
	uiSleep 1;
};
