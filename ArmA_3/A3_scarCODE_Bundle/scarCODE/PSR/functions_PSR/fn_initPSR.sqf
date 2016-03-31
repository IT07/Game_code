/*
	Author: IT07

	Description:
	init PSR menu
*/

if not(hasInterface) exitWith {};
"PSR_taskData" addPublicVariableEventHandler
{
	if not(isNull(findDisplay 298)) then
	{
		call SC_fnc_reLoadPsr;
	};
};

"PSR_returnToClient" addPublicVariableEventHandler
{
	_data = _this select 1;
	_mode = _data select 0;
	call
	{
		if (_mode isEqualTo "NEW") exitWith
		{
			_id = _data select 1;
			["PSR_newRequest",[format["New request! #%1", _id]]] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "ANSWERED") exitWith
		{
			_unitAnswered = _data select 1;
			["PSR_requestAnswered",[format["%1 answered your request", _unitAnswered]]] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "PICKED") exitWith
		{
			_assignedTo = _data select 1;
			_id = _data select 2;
			["PSR_requestPicked",[format["%1 accepted #%2", _assignedTo, _id]]] call BIS_fnc_showNotification;

			if not(isNull(findDisplay 298)) then
			{
				_control = (findDisplay 298) displayCtrl 1500;
				_control lbDelete (_this select 1 select 2);
			};
		};

		if (_mode isEqualTo "SENT") exitWith
		{
			["PSR_requestSent"] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "LIMIT") exitWith
		{
			["PSR_maxReached",[format["Request failed! Max global requests limit of %1 reached...", _data select 1]]] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "OFFLINE") exitWith
		{
			["PSR_offLine"] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "TIMEOUT") exitWith
		{
			["PSR_timeOut"] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "PLAYERNOFUNDS") exitWith
		{
			_cost = _data select 1;
			_saldo = _data select 2;
			["PSR_noFunds",[format["Insufficient funds! Costs %1, you have %2", _cost, _saldo]]] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "FUNDSFAIL") exitWith
		{
			_requester = _data select 1;
			["PSR_noFunds",[format["%1 has insufficient funds...", name(_requester)]]] call BIS_fnc_showNotification;
		};

		if (_mode isEqualTo "PAID") exitWith
		{
			systemChat format ["[P.S.R.] You paid %1 Crypto for %2", _data select 1, _data select 2];
		};

		if (_mode isEqualTo "COMPLETED") exitWith
		{
			_unitCompleted = _data select 1;
			_id = _data select 2;
			["PSR_completed",[format["%1 completed request #%2", name(_unitCompleted), _id]]] call BIS_fnc_showNotification;
		};
	};
};

[] spawn SC_fnc_showPsrLive;

[] spawn
{
	waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone"; };
	uiSleep 3;
	systemChat"[PSR Client] Requesting authentication...";
	PSR_getAuth = player;
	publicVariableServer "PSR_getAuth";
	uiSleep 2;
	if (isNil"PSR_getAuth") then
	{
		while {isNil"PSR_authToken"} do
		{
			uiSleep 2;
			if (isNil"PSR_authToken") then
			{
				systemChat"[scarCODE PSR Client] Authentication failed! Retrying...";
			};
		};
	};
	systemChat"[PSR Client] Authenticated!";
};