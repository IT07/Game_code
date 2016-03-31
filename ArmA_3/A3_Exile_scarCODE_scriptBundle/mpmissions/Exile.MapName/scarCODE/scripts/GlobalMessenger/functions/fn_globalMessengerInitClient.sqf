/*
    Author: IT07

    Description:
    initializes the Global Messenger menu
*/

[] spawn
{
	"SC_gmNews" addPublicVariableEventHandler
    {
        _news = _this select 1;
        [_news select 0, _news select 1, _news select 2] spawn SC_fnc_globalMessengerNewsMessage;
    };
    _key = "key" call SC_fnc_globalMessengerGetSetting;
    waitUntil { uiSleep 1; not isNull(findDisplay 46); isNull(findDisplay 101); isNull(findDisplay 24001); isNull(findDisplay 24002) };
    //uiSleep 2;
    //if not isNil"SC_gmKey" then
    //{
        _keyUp = (findDisplay 46) displayAddEventHandler ["KeyUp","if ((_this select 1) isEqualTo "+ str _key +") then { createDialog 'SC_globalMessengerDiag'; };false;"];
        "DynamicBlur" ppEffectEnable true;
    //};
};
