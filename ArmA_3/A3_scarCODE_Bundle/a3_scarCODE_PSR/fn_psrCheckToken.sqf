/*
	Author: IT07

	Description:
	checks if given ARRAY is infact a valid PSR_authToken

	Params:
	_this select 0: ARRAY - token

	Returns:
	BOOLEAN - true if token is valid, false if invalid
*/

Private ["_bool","_owner","_player","_namePlayer","_uid","_genCode"];

// Define the data sent
_owner = _token select 0;
_player = _token select 1;
_namePlayer = _token select 2;
_uid = _token select 3;
_genCode = _token select 4;

// Let's check if _token has correct count
call
{
	// _token nil checks
	if (isNil"_owner" or isNil"_player" or isNil"_namePlayer" or isNil"_uid" or isNil"_token") exitWith
	{
		diag_log "[scarCODE PSR] WARNING! Nil values in _token";
		_bool = false;
	};

	// _token typeName check
	if not((typeName _owner) isEqualTo "SCALAR" or (typeName _player) isEqualTo "OBJECT" or (typeName _namePlayer) isEqualTo "STRING" or (typeName _uid) isEqualTo "SCALAR" or (typeName _genCode) isEqualTo "STRING") exitWith
	{
		diag_log "[scarCODE PSR] WARNING! Invalid typeName encountered in _token";
		_bool = false;
	};

	// Let's check if provided token is actually broadcasted
	_tokenSearch = PSR_authTokens find [_owner, _player, _namePlayer, _uid, _genCode];
	if (_tokenSearch isEqualTo -1) exitWith
	{
		diag_log format["[scarCODE PSR] WARNING! Token %1 provided, no such distribution", _genCode];
		_bool = false;
	};
_bool = true;
};

_bool