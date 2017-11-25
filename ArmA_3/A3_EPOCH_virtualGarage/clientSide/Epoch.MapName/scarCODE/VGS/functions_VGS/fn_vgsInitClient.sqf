/*
	Author: IT07
	
	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Client init file for Virtual Garage System menu
*/

if not hasInterface exitWith {};
[] spawn
{
	if not isNull(findDisplay 46) exitWith
 	{
		if not isNil"EPOCH_loadingScreenDone" then
		{
			["[EPOCH VGS] ERROR! fn_initClientVGS called when display 46 AND EPOCH_loadingScreenDone are not(isNull/isNil)"] call BIS_fnc_errorMsg
		};
	};

	waitUntil { uiSleep 2; (not(isNull(findDisplay 46)) AND not(isNil"EPOCH_loadingScreenDone")) };
	
	EPOCH_vgsMyKey = "";
	[player, Epoch_personalToken] remoteExec ["VGS_fnc_vgsRequestKey",2];
	
	_debug = "debug" call SC_fnc_vgsGetClientSetting;
	if(_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ClientInit requesting key = %1", EPOCH_vgsMyKey]};
	
	_addAction = "useScrollWheel" call SC_fnc_vgsGetClientSetting;
	if(_addAction isEqualTo 1)then
	{
		_aa = player addAction ["<t size='2' shadow='0'>VGS</t>",{createDialog'SC_vgsDiag';}, "", -1, false, true,"","call SC_fnc_dynaMenuCondition",("maxDistanceFromJammer" call SC_fnc_vgsGetClientSetting)];
		if(_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ClientInit added action = %1", _aa]};
	};
	
	waitUntil { uiSleep 0.5; not(EPOCH_vgsMyKey isEqualTo "") };
	if(_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ClientInit received key = %1", EPOCH_vgsMyKey]};
	
	EPOCH_vgsMyGarage = [];
	[player, EPOCH_vgsMyKey] remoteExec ["VGS_fnc_vgsRequestGarage",2];
	if(_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ClientInit requesting garage = %1", EPOCH_vgsMyGarage]};
	
	waitUntil { uiSleep 0.5; not(EPOCH_vgsMyGarage isEqualTo []) };
	if(_debug isEqualTo 1) then {diag_log format["[EPOCH VGS]: ClientInit received garage = %1", EPOCH_vgsMyGarage]};
};
