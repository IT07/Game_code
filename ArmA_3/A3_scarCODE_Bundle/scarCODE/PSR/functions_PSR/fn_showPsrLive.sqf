/*
	Author: IT07

	Description:
	keeps refreshing units online indicator whilst psr is open

	Params:
	none

	Returns:
	nothing
*/

disableSerialization;
_dsp = 298;
while {true} do
{
	waitUntil { not(isNull(findDisplay _dsp)) }; // Wait for menu to be open
	_statTxt = (findDisplay _dsp) displayCtrl 1001;
	_statColor = (findDisplay _dsp) displayCtrl 2202;
	_sendButton = (findDisplay _dsp) displayCtrl 1600;
	uiSleep (random 0.5); // Pretend the loading time is different everytime lol
	call
	{
		if (count PSR_activeUnits > 0) exitWith
		{
			_sendButton ctrlSetTextColor [1,1,1,1];
			_statTxt ctrlSetText format ["SUPPORT UNITS: %1", count PSR_activeUnits];
		 	_statColor ctrlSetBackgroundColor [0.247,0.875,0.439,1];
		};
		if (count PSR_activeUnits isEqualTo 0) exitWith
		{
			_sendButton ctrlSetTextColor [1,1,1,0.3];
			_statTxt ctrlSetText "SUPPORT IS OFFLINE";
			_statColor ctrlSetBackgroundColor [0.875,0.306,0.247,1];
		};
	};
	waitUntil { isNull(findDisplay _dsp) };
};