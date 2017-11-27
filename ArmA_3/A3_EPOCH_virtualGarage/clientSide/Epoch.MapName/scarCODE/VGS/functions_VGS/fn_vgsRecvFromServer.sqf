/*
	Author: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Handles data from the VGS Server
*/
private[];
params [ "_type", "_data" ];

diag_log str([_type, _data]);

switch _type do {
	case "Key" : {EPOCH_vgsMyKey = _data};
	case "Garage" : {EPOCH_vgsMyGarage = _data};
};

disableSerialization;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
	if not isNull _dsp then
	{
		_ctrlFeedback = _dsp displayCtrl 1002;
		_ctrlFeedback ctrlSetText "Reloading garage vehicles...";
		_inside = ["Inside"] call SC_fnc_vgsRefresh;
		if _inside then
		{
			_ctrlFeedback ctrlSetText "Reloading outside vehicles...";
			_outside = ["Outside"] call SC_fnc_vgsRefresh;
			if _outside then
			{
				_ctrlFeedback ctrlSetText "Loading done.";
			};
		};
	};
};