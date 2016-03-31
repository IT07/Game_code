/*
	VEMF AI Killed by Vampire, rewritten by IT07

	Description:
	removes launchers if desired and announces the kill if enabled in config.cpp

	Params:
	_this select 0: OBJECT - the killed AI
	_this select 1: OBJECT - killer

	Returns:
	nothing
*/

_target = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if not isNull _target then
{
	_target removeAllEventHandlers "MPKilled";
	_settings = [["keepLaunchers","keepAIbodies"]] call VEMFr_fnc_getSetting;
	_keepLaunchers = [_settings, 0, -1, [0]] call BIS_fnc_param;
	if (_keepLaunchers isEqualTo -1) then
	{
		_secWeapon = secondaryWeapon _target;
		if not(_secWeapon isEqualTo "") then
		{
			_target removeWeaponGlobal _secWeapon;
			_missiles = getArray (configFile >> "cfgWeapons" >> _secWeapon >> "magazines");
			{
				if (_x in _missiles) then
				{
					_target removeMagazineGlobal _x;
				};
			} forEach (magazines _target);
		};
	};

	_killer = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
	if not isNull _killer then
	{
		if (vehicle _killer isEqualTo _killer) then // No roadkills please
		{
			if ("useCryptoReward" call VEMFr_fnc_getSetting isEqualTo 1) then
			{ // Give the player money for killing an AI
				_maxReward = "maxCryptoReward" call VEMFr_fnc_getSetting;
				_calcReward =
				{
					private ["_reward","_dist","_maxReward"];
					_reward = 0;
					_dist = _this select 0;
					_maxReward = _this select 1;
					if (_dist < 50) exitWith { _reward = _maxReward - (_maxReward / 1.25); _reward };
					if (_dist < 100) exitWith { _reward = _maxReward - (_maxReward / 1.5); _reward };
					if (_dist > 800) exitWith { _reward = _maxReward - (_maxReward / 2); _reward };
					if (_dist < 800) exitWith { _reward = _maxReward - (_maxReward / 4); _reward };
				};
				_bonus = round ([_target distance _killer, _maxReward] call _calcReward);
				_varIndex = EPOCH_customVars find 'Crypto';
				_vars = _killer getVariable['VARS',[]+EPOCH_defaultVars_SEPXVar];
				_curcrypt = _vars select _varIndex;
				_newcrypt = _curcrypt + _bonus;
				[['effectCrypto', _newcrypt], owner _killer] call EPOCH_sendPublicVariableClient;
				_vars set[_varIndex,_newcrypt];
				_killer setVariable ["VARS", _vars];
			};
			if ("sayKilled" call VEMFr_fnc_getSetting isEqualTo 1) then // Send kill message if enabled
			{
				_dist = _target distance _killer;
				if (_dist > -1) then
				{
					if (isPlayer _killer) then // Should prevent Error:NoUnit
					{
						_curWeapon = currentWeapon _killer;
						_kMsg = format["[VEMF] %1: AI kill from %2m with %3", name _killer, round _dist, getText(configFile >> "CfgWeapons" >> _curWeapon >> "DisplayName")];
						_sent = [_kMsg, "sys"] spawn VEMFr_fnc_broadCast;
					};
				};
			};
		};
		if not (vehicle _killer isEqualTo _killer) then
		{ // Send kill message if enabled
			if (("sayKilled" call VEMFr_fnc_getSetting) isEqualTo 1) then
			{
				if ((_target distance _killer) < 5) then
				{
					if (isPlayer _killer) then // Should prevent Error:NoUnit
					{
						_kMsg = format["[VEMF] %1: AI road-kill with %2", name _killer, getText(configFile >> "CfgVehicles" >> typeOf(vehicle _killer) >> "DisplayName")];
						_sent = [_kMsg, "sys"] spawn VEMFr_fnc_broadCast;
					};
				};
			};
		};
	};

	if ((_settings select 1) isEqualTo -1) then // If killEffect enabled
	{
		playSound3D ["A3\Missions_F_Bootcamp\data\sounds\vr_shutdown.wss", _target, false, getPosASL _target, 2, 1, 60];
		for "_u" from 1 to 8 do
		{
			if not(isObjectHidden _target) then
			{
				_target hideObjectGlobal true;
			} else
			{
				_target hideObjectGlobal false;
			};
			uiSleep 0.15;
		};
		_target hideObjectGlobal true;
		removeAllWeapons _target;
		// Automatic cleanup yaaay
		deleteVehicle _target;
	};
};
