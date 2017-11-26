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
_gear = [[],[],[[],[]],[[],[]]]; // 0: Weapons | 1: Mags | 2: Items | 3: Backpacks

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
				};
			};
		};
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
			};
		};
	};
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
_hitpoints = (getAllHitPointsDamage _vehObj) param [2,[]];

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
		} forEach [_typeOf, _gear, _fuel, _hitpoints, [_pos, _dir]];
		[format["EPOCH_vgsOwnedVehs_%1", _playerUID], _playerUID, [_vehsFriendly, _vehsRaw]] call EPOCH_fnc_server_hiveSET;
		{
			moveOut _x;
		} forEach (crew _vehObj);
		deleteVehicle _vehObj;
		if not(isNull _playerObj) then
		{
			["Garage", _vehsFriendly] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
			// debug end message
			if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: WriteToGarage Client (%1) put his/her %2 in garage", name _playerObj, _typeOf]};
		};
	};
};