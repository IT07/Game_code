/*
	Author: IT07

	Description:
	returns uptime or player amount

	Params:
	_this select 0: STRING - UPT or PLY

	Returns:
	uptime or player count
*/

_r = ""; // define return
switch(_this select 0) do
{
	case "UPT":
	{
		_h = serverTime / 3600;
		_m = (_h - floor _h);
		_r = format["%1h%2m", floor(_h), floor(_m * 60)]; // return = uptime
	};
	case "PLY":
	{
		_mp = ["maxPlayers"] call SC_fnc_getSimSetting;
		_r = format["%1/%2", playersNumber west + playersNumber east + playersNumber independent + playersNumber civilian, _mp select 0]; // return = maxPlayers
	};
};
_r