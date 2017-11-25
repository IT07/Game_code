/*
    Author: IT07
	
	Contributor: DirtySanchez from DonkeyPunch.INFO

    Description:
    moves given selected vehicle INTO the virtual garage

    Params:
    _this select 0: CONTROL - the control which holds the outside vehicles
    _this select 1: SCALAR - the selected index of given CONTROL

    Returns:
    nothing
*/

disableSerialization;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
	if not isNull _dsp then
	{
		_lbOutsideGarage = _dsp displayCtrl 1500; // Define the listbox of outside vehs
		_index = lbCurSel _lbOutsideGarage; // Get currently selected vehicle
		_ctrlFeedback = _dsp displayCtrl 1002;
		if (_index > -1) then
		{
			_garage = EPOCH_vgsMyGarage;
			_ctrlFeedback ctrlSetText "Selected vehicle check #1 complete.";
			_ctrlFeedback ctrlSetText "Building check complete.";
			_range = "range" call SC_fnc_vgsGetClientSetting;
			_vehs = (position player) nearEntities [['Air','Car','MotorCycle','Tank','Ship'], _range];
			if (_index < (count _vehs)) then
			{
				_ctrlFeedback ctrlSetText "Selected vehicle check #2 complete.";
				if not(count _vehs isEqualTo 0) then
				{
					_ctrlFeedback ctrlSetText "Vehicle check #1 complete.";
					_remVeh = [];
					{ // Find non-local vehs and put them into an array
						if not(local _x) then
						{
							_remVeh pushBack _x;
						};
					} forEach _vehs;
					if (count _remVeh > 0) then
					{
						_ctrlFeedback ctrlSetText "Non-local vehicles found.";
						{ // Remove the non-local vehs from _vehs
							private ["_ind"];
							_ind = _vehs find _x;
							_vehs deleteAt _ind;
						} forEach _remVeh;
					};
					_selected = lbCurSel _lbOutsideGarage;
					_veh = _vehs select _index;
					_ctrlFeedback ctrlSetText "Running vehicle checks...";
					if (count (crew _veh) isEqualTo 0) then
					{
						_ctrlFeedback ctrlSetText "Player not in the vehicle.";
						if not(isOnRoad _veh) then
						{
							_ctrlFeedback ctrlSetText "Vehicle pos OK.";
							if (locked _veh isEqualTo 2) then
							{
								_typeOf = typeOf _veh;
								_lbInsideGarage = _dsp displayCtrl 1501; // Define the listbox of inside vehs
								_slot = lbCurSel _lbInsideGarage;
								_ctrlFeedback ctrlSetText "Checking selected slot...";
								if (_slot isEqualTo -1) then
								{
									// Find an empty slot
									private ["_index"];
									_ctrlFeedback ctrlSetText "Trying to find an empty slot...";
									_index = _vehs find [];
									if (_index > -1) then
									{
										_ctrlFeedback ctrlSetText "Empty slot found!";
										_slot = _index;
									};
									if (_index isEqualTo -1) then
									{
										_ctrlFeedback ctrlSetText "No empty slots found. Please select a slot manually.";
									};
								};
								if (_slot > -1) then
								{
									_ctrlFeedback ctrlSetText "Checking if selected slot is in use...";
									if (count (_garage select _slot) isEqualTo 1) then
									{
										_forceRewrite = uiNamespace getVariable "EPOCH_vgsForceRewrite";
										if isNil"_forceRewrite" then
										{
											uiNamespace setVariable ["EPOCH_vgsForceRewrite", -1];
											_forceRewrite = uiNamespace getVariable "EPOCH_vgsForceRewrite";
										};
										if (typeName _forceRewrite isEqualTo "SCALAR") then
										{
											if (_forceRewrite isEqualTo -1) then
											{
												_ctrlFeedback ctrlSetText "Double-click again to confirm overwrite...";
												uiNamespace setVariable ["EPOCH_vgsForceRewrite", 1];
											};
											if (_forceRewrite isEqualTo 1) then
											{
												_ctrlFeedback ctrlSetText format["Now overwriting vehicle in slot %1", _slot];
												_vehs set [_slot, []];
											};
										};
									};
									if not(count (_garage select _slot) isEqualTo 1) then
									{
										_lbInsideGarage ctrlEnable false;
										if not isNil"EPOCH_vgsMyKey" then
										{
											_ctrlFeedback ctrlSetText "Key found.";
											if (typeName EPOCH_vgsMyKey isEqualTo "STRING") then
											{
												_ctrlFeedback ctrlSetText "Key has correct typeName.";
												[_slot, _veh, player, EPOCH_vgsMyKey] remoteExec ["VGS_fnc_vgsWriteToGarage",2];
												_ctrlFeedback ctrlSetText "Requesting data from server...";
												_lbInsideGarage ctrlEnable true;
											};
										};
									};
								};
							};
							if not isNull _veh then
							{
								if not(locked _veh isEqualTo 2) then
								{
									_ctrlFeedback ctrlSetText "Please lock the vehicle.";
								};
							};
						};
						if not isNull _veh then
						{
							if (isOnRoad _veh) then
							{
								_ctrlFeedback ctrlSetText "Vehicle can not be on road.";
							};
						};
					};
					if (count (crew _veh) isEqualTo 1) then
					{
						_ctrlFeedback ctrlSetText "Someone is in that vehicle. Get'm out.";
					};
					if (count (crew _veh) > 1) then
					{
						_ctrlFeedback ctrlSetText "Several players are in that vehicle. Kick'm out.";
					};
				};
			};
		};
	};
};
