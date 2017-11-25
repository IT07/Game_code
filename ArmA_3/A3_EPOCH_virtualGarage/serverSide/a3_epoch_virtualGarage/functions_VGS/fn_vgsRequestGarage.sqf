/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Request Client Garage
	
	Returns:
	remoteExecCall to client garage contents
*/
private["_debug", "_playerUID", "_response", "_vehData", "_vehsFriendly", "_vehsRaw", "_slots"];
params [ 
	["_playerObj", objNull, [objNull]],
	["_playerKey", "", [""]] 
];
// debug start message
_debug = "debug" call VGS_fnc_vgsGetServerSetting;
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: RequestGarage _data = %1", [_playerObj, _playerKey]]};

if isNull _playerObj exitWith	{diag_log format["[EPOCH VGS]: RequestGarage Player isNull - data:%1", _playerObj]};

if !([_playerObj, _playerKey] in (uiNamespace getVariable "EPOCH_vgsKeys"))exitWith{diag_log format["[EPOCH VGS]: RequestGarage Bad Player and Key - data:%1", [_playerObj, _playerKey]]};

// Data is valid let's get the cars from db and send it to client
_playerUID = getPlayerUID _playerObj;
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
		if not(isNull _playerObj) then
		{
			["Garage", _vehsFriendly] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
			// debug end message
			if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS] Client %1 requested his/her vehicles. Result: %2", name _playerObj, _vehsFriendly]};
		};
	};
};