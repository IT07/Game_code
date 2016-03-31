/*
	Author: IT07

	Description:
	Gets config value from given name if exists and automatically detects what type given entry is.

	Params:
	_this: ARRAY - list of config names to get value for

	Returns:
	value of given config entry/entries
*/

private["_cfg","_v","_r"];
_r = []; // Result ARRAY
{
	_cfg = (missionConfigFile >> "psrConfig" >> "Settings" >> _x);
	call
	{
		if (isNumber _cfg) exitWith { _v = getNumber _cfg };
		if (isText _cfg) exitWith { _v = getText _cfg };
		if (isArray _cfg) exitWith { _v = getArray _cfg };
		_v = nil; // Value
	};
	_r pushBack _v;
} forEach _this;

if(isNil "_v") then { _r = "No result"; };

_r