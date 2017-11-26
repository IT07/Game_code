/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Request Client Key
	
	Returns:
	remoteExecCall to client key info
*/
params [ 
	["_playerObj",objNull,[objNull]], 
	["_token","",[""]] 
];

// debug start message
_debug = "debug" call VGS_fnc_vgsGetServerSetting;
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: RequestKey _data = %1", [_playerObj, _token]]};

if isNull _playerObj exitWith	{diag_log format["[EPOCH VGS]: RequestKey Player isNull - data:%1", _playerObj]};

if !([_playerObj,_token] call EPOCH_server_getPToken) exitWith {diag_log format["[EPOCH VGS]: RequestKey Bad Token - data:%1", _token]};

// Get and check uiNamespace keys array
_keys = uiNamespace getVariable "EPOCH_vgsKeys";
if (isNil "_keys") then { uiNamespace setVariable ["EPOCH_vgsKeys", []] };

// Check for player in keys array
{
	if (_playerObj isEqualTo (_x select 0)) then 
	{
		_keys = _keys - [_x];
		if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: RequestKey removing old player key - data:%1", _x]};
	};
}forEach _keys;

// Get and send new key
_key = call VGS_fnc_vgsGenKey;
_keys pushBack [_playerObj, _key];
["Key", _key] remoteExecCall ["SC_fnc_vgsRecvFromServer",owner _playerObj];
uiNamespace setVariable ["EPOCH_vgsKeys", _keys];

// debug end message
if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS] Client %1 requested his/her vgsKey. Result: %2", name _playerObj, _key]};

// clean up null and dead clients from keys array
_keys = uiNamespace getVariable "EPOCH_vgsKeys";
{
	_k = (_x select 0);
	if isNull _k then
	{
		_keys = _keys - [_x];
		if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: RequestKey removing null player key - data:%1", _x]};
	};
	if not isNull _k then
	{
		if (side _k isEqualTo civilian) then
		{
			_keys = _keys - [_x];
			if (_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: RequestKey removing dead player key - data:%1", _x]};
		};
	};
}forEach _keys;
uiNamespace setVariable ["EPOCH_vgsKeys", _keys];