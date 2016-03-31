/*
    Author: IT07

    Description:
    gets config value of given var from ServerLogo config

	Params:
	method 1:
		_this: STRING - name of SINGLE config value to get from root of sc_cfgServerLogo
	method 2:
		_this select 0: ARRAY of STRINGS - MULTIPLE config values to get from root of sc_cfgServerLogo

    Returns:
	method 1: ANYTHING
	method 2: ARRAY with results
*/

private["_cfg","_v","_r","_path"];
_r = [];
_check =
{
	if (isNumber _cfg) then
	{
		_v = getNumber _cfg
	};
	if not(isNumber _cfg) then
	{
		if (isText _cfg) then
		{
			_v = getText _cfg
		};
		if not(isText _cfg) then
		{
			if (isArray _cfg) then
			{
				_v = getArray _cfg
			};
		};
	};
};

if (typeName _this isEqualTo "STRING") then
{
	_cfg = missionConfigFile >> "cfgScarCODE" >> "sc_cfgServerLogo" >> _this;
	call _check;
	if not(isNil"_v") then
	{
		_r = _v;
	};
};

if (typeName _this isEqualTo "ARRAY") then
{
	{
		if (typeName _x isEqualTo "STRING") then
		{
			_cfg = missionConfigFile >> "cfgScarCODE" >> "sc_cfgServerLogo" >> _x;
			call _check;
		};
	} forEach _this;
};

if isNil"_v" then { _r = "No result" };
_r
