/*
    Author: IT07

	Contributor: DirtySanchez from DonkeyPunch.INFO

    Description:
    moves given selected vehicle OUT of the virtual garage

    Params:
    _this select 0: CONTROL - the control that holds the inside vehicles
    _this select 1: SCALAR - the selecte index of given CONTROL

    Returns:
    nothing
*/

disableSerialization;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
    if not isNull _dsp then
    {
        _lbInsideGarage = _dsp displayCtrl 1501; // Define the listbox of inside vehs
        _ctrlFeedback = _dsp displayCtrl 1002;
        if not isNull _lbInsideGarage then
        {
            _slot = lbCursel _lbInsideGarage; // Get currently selected vehicle
            if (_slot > -1) then
            {
                _ctrlFeedback ctrlSetText "Selected slot check #1 complete.";
                _vehs = EPOCH_vgsMyGarage;
                if (_slot < (count _vehs)) then
                {
                    _ctrlFeedback ctrlSetText "Selected slot check #2 complete.";
                    if (count (_vehs select _slot) isEqualTo 1) then
                    {
                        _ctrlFeedback ctrlSetText "Used slot selected.";
                        _lbInsideGarage ctrlEnable false;
                        if not isNil"EPOCH_vgsMyKey" then
                        {
                            _ctrlFeedback ctrlSetText "Key found.";
                            if (typeName EPOCH_vgsMyKey isEqualTo "STRING") then
                            {
                                _ctrlFeedback ctrlSetText "Key has correct typeName.";
								[_slot, player, EPOCH_vgsMyKey] remoteExec ["VGS_fnc_vgsReadFromGarage",2];
                                _ctrlFeedback ctrlSetText "Requesting data from server...";
                            };
                        };
                    };
                };
            };
        };
    };
};
