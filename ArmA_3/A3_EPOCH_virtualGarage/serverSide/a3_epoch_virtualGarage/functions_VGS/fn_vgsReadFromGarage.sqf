/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Read from client Garage
	
	Returns:
	remoteExecCall to client garage contents
*/

private["_slots", "_debug", "_playerUID", "_response", "_vehsFriendly", "_vehsRaw", "_toSpawn", "_veh", "_safePOS", "_allHitpoints", "_actualHitpoints", "_dmg", "_response2"];
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
		_toSpawn params [
			["_vehClass", "", [""]],
			["_gear", [[],[],[[],[]],[[],[]]]],
			["_fuel", 1, [1]],
			["_hitPoints", []],
			["_position", [[0,0,0],0], [ [[0,0,0],0] ] ]
		];
		if (count _toSpawn > 0) then
		{
			_vehsFriendly set [_slot, []]; // Remove the vehicle from garage slot
			_vehsRaw set [_slot, []];
			[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
			_veh = createVehicle [_vehClass, [0,0,0], [], 0, "CAN_COLLIDE"];
			if!(_veh isKindOf 'SHIP')then{
				_safePOS = [_position select 0,1,50,10,0,20,0] call BIS_fnc_findSafePos;
			}else{
				_safePOS = [_position select 0,1,80,10,1,20,0] call BIS_fnc_findSafePos;
			};
			_veh setPosATL _safePOS;
			_veh setDir (_position select 1);
			_veh call EPOCH_server_setVToken;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			clearBackpackCargoGlobal _veh;
			_allHitpoints = getAllHitPointsDamage _veh;
			if !(_allHitpoints isEqualTo []) then{
				_actualHitpoints = _allHitpoints select 0;
				if ((count _actualHitpoints) == (count _hitpoints)) then{
					{
						_dmg = _hitpoints param [_forEachIndex,0];
						_veh setHitIndex [_forEachIndex, _dmg];
					} forEach _actualHitpoints;
				};
			};
			_veh setFuel _fuel;
			_veh setVehicleLock "LOCKEDPLAYER";
			_gear params [
				["_weapons", [] ],
				["_mags", [] ],
				["_items", [[],[]] ],
				["_packs", [[],[]] ]
			];
			{
				_veh addWeaponCargoGlobal [_x, 1];
			} forEach _weapons;
			{
				_veh addMagazineAmmoCargo [_x select 0, 1, _x select 1];
			} forEach _mags;
			{
				_veh addItemCargoGlobal [_x, _items select 1 select _forEachIndex];
			} forEach (_items select 0);
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