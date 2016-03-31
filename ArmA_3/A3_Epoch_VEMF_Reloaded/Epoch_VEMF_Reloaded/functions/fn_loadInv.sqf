/*
	Author: IT07

	Description:
	loads AI inventory

	Param:
	_this: ARRAY
	_this select 0: ARRAY - units to load inventory for
	_this select 1: STRING - what type of mission the loadout should be for

	Returns:
	BOOLEAN - true if nothing failed
*/

_ok = false;
private ["_params","_units","_mode","_settings","_useLaunchers","_aiGear","_uniforms","_headGear","_vests","_backpacks","_launchers","_launcherChance","_rifles","_pistols"];
_params = _this;
if (typeName _this isEqualTo "ARRAY") then
{
	_units = [_this, 0, [], [[]]] call BIS_fnc_param;
	if (count _units > 0) then
	{
		_mode = [_this, 1, "", [""]] call BIS_fnc_param;
		if not(_mode isEqualTo "") then
		{
			// Define settings
			_aiGear = [["aiGear"],["aiUniforms","aiVests","aiBackpacks","aiLaunchers","aiRifles","aiPistols"]] call VEMFr_fnc_getSetting;
			_uniforms = _aiGear select 0;
			_vests = _aiGear select 1;
			_backpacks = _aiGear select 2;
			_useLaunchers = "useLaunchers" call VEMFr_fnc_getSetting;
			if (_useLaunchers isEqualTo 1) then
			{
				_launchers = _aiGear select 3;
				_launcherChance = "launcherChance" call VEMFr_fnc_getSetting;
			};
			_rifles = _aiGear select 4;
			_pistols = _aiGear select 5;
			{
				private ["_unit","_gear","_ammo"];
				_unit = _x;
				// Strip it
				removeAllWeapons _unit;
				removeAllItems _unit;
				removeUniform _unit;
				removeVest _unit;
				removeBackpack _unit;
				removeGoggles _unit;
				removeHeadGear _unit;

				_unit addGoggles "G_Balaclava_blk";
				_gear = _uniforms call VEMFr_fnc_random;
				_unit forceAddUniform _gear; // Give the poor naked guy some clothing :)

				_gear = _vests call VEMFr_fnc_random;
				_unit addVest _gear;

				_gear = _backpacks call VEMFr_fnc_random;
				_unit addBackpack _gear;
				if (_useLaunchers isEqualTo 1) then
				{
					if (random 1 < (_launcherChance/ 100*1)) then
					{
						private ["_ammo"];
						_gear = _launchers call VEMFr_fnc_random;
						_unit addWeapon _gear;
						_ammo = getArray (configFile >> "cfgWeapons" >> _gear >> "magazines");
						if (count _ammo > 2) then
						{
							_ammo resize 2;
						};
						for "_i" from 0 to (2 + (round random 1)) do
						{
							_unit addMagazine (_ammo select floor random count _ammo);
						};
					};
				};

				// Add Weapons & Ammo
				_gear = _rifles call VEMFr_fnc_random;
				_unit addWeapon _gear;
				_unit selectWeapon _gear;

				_ammo = getArray (configFile >> "cfgWeapons" >> _gear >> "magazines");
				if (count _ammo > 2) then
				{
					_ammo resize 2;
				};
				for "_i" from 0 to (3 + (round random 2)) do
				{
					_unit addMagazine (_ammo select floor random count _ammo);
				};

				_gear = _pistols call VEMFr_fnc_random;
				_unit addWeapon _gear;
				_ammo = getArray (configFile >> "cfgWeapons" >> _gear >> "magazines");
				for "_i" from 0 to (2 + (round random 2)) do
				{
					_unit addMagazine (_ammo select floor random count _ammo);
				};
			} forEach _units;
			_ok = true;
		};
	};
};

_ok
