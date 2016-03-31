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
_r = []; // Result
{
	_cfg = (missionConfigFile >> "smpConfig" >> "Settings" >> _x);
	switch(true) do
	{
		case (isNumber _cfg): {_v = getNumber _cfg};
		case (isText _cfg): {_v = getText _cfg};
		case (isArray _cfg): {_v = getArray _cfg};
		default {_v = nil};
	};
	_r pushBack _v;
} forEach _this;

if(isNil "_r") then { _r = "No result"; };

_r