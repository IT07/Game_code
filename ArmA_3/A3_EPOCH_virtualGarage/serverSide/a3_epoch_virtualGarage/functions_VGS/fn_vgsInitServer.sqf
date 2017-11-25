/*
	Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	init for a3_epoch_garage
*/

diag_log "///////////////////////////////////////////";
diag_log format["[EPOCH VGS] Starting version %1", ([["cfgPatches","a3_epoch_virtualGarage"],["version"]] call VGS_fnc_vgsGetServerSetting) select 0];
diag_log "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\";

uiNamespace setVariable ["EPOCH_vgsKeys", []];
