/*
	Author: IT07

	Description:
	loads content into SAR menu
*/

_dsp = 291;
if (isNull(findDisplay _dsp)) exitWith { systemChat"[scarCODE DEBUG] You can not call this function. NANANANANAA"; };
private ["_dspn","_mag","_abort"];
disableSerialization;
_lbUnMerged = (findDisplay _dsp) displayCtrl 2100;
_rscPic = (findDisplay _dsp) displayCtrl 1200;
_output = (findDisplay _dsp) displayCtrl 1001;
_mergeButton = (findDisplay _dsp) displayCtrl 1600;
_note = (findDisplay _dsp) displayCtrl 1003;
_magTypes = [];
{
	_cn = _x select 0;
	_max = getNumber (configFile >> "cfgMagazines" >> _cn >> "count");
	_dspn = getText (configFile >> "cfgMagazines" >> _cn >> "displayname");
	if (NOT((_x select 1) isEqualTo _max) AND (_x select 2)) exitWith
	{
		_note ctrlSetBackgroundColor [0.741,0.18,0.18,0.7];
		_note ctrlSetText format["Please remove %1 from weapon and try again.", _dspn];
		lbClear _lbUnMerged;
		_abort = true;
	};
	if (NOT((_x select 1) isEqualTo _max) AND NOT (_cn in _magTypes) AND NOT(_x select 2)) then
	{
		_dspn = getText (configFile >> "cfgMagazines" >> _cn >> "displayname");
		_mag = _lbUnMerged lbAdd _dspn;
		_lbUnMerged lbSetData [_mag, _cn];
		_magTypes pushBack _cn;
	};
	uiSleep 0.05;
} forEach (magazinesAmmoFull player); // magazinesAmmoFull does not mean only full mags...
if NOT(isNil"_abort") exitWith
{
	_output ctrlSetText "ERROR...";
	_mergeButton ctrlSetTextColor [1,1,1,0.3];
};
if ((COUNT _magTypes) isEqualTo 0) exitWith
{
	_output ctrlSetText "NO USED MAGAZINES FOUND...";
	_mergeButton ctrlSetTextColor [1,1,1,0.3];
};

_lbUnMerged lbSetCurSel 0;
