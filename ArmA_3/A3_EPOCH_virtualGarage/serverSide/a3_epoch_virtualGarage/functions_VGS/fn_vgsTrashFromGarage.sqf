/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Trash(Delete) Vehicle from client Garage
	
	Returns:
	remoteExecCall to client updated garage contents
*/
params [ 
	["_slot", -1, [0]],
	["_playerObj", objNull, [objNull]],
	["_playerKey", "", [""]] 
];
// debug start message
_debug = "debug" call SC_fnc_vgsGetClientSetting;
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: TrashFromGarage _data = %1", [_slot, _playerObj, _playerKey]]};

if isNull _playerObj exitWith	{diag_log format["[EPOCH VGS]: TrashFromGarage Player isNull - data:%1", _playerObj]};

if !([_playerObj, _playerKey] in (uiNamespace getVariable "EPOCH_vgsKeys"))exitWith{diag_log format["[EPOCH VGS]: TrashFromGarage Bad Player and Key - data:%1", [_playerObj, _playerKey]]};

if (_slot isEqualTo -1) exitWith {diag_log format["[EPOCH VGS]: TrashFromGarage Error - slot number is -1 - data:%1", _slot]};

_slots = "maxGarageSlots" call VGS_fnc_vgsGetServerSetting;
if !(_slot < _slots) exitWith {diag_log format["[EPOCH VGS]: TrashFromGarage Error - slot not less than max slots - data:%1", [_slot, _slots]]};

_playerUID = getPlayerUID _playerObj;
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
		if not(isNull _playerObj) then
		{
			["Garage", _vehsFriendly] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
			// debug end message
			if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS] Client %1 trashed slot %2 from garage", name _playerObj, _slot]};
		};
	};
};