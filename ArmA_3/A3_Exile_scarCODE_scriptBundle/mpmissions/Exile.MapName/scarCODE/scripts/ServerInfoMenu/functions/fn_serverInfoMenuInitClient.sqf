/*
	Author: IT07

	Description:
	init file for Server Info Menu
*/

if hasInterface then
{
	// Live uptime and players
	[] spawn SC_fnc_serverInfoMenuSetLiveData;
	"DynamicBlur" ppEffectEnable true;
};
