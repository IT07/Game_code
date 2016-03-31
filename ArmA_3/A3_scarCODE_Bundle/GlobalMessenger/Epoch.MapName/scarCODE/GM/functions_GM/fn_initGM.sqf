/*
    Author: IT07

    Description:
    initializes the Global Messenger menu
*/

[] spawn
{
    waitUntil { uiSleep 2; not(isNull(findDisplay 46)); not(isNil"EPOCH_loadingScreenDone") };
    uiSleep 2;
	"SC_gmNews" addPublicVariableEventHandler
    {
        _news = _this select 1;
        [_news select 0, _news select 1, _news select 2] spawn SC_fnc_newsMessage;
    };
    if isNil"SC_gmKey" exitWith {};
    _key = "key" call SC_fnc_gmGetSetting;
    _keyDown = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) isEqualTo "+ str _key +") then { createDialog 'SC_gmDiag'; };false;"];
    "DynamicBlur" ppEffectEnable true;
};
