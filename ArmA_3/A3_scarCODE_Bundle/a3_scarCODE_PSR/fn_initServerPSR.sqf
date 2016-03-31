/*
	Author: IT07

	Description:
	serverside scripting for the support menu

	Params:
	none

	Returns: nothing
*/

#include "putUIDsInHere.sqf"

///////  END OF CONFIG  //////
diag_log "[scarCODE PSR] starting...";
PSR_activeUnits = [];
publicVariable "PSR_activeUnits";
PSR_reqCount = 0;
PSR_taskData = [];
PSR_authTokens = [];

"PSR_ask" addPublicVariableEventHandler
{
	Private ["_error","_exit"];
	_reqIndex = _this select 1 select 0; // Type of request (SCALAR)
	_comment = _this select 1 select 1; // Comment (STRING)
	_token = _this select 1 select 2; // Token (ARRAY)
	diag_log format["scarCODE PSR] PSR_ask: _token = %1", _token];
	// Check if any data sent isNil
	if ((isNil"_reqIndex") or (isNil"_comment") or (isNil"_token")) exitWith
	{
		_error = "Encountered Nil data";
	};

	// Check if any data has incorrect typeName
	if not((typeName _reqIndex) isEqualTo "SCALAR" or (typeName _comment) isEqualTo "STRING" or (typeName _token) isEqualTo "ARRAY") exitWith
	{
		_error = "Encountered incorrect typeName";
	};

	// We have valid typenames, let us check the rest of the data
	_types = (["supportTypes"] call SC_fnc_getPsrSetting) select 0;
	if (_reqIndex > ((count _types) +1) or _reqIndex < 0) exitWith
	{
		_error = "no valid _reqIndex given";
	};

	if not(isNil"_error") exitWith
	{
		_log = format["WARNING! Server received invalid request with reason: %1", _error];
		_log call SC_fnc_psrDiagLog;
	};

	_valCheck = call SC_fnc_psrCheckToken;
	if not(_valCheck) exitWith
	{
		_log = "WARNING! _valCheck for request returned false. Exiting...";
		_log call SC_fnc_psrDiagLog;
	};

	// Ok, finally, the validation is done :) Let's do something with the data
	_player = _token select 1;
	_requestType = _types select _reqIndex;
	_maxRequests = (["maxRequests"] call SC_fnc_getPsrSetting) select 0;

	// If no units are ONLINE
	if ((count PSR_activeUnits) isEqualTo 0) exitWith
	{
		PSR_returnToClient = ["OFFLINE"]; (owner _player) publicVariableClient "PSR_returnToClient";
	};

	// If max requests amount has been reached
	if (PSR_reqCount > _maxRequests) exitWith
	{
		PSR_returnToClient = ["LIMIT",PSR_reqCount];
		(owner _player) publicVariableClient "PSR_returnToClient";
	};

	// Check cost and funds
	_prices = (["prices"] call SC_fnc_getPsrSetting) select 0;
	_getIndex = _types find _requestType;
	_cost = _prices select _getIndex;
	_costIndex = EPOCH_customVars find 'Crypto';
	_vars = _player getVariable['VARS',[]+EPOCH_defaultVars_SEPXVar];
	_curcrypt = _vars select _costIndex;

	// If player does not have enough Crypto
	if (_curcrypt < _cost) exitWith
	{
		PSR_returnToClient = ["PLAYERNOFUNDS", _cost, _curcrypt];
		(owner _player) publicVariableClient "PSR_returnToClient";
	};

	PSR_reqCount = PSR_reqCount + 1;
	_task = [_player, mapGridPosition _player, _requestType, _comment, (count PSR_taskData)+1, false];
	PSR_taskData pushBack _task;
	_taskID = _task select 4;
	{
		PSR_returnToClient = ["NEW", _taskID];
		(owner _x) publicVariableClient "PSR_returnToClient";
		(owner _x) publicVariableClient "PSR_taskData";
	} forEach PSR_activeUnits;

	PSR_returnToClient = ["SENT",PSR_reqCount];
	(owner _player) publicVariableClient "PSR_returnToClient";
};

////////////////////////////////////////////////////////
// Used for when support unit double clicks an lbItem //
"PSR_takeRequest" addPublicVariableEventHandler
{
	_task = _this select 1 select 0;
	_token = _this select 1 select 1;

	if ((count PSR_activeUnits) isEqualTo 0) exitWith
	{
		_log = "ALERT! There are no units online but still request is sent?.... hmz....";
		_log call SC_fnc_psrDiagLog;
	};

	// Let's validate the data
	if (isNil"_task" or isNil"_token") exitWith
	{
		_log = "WARNING! PSR_takeRequest received isNil values";
		_log call SC_fnc_psrDiagLog;
	};

	// TypeNames check
	if not((typeName _task) isEqualTo "ARRAY" or (typeName _token) isEqualTo "ARRAY") exitWith
	{
		_log = "WARNING! PSR_takeRequest received invalid typeNames";
		_log call SC_fnc_psrDiagLog;
	};

	// Try to find _task in current tasks
	_findTask = PSR_taskData find _task;
	if (_findTask isEqualTo -1) exitWith
	{
		_log = "WARNING! PSR_takeRequest received unknown task! Exiting...";
		_log call SC_fnc_psrDiagLog;
	};

	// _token not isNil, let's check contents
	_valCheck = _token call SC_fnc_psrCheckToken;
	if not(_valCheck) exitWith
	{
		_log = "WARNING! _valCheck for takeRequest returned false. Exiting...";
		_log call SC_fnc_psrDiagLog;
	};

	// Define some vars
	_unit = _token select 1;
	_requester = _task select 0;
	_requestType = _task select 2;
	_value = _task select 5;

	if not(_unit in PSR_activeUnits) exitWith
	{
		diag_log format["PSR_takeRequest FAILED: _unit %1 not in activeUnits!", _unit];
	};

	_isAssignedTo = _task select 5;
	call
	{
		if((typeName _isAssignedTo) isEqualTo "BOOL") exitWith
		{
			if not(_isAssignedTo) then
			{
				Private ["_exit"];
				_types = (["supportTypes"] call SC_fnc_getPsrSetting) select 0;
				_prices = (["prices"] call SC_fnc_getPsrSetting) select 0;
				// Check cost
				_getIndex = _types find _requestType;
				_cost = _prices select _getIndex;
				_costIndex = EPOCH_customVars find 'Crypto';
				_vars = _requester getVariable['VARS',[]+EPOCH_defaultVars_SEPXVar];
				_curcrypt = _vars select _costIndex;
				if (_curcrypt < _cost) exitWith
				{
					PSR_returnToClient = ["FUNDSFAIL", _requester];
					(owner _player) publicVariableClient "PSR_returnToClient";
				};

				_newcrypt = _curcrypt - _cost;
				[['effectCrypto', _newcrypt], owner _requester] call EPOCH_sendPublicVariableClient;
				_vars set[_costIndex,_newcrypt];
				_requester setVariable["VARS",_vars];
				PSR_returnToClient = ["PAID", _cost, _requestType];
				(owner _requester) publicVariableClient "PSR_returnToClient";

				// Update the task
				_task = PSR_taskData select _findTask;
				_task set [5, _unit];
				{
					(owner _x) publicVariableClient "PSR_taskData";
					PSR_returnToClient = ["PICKED", name _unit, (_findTask +1)];
					(owner _x) publicVariableClient "PSR_returnToClient";
				} forEach PSR_activeUnits;

				PSR_returnToClient = ["ANSWERED", name _unit];
				(owner _requester) publicVariableClient "PSR_returnToClient";
			};
		};

		if ((typeName _isAssignedTo) isEqualTo "OBJECT") exitWith
		{
			if (isPlayer _isAssignedTo) then
			{
				_removed = PSR_taskData deleteAt _findTask;
				{
					(owner _x) publicVariableClient "PSR_taskData";
					PSR_returnToClient = ["COMPLETED", _isAssignedTo, (_findTask +1)];
					(owner _x) publicVariableClient "PSR_returnToClient";
				} forEach PSR_activeUnits;
			};
		};
	};
};

"PSR_getAuth" addPublicVariableEventHandler
{
	_from = _this select 1;

	if (isNil"_from") exitWith
	{
		_log = "WARNING! PSR_getAuth: _client isNil";
		_log call SC_fnc_psrDiagLog;
	};

	// Check if _client has typeName OBJECT
	if not((typeName _from) isEqualTo "OBJECT") exitWith
	{
		_log = "WARNING! PSR_getAuth ERROR: _client no such OBJECT";
		_log call SC_fnc_psrDiagLog;
	};

	// Check if _client exists
	if (isNull _from) exitWith
	{
		_log = "WARNING! PSR_getAuth received objNull";
		_log call SC_fnc_psrDiagLog;
	};

	// Check if _client is a player
	if not(isPlayer _from) exitWith
	{
		_log = "WARNING! PSR_getAuth ERROR: _client is not a player";
		_log call SC_fnc_psrDiagLog;
	};

	// Check if _client is a playableUnit
	if not(_from in playableUnits) exitWith
	{
		_log = "WARNING! PSR_getAuth ERROR: _client is not in playableUnits";
		_log call SC_fnc_psrDiagLog;
	};

	// Check if _client does not have auth yet
	{
		if (_from in _x) exitWith
		{
			_log = format["WARNING! PSR_getAuth ERROR: _client %1 already has a token!", _from];
			_log call SC_fnc_psrDiagLog;
		};
	} forEach PSR_authTokens;

	// _client does not have token. Generate and send
	_from call SC_fnc_psrSendToken;

	// If _client is a support unit, add him to the list of active units
	_uid = getPlayerUID _from;
	if not(_uid in PSR_units) exitWith
	{
		_log = format["INFO: Regular player %1 logged in", name _from];
		_log call SC_fnc_psrDiagLog;
	};

	// UID is from a support Unit
	PSR_activeUnits pushBack _from;
	publicVariable"PSR_activeUnits";
};

[] spawn
{
	while {true} do
	{
		{
			if not(_x in playableUnits) then // Check if unit is ingame
			{
				PSR_activeUnits deleteAt _forEachIndex; // Delete unit from active units ARRAY
			};
		} forEach PSR_activeUnits; // Checks for logged in units and sets tokens
		uiSleep 5; // Do it every 5 seconds
	};
};

_log = "init DONE!";
_log call SC_fnc_psrDiagLog;