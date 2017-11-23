/*
    Author: IT07

    Description:
    refreshes either the outside or inside vehicles of VGS's garage

    Params:
    _this select 0: STRING - mode. "Outside" or "Inside"

    Returns:
    BOOLEAN: true if everything went ok
*/

private ["_mode","_dsp","_ok"];
_ok = false;
_dsp = uiNamespace getVariable "VGSdisplay";
if not isNil"_dsp" then
{
    if not isNull _dsp then
    {
        _mode = [_this, 0, "", [""]] call BIS_fnc_param;
        if not (_mode isEqualTo "") then
        {
            switch _mode do
            {
                case "Outside":
                {
                    private ["_lbOutsideGarage","_ctrlNoVehs","_ctrlFeedBack","_range","_vehs","_remVeh","_ctrlFeedBack","_ctrlGiveNameBgWhite","_ctrlGiveNameBgMain","_ctrlGiveVehName"];
                    _lbOutsideGarage = _dsp displayCtrl 1500;
                    _lbOutsideGarage ctrlEnable false;
                    lbClear _lbOutsideGarage;
                    _buttonMoveIn = _dsp displayCtrl 1600;
                    _ctrlNoVehs = _dsp displayCtrl 1006;
                    _ctrlFeedBack  = _dsp displayCtrl 1002;
                    _range = "range" call SC_fnc_vgsGetClientSetting;
                    _vehs = (position player) nearEntities [['Air','Car','MotorCycle','Tank','Ship'], _range];
                    if (count _vehs > 0) then
                    {
                        private ["_remVeh"];
                        _remVeh = [];
                        { // Find non-local vehs and put them into _remVeh for later removal
                            if not(local _x) then
                            {
                                _remVeh pushBack _x;
                            };
                        } forEach _vehs;
                        if (count _remVeh > 0) then
                        {
                            { // Remove the non-local vehs from _vehs
                                private ["_index"];
                                _index = _vehs find _x;
                                _vehs deleteAt _index;
                            } forEach _remVeh;
                        };
                    };
                    // Check if there are still enough vehicles left
                    if (count _vehs > 0) then
                    {
                        if not(ctrlEnabled _lbOutsideGarage) then
                        {
                            _lbOutsideGarage ctrlEnable true
                        };
                        if (ctrlFade _ctrlNoVehs <= 1) then
                        {
                            _ctrlNoVehs ctrlEnable false;
                            _ctrlNoVehs ctrlSetFade 1;
                            _ctrlNoVehs ctrlCommit 0.3;
                        };
                        {
                            if (ctrlFade _x > 0) then
                            {
                                _x ctrlSetFade 0;
                                _x ctrlCommit 0.05;
                                waitUntil { uiSleep 0.01; ctrlCommitted _x };
                                if not(ctrlEnabled _x) then
                                {
                                    _x ctrlEnable true
                                };
                            };
                        } forEach [_buttonMoveIn];
                        {
                            if (_x isKindOf "AllVehicles") then
                            {
                                private ["_add"];
                                switch true do
                                {
                                    case (_x isKindOf "Car"):
                                    {
                                        _add = true
                                    };
                                    case (_x isKindOf "Tank"):
                                    {
                                        _add = true
                                    };
                                    case (_x isKindOf "Air"):
                                    {
                                        _add = true
                                    };
                                    case (_x isKindOf "MotorCycle"):
                                    {
                                        _add = true
                                    };
									case (_x isKindOf "Ship"):
                                    {
                                        _add = true
                                    };
                                    default
                                    {
                                        _add = false
                                    };
                                };
                                if _add then
                                {
                                    private ["_cn","_dn","_ic","_ind","_errors"];
                                    _cn = typeOf _x; // CLassName
                                    _dn = getText (configFile >> "cfgVehicles" >> _cn >> "displayname");
                                    _ic = getText (configFile >> "cfgVehicles" >> _cn >> "icon");
                                    _errors = [];
                                    if (isOnRoad _x) then { _errors pushBack "ON ROAD" };
                                    if not(locked _x isEqualTo 2) then { _errors pushBack "UNLOCKED" };
                                    if (count _errors isEqualTo 0) then { _errors = "" };
                                    _ind = _lbOutsideGarage lbAdd format["%1 (%2m) %3", _errors, round(_x distance player), _dn];
                                };
                            };
                        } forEach _vehs;
                        _lbOutsideGarage ctrlSetFade 0;
                        _lbOutsideGarage ctrlCommit 0.5;
                        _ctrlFeedBack  ctrlSetText format["%1 personal vehicles found", count _vehs];
                        _lbOutsideGarage ctrlEnable true;
                        _buttonMoveIn ctrlEnable true;
                        _ok = true;
                    };
                    if not _ok then
                    {
                        if (count _vehs isEqualTo 0) then
                        {
                            _ok = true;
                            if (ctrlEnabled _lbOutsideGarage) then
                            {
                                _lbOutsideGarage ctrlEnable false
                            };
                            if (ctrlFade _lbOutsideGarage < 1) then
                            {
                                _lbOutsideGarage ctrlSetFade 1;
                                _lbOutsideGarage ctrlCommit 0.5;
                            };
                            if (ctrlFade _ctrlNoVehs > 0) then
                            {
                                _ctrlNoVehs ctrlSetFade 0;
                                _ctrlNoVehs ctrlCommit 0.5;
                                _ctrlFeedBack ctrlSetText format["No personal vehicles found within %1 meters", _range];
                            };
                        };
                    };
                };
                case "Inside":
                {
                    private ["_lbInsideGarage","_ctrlFeedback"];
                    _ctrlFeedBack  = _dsp displayCtrl 1002;
                    if not isNil"EPOCH_vgsMyGarage" then
                    {
                        if (typeName EPOCH_vgsMyGarage isEqualTo "ARRAY") then
                        {
                            if (count EPOCH_vgsMyGarage > 0) then
                            {
                                _lbInsideGarage = _dsp displayCtrl 1501;
                                _moveOut = _dsp displayCtrl 1601;
                                lbClear _lbInsideGarage;
                                {
                                    private["_cancel","_vehName"];
                                    if (count _x isEqualTo 1) then
                                    {
                                        _vehName = [_x, 0, "", [""]] call BIS_fnc_param;
                                        if not(_vehName isEqualTo "") then
                                        {
                                            _ctrlFeedback ctrlSetText "Vehicle name validated.";
                                            _dspName = getText (configFile >> "CfgVehicles" >> _vehName >> "displayName");
                                            _lbIndex = _lbInsideGarage lbAdd _dspName;
                                            _icon = getText (configFile >> "CfgVehicles" >> _vehName >> "icon");
                                            _lbInsideGarage lbSetPictureRight [_lbIndex, _icon];
                                        };
                                    };
                                    if not(count _x isEqualTo 1) then
                                    {
                                        if (count _x isEqualTo 0) then
                                        {
                                            private ["_lbIndex"];
                                            _lbIndex = _lbInsideGarage lbAdd format["Empty vehicle slot %1", _forEachIndex];
                                        };
                                        if not(count _x isEqualTo 0) then
                                        {
                                            private ["_lbIndex"];
                                            _lbIndex = _lbInsideGarage lbAdd format["Corrupted slot %1", _forEachIndex];
                                        };
                                    };
                                } forEach EPOCH_vgsMyGarage;
                                _lbInsideGarage ctrlEnable true;
                                _moveOut ctrlEnable true;
                                _ctrlFeedback ctrlSetText "Garage loaded.";
                                _ok = true;
                            };
                        };
                    };
                };
                default
                {
                };
            };
        };
    };
};
_ok
