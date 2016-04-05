/*
    Author: IT07

    Description:
    will wait for given vars to NOT be equal to eachother

    Params:
    _this select 0: ANYTHING - this will be compared to (_this select 1);
    _this select 1: STRING - name of missionNamespace var to compare (_this select 0)

    Returns:
    BOOLEAN - true if the var changed
*/

private ["_dsp","_done"];
_dsp = uiNamespace getVariable "VGSdisplay";
_done = false;
if not isNil"_dsp" then
{
    if not isNull _dsp then
    {
        _ctrlFeedback = _dsp displayCtrl 1002;
        _before = [_this, 0, "", ["",[],0]] call BIS_fnc_param;
        if not (_before isEqualTo "") then
        {
            _toCheck = [_this, 1, "", [""]] call BIS_fnc_param;
            if not (_toCheck isEqualTo "") then
            {
                _count = 0;
                waitUntil { uiSleep 0.1; _count = _count + 0.1; (_count > 5 OR not(_before isEqualTo (missionNamespace getVariable _toCheck))) };
                if (_count < 5) then
                {
                    _done = true;
                };
            };
        };
    };
};
_done
