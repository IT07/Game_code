/*
    Author: IT07

    Description:
    gets config value of given var from VEMF config OR cfgPath

	Params:
	_this: 2 ARRAYS
	_this select 0: ARRAY - of STRING(s) which is path to get value from
	_this select 1: ARRAY - of STRING(s) which values to get

    Returns:
    ARRAY - Result
*/

private["_cfg","_v","_r","_path"];
_r = [];
_check =
{
	if (isNumber _cfg) exitWith { _v = getNumber _cfg };
	if (isText _cfg) exitWith { _v = getText _cfg };
	if (isArray _cfg) exitWith { _v = getArray _cfg };
};
switch true do
{
	case (typeName _this isEqualTo "STRING"):
	{
		_cfg = missionConfigFile >> "gmSettings" >> _this;
		call
		{
			if (isNumber _cfg) exitWith { _v = getNumber _cfg };
			if (isText _cfg) exitWith { _v = getText _cfg };
			if (isArray _cfg) exitWith { _v = getArray _cfg };
			_v = nil; // Value
		};
		if not(isNil"_v") exitWith
		{
			_r = _v;
		};
	};
	case (typeName _this isEqualTo "ARRAY"):
	{
		call
		{
			if (count _this isEqualTo 2) exitWith
			{
				_cfg = configFile;
				_path = _cfg;
				{
					_path = _path >> _x; // Build the config path
				} forEach (_this select 0);
				{
					_cfg = _path >> _x;
					call _check;
					_r pushBack _v;
				} forEach (_this select 1);
			};
			if (count _this isEqualTo 1) exitWith
			{
				{
					_cfg = configFile >> "VEMFconfig" >> _x;
					call _check;
					_r pushBack _v;
				} forEach (_this select 0);
			};
		};
	};
	default { diag_log format["[VEMF] fn_getSetting: ERROR: typeName _this is %1", typeName _this]; };
};

if (isNil"_v") then
{
	_r = "No result";
};
_r
