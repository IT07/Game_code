/*
	Author: IT07

	Description:
	spawned by onLBSelChanged. Displays data for selected mag
*/

disableSerialization;
_dsp = 291;
if (isNull(findDisplay _dsp)) exitWith {};
_index = _this select 0 select 1;
_lbUnMerged = (findDisplay _dsp) displayCtrl 2100;
_rscPic = (findDisplay _dsp) displayCtrl 1200;
_output = (findDisplay _dsp) displayCtrl 1001;
_note = (findDisplay _dsp) displayCtrl 1003;
if ((ctrlText _note) isEqualTo "WARNING! One of your magazines is still loaded") exitWith
{
	_output ctrlSetText "CANCELED...";
};
_cn = _lbUnMerged lbData _index;
_icon = getText (configFile >> "cfgMagazines" >> _cn >> "picture");
_rscPic ctrlSetText _icon;
_max = getNumber (configFile >> "cfgMagazines" >> _cn >> "count");
_totalMagsOfType = 0;
_usedMagsOfType = 0;
_maxBullets = 0;
_curBullets = 0;
{
	if ((_x select 0) isEqualTo _cn) then
	{
		_totalMagsOfType = _totalMagsOfType + 1;
		if not((_x select 1) isEqualTo _max) then
		{
			_usedMagsOfType = _usedMagsOfType + 1;
		};
		_maxBullets = _maxBullets + _max;
		_curBullets = _curBullets + (_x select 1);
		_output ctrlSetText format["USED MAGS %1 | FULL MAGS %2", _usedMagsOfType, (_totalMagsOfType - _usedMagsOfType)];
		playSound ["ReadOutClick", true];
		uiSleep (0.25 + random 0.15);
	};
} forEach (magazinesAmmoFull player);

// Check if used mags is lower than 2
if (_usedMagsOfType < 2) exitWith
{
	_output ctrlSetText "STOPPING... 1 MAG NOT ENOUGH TO REPACK WITH"
};

// Done processing...
_note ctrlSetBackgroundColor [0.176,0.741,0.337,0.7];
_note ctrlSetText "MAGS LOADED! WAITING FOR SELECTION...";