/*
	Author: IT07

	Description:
	checks if given mags can be packed or not. Does if so.
*/

_dsp = 291;
while {not(isNull(findDisplay 291))} do
{
	private ["_cancel"];
	disableSerialization;
	_lbMags = (findDisplay _dsp) displayCtrl 2100;
	_output = (findDisplay _dsp) displayCtrl 1001;
	_curSel = lbCurSel _lbMags;
	_cn = _lbMags lbData _curSel; // Get the classname
	_max = getNumber (configFile >> "cfgMagazines" >> _cn >> "count");
	_usedMags = 0;
	_fullMags = 0;
	_roundsInUsed = [];
	_sentences = ["UNDERSTOOD! CHECKING...","WORKING...","I'M ON IT...","GIVE ME A MINUTE...","OK GOT IT. THINKING...","GIVE ME A SECOND...","YEP, I'LL DO THAT...","OK, WORKING ON IT...","PATIENCE PLEASE...","NOOOOO FATAL ERROR! (just kidding lol)"];
	_randomSentence = _sentences select floor random count _sentences;
	_output ctrlSetText _randomSentence;
	{
		if ((_x select 0) isEqualTo _cn AND not((_x select 1) isEqualTo _max)) then
		{
			_usedMags = _usedMags + 1;
			_roundsInUsed pushBack [_forEachIndex, (_x select 1)];
		};
		if ((_x select 1) isEqualTo _max) then
		{
			_fullMags = _fullMags + 1;
		};
		uiSleep ((count magazinesAmmoFull player) / 300);
	} forEach (magazinesAmmoFull player);
	if (_usedMags < 2) exitWith
	{
		_output ctrlSetText "FAILED. NOT ENOUGH MAGS TO REPACK...";
	};
	player removeMagazines _cn;
	uiSleep (1 + random 1);
	_output ctrlSetText "Repacking!";
	_magsToAdd = _fullMags;
	_roundsFromUsed = 0;
	{
		_roundsFromUsed = _roundsFromUsed + (_x select 1);
		if (_roundsFromUsed > _max OR _roundsFromUsed isEqualTo _max) then
		{
			_magsToAdd = _magsToAdd + 1;
			_roundsFromUsed = _roundsFromUsed - _max;
		};
	} forEach _roundsInUsed;
	player addMagazines [_cn, _magsToAdd];
	player addMagazine [_cn, _roundsFromUsed];
	if (true) exitWith
	{
		_output ctrlSetText format["REPACKED! %1 MAGS FULL AND 1 WITH %2 ROUNDS", _magsToAdd, _roundsFromUsed];
	};
};