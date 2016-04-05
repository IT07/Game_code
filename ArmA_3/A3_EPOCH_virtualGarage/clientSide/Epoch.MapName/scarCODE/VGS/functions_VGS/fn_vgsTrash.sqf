/*
	Author: IT07

	Description:
	will delete selected vehicle INSIDE the virtual garage

	Params:
	none

	Returns:
	nothing
*/

disableSerialization;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
	if not isNull _dsp then
	{
		_vehs = EPOCH_vgsMyGarage;
		if not isNil"_vehs" then
		{
			if (typeName _vehs isEqualTo "ARRAY") then
			{
				if (count _vehs > 0) then
				{
					_ctrlFeedback = _dsp displayCtrl 1002;
					_lbInsideGarage = _dsp displayCtrl 1501;
					_curSel = lbCurSel _lbInsideGarage;
					if (_curSel > -1) then
					{
						if (_curSel < (count _vehs +1)) then
						{
							_veh = [_vehs, _curSel, [], [[]]] call BIS_fnc_param;
							if (count _veh isEqualTo 1) then
							{
								if isNil"EPOCH_vgsPV" then
								{
									if not isNil"EPOCH_vgsMyKey" then
									{
										_ctrlFeedback ctrlSetText "Key found.";
										if (typeName EPOCH_vgsMyKey isEqualTo "STRING") then
										{
											_ctrlFeedback ctrlSetText "Key has correct typeName.";
											EPOCH_vgsPV = ["Trash",[_curSel, player, EPOCH_vgsMyKey]];
											publicVariableServer "EPOCH_vgsPV";
											EPOCH_vgsPV = nil;
											_ctrlFeedback ctrlSetText "Requesting data from server...";
											_changed = [_vehs, "EPOCH_vgsMyGarage"] call SC_fnc_vgsWaitForChange;
											if _changed then
											{
												_reload = ["Inside"] call SC_fnc_vgsRefresh;
												_ctrlFeedback ctrlSetText "Vehicle deleted.";
											};
										};
									};
								};
							};
						};
					};
				};
			};
		};
	};
};
