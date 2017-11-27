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
_response = ["VirtualGarage", _playerUID] call EPOCH_fnc_server_hiveGETRANGE;
if((_response select 1) isEqualTo []) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Client DB entry error - data:%1m", _response]};
if ((_response select 0) isEqualTo 1) then
{
	if (typeName (_response select 1) isEqualTo "ARRAY") then
	{
		_vehsFriendly = _response select 1 select 0;
		_vehsRaw = _response select 1 select 1;
		_toSpawn = _vehsRaw select _slot;
		_toSpawn params ["_vehClass","_position","_damage","_hitPoints","_fuel","_gear","_ammo","_texture","_baseClass"];		
		_position params [
			["_pos", [ [0,0,0],[0,0,0] ] ],
			["_vectorDir", [0,0,0]],
			["_vectorUp", [0,0,0]]
		];
		if (count _toSpawn > 0) then
		{
			_vehsFriendly set [_slot, []]; // Remove the vehicle from garage slot
			_vehsRaw set [_slot, []];
			_expiresVG = "expiresVirtualGarage" call VGS_fnc_vgsGetServerSetting;
			_return = ["VirtualGarage", _playerUID, _expiresVG, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSETEX;
			_veh = createVehicle [_vehClass, _pos select 0, [], 0, "CAN_COLLIDE"];
			//if(_veh isKindOf 'SHIP')then{
			//	_safePOS = [_pos select 0,1,80,10,1,20,1] call BIS_fnc_findSafePos;
			//};
			_veh allowDamage false;
			_veh setvectorDirAndUp [_vectorDir,_vectorUp];
			_veh call EPOCH_server_setVToken;
			_veh setFuel _fuel;
			_veh setVehicleLock "LOCKEDPLAYER";
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			clearBackpackCargoGlobal _veh;
			[_veh,_gear] call EPOCH_server_CargoFill;
			_veh setOwner (owner _playerObj);
			
			// apply persistent textures
			_cfgEpochVehicles = 'CfgEpochVehicles' call EPOCH_returnConfig;
			_availableColorsConfig = (_cfgEpochVehicles >> _vehClass >> "availableColors");
			if (isArray(_availableColorsConfig)) then {
				_colors = getArray(_availableColorsConfig);
				_textureSelectionIndex = (_cfgEpochVehicles >> _vehClass >> "textureSelectionIndex");
				_selections = if (isArray(_textureSelectionIndex)) then { getArray(_textureSelectionIndex) } else { [0] };
				_count = (count _colors) - 1;
				{
					_textures = _colors select 0;
					if (_count >= _forEachIndex) then {
						_textures = _colors select _forEachIndex;
					};
					_veh setObjectTextureGlobal [_x, _textures  select _color];
				} forEach _selections;
				_veh setVariable ["VEHICLE_TEXTURE", _color];
			};
			if !(_baseClass isequalto "") then {
				_veh setvariable ["VEHICLE_BASECLASS",_baseClass];
			};
			_disableVehicleTIE = [_serverSettingsConfig, "disableVehicleTIE", true] call EPOCH_fnc_returnConfigEntry;
			// disable thermal imaging equipment
			if (_disableVehicleTIE) then {
				_veh disableTIEquipment true;
			};
			_removeweapons = [_serverSettingsConfig, "removevehweapons", []] call EPOCH_fnc_returnConfigEntry;
			if !(_removeweapons isequalto []) then {
				{
					_veh removeWeaponGlobal _x;
				} foreach _removeweapons;
			};
			_removemagazinesturret = [_serverSettingsConfig, "removevehmagazinesturret", []] call EPOCH_fnc_returnConfigEntry;
			if !(_removemagazinesturret isequalto []) then {
				{
					_veh removeMagazinesTurret _x;
				} foreach _removemagazinesturret;
			};
			// remove and add back magazines
			if !(_ammo isequalto []) then {
				if ((_ammo select 0) isequaltype true) then {
					{
						_veh removeMagazinesTurret [_x select 0, _x select 1];
					} foreach magazinesAllTurrets _veh;
					{
						if ((_x select 2) > 0) then {
							_veh addMagazineTurret [_x select 0,_x select 1,_x select 2];
						};
					} foreach (_ammo select 1);
				}
				else
				{
					{_veh removeMagazineGlobal _x}count (magazines _veh);
					{_veh addMagazine _x}count _ammo;
				};
			};
			
			_veh allowDamage true;
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
			
			// Refetch the vehicles from db and send it to Client
			_response2 = ["VirtualGarage", _playerUID] call EPOCH_fnc_server_hiveGETRANGE;
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