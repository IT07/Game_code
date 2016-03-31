/*
	Author: IT07

	Description:
	returns uptime or player amount

	Params:
	_this select 0: STRING - UPT or PLY

	Returns:
	uptime or player count
*/

private ["_r","_h","_m","_mp"];
_r = ""; // define return
_mode = [_this, 0, "", [""]] call BIS_fnc_param;
switch (_this select 0) do
{
	case "UPT":
	{
		_h = serverTime / 3600;
		_m = (_h - floor _h);
		_r = format["%1h%2m", floor(_h), floor(_m * 60)]; // return = uptime
	};
	case "PLY":
	{
		_mp = "maxPlayers" call SC_fnc_serverInfoMenuGetSetting;
		_r = format["%1/%2", playersNumber west + playersNumber east + playersNumber independent + playersNumber civilian, _mp]; // return = maxPlayers
	};
	default {};
};
_r
