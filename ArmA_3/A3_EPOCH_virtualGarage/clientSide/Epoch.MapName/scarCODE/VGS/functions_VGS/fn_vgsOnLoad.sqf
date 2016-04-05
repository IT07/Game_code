/*
	Author: IT07

	Description:
	deals with the content of the VGS menu
*/

disableSerialization;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
	if not isNull _dsp then
	{
		_ctrlFeedback = _dsp displayCtrl 1002;
		_moveIn = _dsp displayCtrl 1600;
 		_moveIn ctrlEnable false;
		_moveOut = _dsp displayCtrl 1601;
		_moveOut ctrlEnable false;
		_ctrlFeedback ctrlSetText "Loading outside vehicles...";
		_load = ["Outside"] call SC_fnc_vgsRefresh;
		if _load then
		{
			_ctrlFeedback ctrlSetText "Loading inside vehicles...";
			_load = ["Inside"] call SC_fnc_vgsRefresh;
			if _load then
			{
				_ctrlFeedback ctrlSetText "Loading done.";
			};
		};
	};
};
