////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
////// SCRIPT NAME: scarCODE PVE Script                   \\\\\\
///// VERSION: v0.1342b BETA                               \\\\\
//// AUTHOR: IT07				                            \\\\
/// GITHUB: https://github.com/IT07/A3_ScarCode_ScriptBundle \\\
// EMAIL: it07@scarcode.com                                   \\
////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

/////// Config ///////
_PvPZone = true; // Requires a trigger on the map with name PvP_Zone
_PvEbyDefault = true; // Sets default mode to PvE if true
_debug = false; // If true, will display data in hintSilent
/////// End of config ///////

if not(hasInterface) exitWith {};
[_PvPZone, _PvEbyDefault, _debug] spawn
{
	_PvPZone = _this select 0;
	_PvEbyDefault = _this select 1;
	_debug = _this select 2;

	if (hasInterface) then
	{
		if (_PvEbyDefault) then
		{
			SC_PvE = true;
		} else { SC_PvE = false; };

		if (_PvPZone) then
		{
			_pvpZoneLoop = [_debug] spawn
			{
				_debug = _this select 0;
				while { true } do
				{
					call
					{
						if (triggerActivated PvP_Zone) exitWith
						{
							if (SC_PvE) then
							{
								SC_PvE = false;
							};
						};
						if not(triggerActivated PvP_Zone) exitWith
						{
							if (not SC_PvE) then
							{
								SC_PvE = true;
							};
						};
					};

					if (_debug) then
					{
						hintSilent parseText format["<t size='2'>DEBUG</t><br /><br />isPlayer? %1<br />in PvP zone? %2<br />PvE mode? %3<br />cursorTarget in PvP zone? %4<br />PvP zone active? %5<br />", isPlayer cursorTarget, player in (list PvP_Zone), SC_PvE, cursorTarget in (list PvP_Zone), triggerActivated PvP_Zone];
					};
				uiSleep 0.2;
				};
			};
		};

		"SC_PVBkillMessage" addPublicVariableEventHandler
		{
			if(isPlayer(_this select 1 select 0) and isPlayer(_this select 1 select 0)) then
			{
				systemChat format ["ALERT! %1 was murdered in PvE zone by %2", name (_this select 1 select 0), name (_this select 1 select 1)];
			};
		};

		waitUntil { uiSleep 0.5; !isNull(findDisplay 46); !isNil"EPOCH_loadingScreenDone" };
		uiSleep 2;
		_PvEplayerEH = player addEventHandler ["Fired", "if(SC_PvE)then{if (isPlayer cursorTarget)then {deleteVehicle(_this select 6)};}"];
		systemChat format ["#%1 | {ScarCode} Anti-PvP framework loaded...", _PvEplayerEH];

		waitUntil { uiSleep 0.5; (vehicle player != player); };
		_PvEvehicleEH = vehicle player addEventHandler ["Fired", "if(SC_PvE)then{if (isPlayer cursorTarget)then {deleteVehicle(_this select 6)};}"];
		systemChat format ["#%1 | {ScarCode} Anti-PvP vehicle mode loaded...", _PvEvehicleEH];
	};
};