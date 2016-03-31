/*
	Author: IT07

	Description:
	init file for Server Info Menu
*/

if not(hasInterface) exitWith {};
// Live uptime and players
[] spawn SC_fnc_setLiveSimData;
"DynamicBlur" ppEffectEnable true;
