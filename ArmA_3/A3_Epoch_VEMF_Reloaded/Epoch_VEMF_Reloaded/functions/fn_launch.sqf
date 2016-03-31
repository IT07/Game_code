/*
	Author: IT07

	Description:
	launches VEMF (duuuuuuuuuuuuuuuuh) :P
*/

["Launcher", 3, format["/////// Starting VEMF %1 \\\\\\\", getNumber (configFile >> "CfgPatches" >> "Epoch_VEMF_Reloaded" >> "version")]] call VEMFr_fnc_log;
uiNamespace setVariable ["VEMFrUsedLocs", []];
uiNamespace setVariable ["VEMFrHcLoad", []];
[] spawn VEMFr_fnc_checkLoot; // Check loot tables if enabled
[] spawn VEMFr_fnc_missionTimer; // Launch mission timer
