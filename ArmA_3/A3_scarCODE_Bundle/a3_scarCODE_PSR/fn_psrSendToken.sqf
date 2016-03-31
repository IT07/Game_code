/*
	Author: IT07

	Description:
	sends generated token to given client

	Params:
	_this select 0: OBJECT - player to send it to

	Returns:
	BOOLEAN - true if everything went ok
*/

_client = _this; // Client
_log = format["psrSendToken INFO: generating for %1", _client];
_log call SC_fnc_psrDiagLog;
_token = call SC_fnc_psrGenToken;
PSR_authToken = [(owner _client), _client, name _client, getPlayerUID _client, _token];
(owner _client) publicVariableClient "PSR_authToken";
PSR_authTokens pushBack PSR_authToken;
_token