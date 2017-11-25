/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Read from client Garage
	
	Returns:
	remoteExecCall to client garage contents
*/

private["_slots", "_debug", "_playerUID", "_response", "_vehsFriendly", "_vehsRaw", "_toSpawn", "_veh", "_hitPoints", "_fuel", "_gear", "_weapons", "_weapons", "_items", "_packs", "_response2"];
params [ 
	["_slot", -1, [0]],
	["_playerObj", objNull, [objNull]],
	["_playerKey", "", [""]] 
];
// debug start message
_debug = "debug" call SC_fnc_vgsGetClientSetting;
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ReadFromGarage _data = %1", [_slot, _playerObj, _playerKey]]};

if isNull _playerObj exitWith	{diag_log format["[EPOCH VGS]: ReadFromGarage Player isNull - data:%1", _playerObj]};

if !([_playerObj, _playerKey] in (uiNamespace getVariable "EPOCH_vgsKeys"))exitWith{diag_log format["[EPOCH VGS]: ReadFromGarage Bad Player and Key - data:%1", [_playerObj, _playerKey]]};

if (_slot isEqualTo -1) exitWith {diag_log format["[EPOCH VGS]: ReadFromGarage Error - slot number is -1 - data:%1", _slot]};

_slots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
if !(_slot < _slots) exitWith {diag_log format["[EPOCH VGS]: ReadFromGarage Error - slot not less than max slots - data:%1", [_slot, _slots]]};

_playerUID = getPlayerUID _playerObj;
_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
if ((_response select 0) isEqualTo 1) then
{
	if (typeName (_response select 1) isEqualTo "ARRAY") then
	{
		_vehsFriendly = _response select 1 select 0;
		_vehsRaw = _response select 1 select 1;
		_toSpawn = _vehsRaw select _slot;
		if (count _toSpawn > 0) then
		{
			_vehsFriendly set [_slot, []]; // Remove the vehicle from garage slot
			_vehsRaw set [_slot, []];
			[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
			_pos = _toSpawn select 4 select 0;
			_veh = createVehicle [_toSpawn select 0, _pos, [], 0, "CAN_COLLIDE"];
			_veh setDir (_toSpawn select 4 select 1);
			_veh call EPOCH_server_setVToken;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			clearBackpackCargoGlobal _veh;
			_hitPoints = _toSpawn select 3;
			if (count _hitPoints > 0) then
			{
				{
					_veh setHitPointDamage [_x select 0, _x select 1];
				} forEach _hitPoints;
			};
			_fuel = _toSpawn select 2;
			_veh setFuel _fuel;
			_veh setVehicleLock "LOCKEDPLAYER";
			_gear = _toSpawn select 1;
				_weapons = _gear select 0;
					{
						_veh addWeaponCargoGlobal [_x, 1];
					} forEach _weapons;
				_mags = _gear select 1;
					{
						_veh addMagazineAmmoCargo [_x select 0, 1, _x select 1];
					} forEach _mags;
				_items = _gear select 2;
					{
						_veh addItemCargoGlobal [_x, _items select 1 select _forEachIndex];
					} forEach (_items select 0);
				_packs = _gear select 3;
					{
						_veh addBackpackCargoGlobal [_x, _packs select 1 select _forEachIndex];
					} forEach (_packs select 0);
			if (_veh isKindOf "Car") then
			{
				_veh engineOn true;
			};
			_veh setOwner (owner _playerObj);
			// Refetch the vehicles from db and send it to Client
			_response2 = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
			if ((_response2 select 0) isEqualTo 1) then
			{
				if (typeName (_response2 select 1) isEqualTo "ARRAY") then
				{
					if not(isNull _playerObj) then
					{
						["Garage", _response2 select 1 select 0] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
						// debug end message
						if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS] Client %1 took his/her %2 from garage", name _playerObj, _toSpawn select 0]};
					};
				};
			};
		};
	};
};