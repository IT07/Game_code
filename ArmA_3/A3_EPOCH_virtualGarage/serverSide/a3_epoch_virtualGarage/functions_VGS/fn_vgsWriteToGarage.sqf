/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Write Vehicle to client Garage
	
	Returns:
	remoteExecCall to client updated garage contents
*/
params [ 
	["_slot", -1, [0]],
	["_vehObj", objNull, [objNull]],
	["_playerObj", objNull, [objNull]],
	["_playerKey", "", [""]] 
];
// debug start message
_debug = "debug" call SC_fnc_vgsGetClientSetting;
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: WriteToGarage _data = %1", [_slot, _vehObj, _playerObj, _playerKey]]};

if isNull _playerObj exitWith	{diag_log format["[EPOCH VGS]: WriteToGarage Player isNull - data:%1", _playerObj]};

if !([_playerObj, _playerKey] in (uiNamespace getVariable "EPOCH_vgsKeys"))exitWith{diag_log format["[EPOCH VGS]: WriteToGarage Bad Player and Key - data:%1", [_playerObj, _playerKey]]};

if (_slot isEqualTo -1) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Error - slot number is -1 - data:%1", _slot]};

_slots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
if !(_slot < _slots) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Error - slot not less than max slots - data:%1", [_slot, _slots]]};

if isNull _vehObj exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Vehicle isNull - data:%1", _vehObj]};

if isPlayer _vehObj exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Vehicle isPlayer - data:%1", _vehObj]};

if !((owner _vehObj) isEqualTo (owner _playerObj)) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Player not Vehicle Owner - data:%1", _vehObj]};

_blacklist = "vehBlacklist" call VGS_fnc_vgsGetServerSetting;
if (typeOf _vehObj in _blacklist) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Vehicle is BlackListed - data:%1", _vehObj]};

_maxDist = "range" call SC_fnc_vgsGetClientSetting;
if !(((position _playerObj) distance (position _vehObj)) < _maxDist) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Vehicle is too far > data:%1m", _maxDist]};

// Define player's UID
_playerUID = getPlayerUID _playerObj;
// Define the classname of _veh
_typeOf = typeOf _vehObj;
// Get the storage usage
_inventory = _vehObj call EPOCH_server_CargoSave;

_pos = getPosATL _vehObj;
_dir = getDir _vehObj;
// Get the fuel level of _veh
_fuel = fuel _vehObj;
// Get the hitPoint(s) damage of given vehicle
_hitpoints = (getAllHitPointsDamage _vehObj) param [2,[]];

// Get existing vehicles
_response = ["VirtualGarage", _playerUID] call EPOCH_fnc_server_hiveGETRANGE;
if((_response select 1) isEqualTo []) exitWith {diag_log format["[EPOCH VGS]: WriteToGarage Client DB entry error - data:%1m", _response]};
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
		} forEach [_typeOf, [(getposATL _vehObj call EPOCH_precisionPos),vectordir _vehObj,vectorup _vehObj], damage _vehObj, _hitpoints, _fuel, _inventory, [true,magazinesAllTurrets _vehObj], _vehObj getVariable ["VEHICLE_TEXTURE",0], _vehObj getVariable ["VEHICLE_BASECLASS",""]];
		_expiresVG = "expiresVirtualGarage" call VGS_fnc_vgsGetServerSetting;
		_return = ["VirtualGarage", _playerUID, _expiresVG, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSETEX;
		{
			moveOut _x;
		} forEach (crew _vehObj);
		[_vehObj, format["VGSMoveIn_%1",_playerUID]] call  EPOCH_server_save_killedVehicle;
		deleteVehicle _vehObj;
		if not(isNull _playerObj) then
		{
			["Garage", _vehsFriendly] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
			// debug end message
			if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: WriteToGarage Client (%1) put his/her %2 in garage", name _playerObj, _typeOf]};
		};
	};
};