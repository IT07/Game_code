/*
	Author: IT07

	Description:
	init for a3_epoch_garage
*/

diag_log "///////////////////////////////////////////";
diag_log format["[EPOCH VGS] Starting version %1", ([["cfgPatches","a3_epoch_virtualGarage"],["version"]] call VGS_fnc_vgsGetServerSetting) select 0];
diag_log "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\";

"EPOCH_vgsPV" addPublicVariableEventHandler
{
	_packet = [_this, 1, [], [[]]] call BIS_fnc_param;
	if (count _packet > 1) then
	{
		if (count _packet < 3) then
		{
			_data = [_packet, 1, [],[[]]] call BIS_fnc_param;
			if (count _data > 1) then
			{
				switch (_this select 1 select 0) do // Mode
				{
					case "Request":
					{
						if (count _data isEqualTo 2) then
						{
							Private ["_player","_exitLog"];
							_player = [_data, 0, objNull, [objNull]] call BIS_fnc_param; // Put sent value into var
							if not isNull _player then
							{
								_key = [_data, 1, "", [""]] call BIS_fnc_param;
								if ([_player, _key] in (uiNamespace getVariable "EPOCH_vgsKeys")) then
								{
									// Data is valid let's get the cars from db and send it to client
									_playerUID = getPlayerUID _player;
									_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
									if isNil"_response" then { _response = [1,[[],[]]] };
									_vehData = _response select 1;
									if (_vehData isEqualTo []) then
									{
										_vehData = [[],[]];
									};
									if ((_response select 0) isEqualTo 1) then
									{
										if (typeName _vehData isEqualTo "ARRAY") then
										{
											_vehsFriendly = _vehData select 0;
											_vehsRaw = _vehData select 1;
											_slots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
											if (count _vehsFriendly < _slots) then
											{
												if (count _vehsRaw < _slots) then
												{
													for "_s" from 1 to (_slots-(count _vehsFriendly)) do
													{
														_vehsFriendly pushBack [];
														_vehsRaw pushBack [];
													};
												};
												// Save changes to DB
												[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
											};
											if (count _vehsFriendly > _slots) then
											{
												if (count _vehsRaw > _slots) then
												{
													for "_s" from 1 to ((count _vehsFriendly)-_slots) do
													{
														_vehsFriendly resize _slots;
														_vehsRaw resize _slots;
													};
												};
												// Save changes to DB
												[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
											};
											if not(isNull _player) then
											{
												EPOCH_vgsMyGarage = _vehsFriendly;
												(owner _player) publicVariableClient "EPOCH_vgsMyGarage";
												diag_log format["[EPOCH VGS] Client %1 requested his/her vehicles. Result: %2", name _player, EPOCH_vgsMyGarage];
												EPOCH_vgsMyGarage = nil;
											}
										}
									}
								}
							}
						}
					};

					case "Write":
					{
						if (count _data isEqualTo 4) then
						{
							_playerObj = [_data, 2, objNull, [objNull]] call BIS_fnc_param;
							if not isNull _playerObj then
							{
								_key = [_data, 3, "", [""]] call BIS_fnc_param;
								if ([_playerObj, _key] in (uiNamespace getVariable "EPOCH_vgsKeys")) then
								{
									private ["_vehs"];
									// Get the given slot selected
									_slot = [_data, 0, -1, [0]] call BIS_fnc_param;
									if (_slot > -1) then
									{
										_slots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
										if (_slot < _slots) then
										{
											// Get the vehicle
											_vehObj = [_data, 1, objNull, [objNull]] call BIS_fnc_param;
											if not isNull _vehObj then
											{
												if not isPlayer _vehObj then
												{
													// do additional checks
													if ((owner _vehObj) isEqualTo (owner _playerObj)) then
													{
														_blacklist = "vehBlacklist" call VGS_fnc_vgsGetServerSetting;
														if not(typeOf _vehObj in _blacklist) then
														{
															_maxDist = "range" call SC_fnc_vgsGetClientSetting;
															if (((position _playerObj) distance (position _vehObj)) < _maxDist) then
															{
																// Get the player
																diag_log format["[EPOCH VGS] EPOCH_vgsWrite: _data = %1", _data];
																// Define player's UID
																_playerUID = getPlayerUID _playerObj;
																// Define the classname of _veh
																_typeOf = typeOf _vehObj;
																// Get the storage usage
																_gear = [[],[],[],[]]; // 0: Weapons | 1: Mags | 2: Items | 3: Backpacks
																{
																	(_gear select 1) pushBack [_x select 0, _x select 1];
																} forEach (magazinesAmmoCargo _vehObj);
																_gear set [2, getItemCargo _vehObj];
																_itemCount = 0;
																{
																	_itemCount = _itemCount + _x;
																} forEach ((_gear select 2) select 1);
																{
																	(_gear select 0) pushBack (_x select 0);
																	_silencer = _x select 1;
																	if not(_silencer isEqualTo "") then { (_gear select 2 select 0) pushBack _silencer; (_gear select 2 select 1) pushBack 1 };
																	_light = _x select 2;
																	if not(_light isEqualTo "") then { (_gear select 2 select 0) pushBack _light; (_gear select 2 select 1) pushBack 1 };
																	_scope = _x select 3;
																	if not(_scope isEqualTo "") then { (_gear select 2 select 0) pushBack _scope; (_gear select 2 select 1) pushBack 1 };
																	if (count _x > 5) then
																	{
																		_mag = _x select 4;
																		if not(_mag isEqualTo "") then { (_gear select 1) pushBack [_mag select 0, _mag select 1] };
																		_bipod = _x select 5;
																		if not(_bipod isEqualTo "") then
																		{
																			_found = (_gear select 2 select 0) find _bipod;
																			switch _found do
																			{
																				case -1:
																				{
																					(_gear select 2 select 0) pushBack _bipod;
																					(_gear select 2 select 1) pushBack 1;
																				};
																				default
																				{
																					_count = (_gear select 2 select 1) select _found;
																					_count = _count + 1;
																					(_gear select 2 select 1) set [_found, _count];
																				}
																			}
																		}
																	};
																	if (count _x isEqualTo 5) then
																	{
																		_bipod = _x select 4;
																		if not(_bipod isEqualTo "") then
																		{
																			_found = (_gear select 2 select 0) find _bipod;
																			if (_found isEqualTo -1) then
																			{
																				(_gear select 2 select 0) pushBack _bipod;
																				(_gear select 2 select 1) pushBack 1
																			};
																			if (_found > -1) then
																			{
																				_count = (_gear select 2 select 1) select _found;
																				_count = _count + 1;
																				(_gear select 2 select 1) set [_found, _count]
																			}
																		}
																	}
																} forEach (weaponsItemsCargo _vehObj);
																_gear set [3, getBackpackCargo _vehObj];
																_packCount = 0;
																{
																	_packCount = _packCount + _x;
																} forEach ((_gear select 3) select 1);
																_pos = getPosATL _vehObj;
																_dir = getDir _vehObj;
																// Get the fuel level of _veh
																_fuel = fuel _vehObj;
																// Get the hitPoint(s) damage of given vehicle
																_hitPoints = [configFile >> "CfgVehicles" >> _typeOf >> "HitPoints",0] call BIS_fnc_returnChildren;
																_damagedParts = [];
																{
																	if (_vehObj getHitPointDamage (configName _x) > 0) then
																	{
																		_partDamage = _vehObj getHitPointDamage (configName _x);
																		_overallDamage = _overallDamage + _partDamage;
																		_damagedParts pushBack [configName _x, _partDamage];
																	};
																} forEach _hitPoints;
																// Get existing vehicles
																_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
																if ((_response select 0) isEqualTo 1) then
																{
																	if (typeName (_response select 1) isEqualTo "ARRAY") then
																	{
																		_vehsFriendly = _response select 1 select 0;
																		_vehsRaw = _response select 1 select 1;
																		if not(count _vehsFriendly isEqualTo 0) then
																		{ // If there is already a vehicle, clear it
																			_vehsFriendly set [_slot, []];
																			_vehsRaw set [_slot, []];
																		};
																		(_vehsFriendly select _slot) pushBack _typeOf;
																		{
																			(_vehsRaw select _slot) pushBack _x
																		} forEach [_typeOf, _gear, _fuel, _damagedParts, [_pos, _dir]];
																		[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
																		{
																			moveOut _x;
																		} forEach (crew _vehObj);
																		_vehObj setDamage 1;
																		deleteVehicle _vehObj;
																		if not(isNull _playerObj) then
																		{
																			EPOCH_vgsMyGarage = _vehsFriendly;
																			(owner _playerObj) publicVariableClient "EPOCH_vgsMyGarage";
																			diag_log format["[EPOCH VGS] Client (%1) put his/her %2 in garage", name _playerObj, _typeOf];
																			EPOCH_vgsMyGarage = nil;
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
					 				}
								}
							}
						}
					};

					case "Read":
					{
						if (count _data isEqualto 3) then
						{
							_playerObj = [_data, 1, objNull, [objNull]] call BIS_fnc_param;
							if not isNull _playerObj then
							{
								_key = [_data, 2, "", [""]] call BIS_fnc_param;
								if ([_playerObj, _key] in (uiNamespace getVariable "EPOCH_vgsKeys")) then
								{
									private ["_vehsFriendly","_vehsRaw"];
									_requested = [_data, 0, -1, [0]] call BIS_fnc_param;
									if (_requested > -1) then
									{
										_playerUID = getPlayerUID _playerObj;
										_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
										if ((_response select 0) isEqualTo 1) then
										{
											if (typeName (_response select 1) isEqualTo "ARRAY") then
											{
												_vehsFriendly = _response select 1 select 0;
												_vehsRaw = _response select 1 select 1;
												_maxSlots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
												if (_requested < _maxSlots) then
												{
													_toSpawn = _vehsRaw select _requested;
													if (count _toSpawn > 0) then
													{
														_vehsFriendly set [_requested, []]; // Remove the vehicle from garage slot
														_vehsRaw set [_requested, []];
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
														_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
														if ((_response select 0) isEqualTo 1) then
														{
															if (typeName (_response select 1) isEqualTo "ARRAY") then
															{
																if not(isNull _playerObj) then
																{
																	EPOCH_vgsMyGarage = _response select 1 select 0;
																	(owner _playerObj) publicVariableClient "EPOCH_vgsMyGarage";
																	diag_log format["[EPOCH VGS] Client %1 took his/her %2 from garage", name _playerObj, _toSpawn select 0];
																	EPOCH_vgsMyGarage = nil;
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					};
                    case "Trash":
					{
						if (count _data isEqualTo 3) then
						{
							_player = [_data, 1, objNull, [objNull]] call BIS_fnc_param;
							if not isNull _player then
							{
								_key = [_data, 2, "", [""]] call BIS_fnc_param;
								if ([_player, _key] in (uiNamespace getVariable "EPOCH_vgsKeys")) then
								{
									_slot = [_data, 0, -1, [0]] call BIS_fnc_param;
									if (_slot > -1) then
									{
										_maxSlots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
										if (_slot < _maxSlots) then
										{
											_playerUID = getPlayerUID _player;
											_response = [format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID] call EPOCH_fnc_server_hiveGET;
											if ((_response select 0) isEqualTo 1) then
											{
												if (typeName (_response select 1) isEqualTo "ARRAY") then
												{
													_vehsFriendly = _response select 1 select 0;
													_vehsFriendly set [_slot, []];
													_vehsRaw = _response select 1 select 1;
													_vehsRaw set [_slot, []];
													[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
													if not(isNull _player) then
													{
														EPOCH_vgsMyGarage = _vehsFriendly;
														(owner _player) publicVariableClient "EPOCH_vgsMyGarage";
														EPOCH_vgsMyGarage = nil;
													}
												}
											}
										}
									}
								}
							}
						}
					};
					default {};
				}
			}
		}
	}
};

[] spawn
{ // My cute little secure and unbreakable key generator/sender :)
	_givenTo = [];
	uiNamespace setVariable ["EPOCH_vgsKeys", []];
	while {true} do
	{
		if not(count _givenTo isEqualTo 0) then
		{ // If _givenTo array isn't empty, loop through it to see if there are any non-existent units in it
			private ["_rem"];
			_rem = [];
			{
				if isNull _x then
				{
					_rem pushBack _x;
				};
				if not isNull _x then
				{
					if (side _x isEqualTo civilian) then
					{
						_rem pushBack _x;
					};
				};
			} forEach _givenTo;
			if not(count _rem isEqualTo 0) then
			{
				{
					_index = _givenTo find _x;
					_givenTo deleteAt _index;
				} forEach _rem;
			}
		};

		if not(count playableUnits isEqualTo 0) then
		{
			_keys = uiNamespace getVariable "EPOCH_vgsKeys";
			//check the variable
			if not isNil"_keys" then
			{
				if (typeName _keys isEqualTo "ARRAY") then
				{
					{
						if not(_x in _givenTo) then
						{
							if (isPlayer _x) then
							{
								if not(side _x isEqualTo civilian) then
								{
									_key = call VGS_fnc_vgsGenKey;
									_keys pushBack [_x, _key];
									EPOCH_vgsMyKey = _key;
									(owner _x) publicVariableClient "EPOCH_vgsMyKey";
									EPOCH_vgsMyKey = nil;
									_givenTo pushBack _x;
								};
							}
						}
					} forEach playableUnits;
				};
				if not(typeName _keys isEqualTo "ARRAY") then
				{
					uiNamespace setVariable ["EPOCH_vgsKeys", []];
				};
			};
			if isNil"_keys" then
			{
				uiNamespace setVariable ["EPOCH_vgsKeys", []];
			}
		};
		uiSleep 3;
	}
};
