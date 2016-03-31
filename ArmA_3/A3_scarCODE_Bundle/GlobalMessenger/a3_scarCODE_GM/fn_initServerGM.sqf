/*
    Author: IT07

    Description:
    server's init for GlobalMessenger
*/

[] spawn
{
    _version = ([["cfgPatches","a3_scarCODE_GM"],["version"]] call SC_fnc_gmGetSetting) select 0;
    diag_log "///////";
    diag_log format["[scarCODE] GlobalMessenger %1 framework LOADING IN...", _version];
    diag_log "///////";
    uiNamespace setVariable ["SC_gmKeys", []];
    uiNamespace setVariable ["SC_gmKeysGivenTo", []];
    SC_gmKeysBusy = false;

    [] spawn
    {
        _uids = ([["GMconfig"],["adminUIDs"]] call SC_fnc_gmGetSetting) select 0;
        while {true} do
        {
            {
                if ((isPlayer _x) AND (side _x) isEqualTo EAST AND (getPlayerUID _x) in _uids AND not(_x in (uiNamespace getVariable "SC_gmKeysGivenTo"))) then
                {
                    _givenTo = uiNamespace getVariable "SC_gmKeysGivenTo";
                    _givenTo pushBack _x;
                    uiNamespace setVariable ["SC_gmKeysGivenTo", _givenTo];
                    SC_gmKey = call SC_fnc_gmGenKey;
                    (owner _x) publicVariableClient "SC_gmKey";
                    _keys = uiNamespace getVariable "SC_gmKeys";
                    if (SC_gmKeysBusy) then
                    {
                        waitUntil { uiSleep 0.5; not SC_gmKeysBusy };
                    };
                    SC_gmKeysBusy = true;
                    _keys pushBack [_x, getPlayerUID _x, SC_gmKey];
                    uiNamespace setVariable ["SC_gmKeys", _keys];
                    SC_gmKeysBusy = false;
                    diag_log format["[scarCODE] GlobalMessenger: KEY GIVEN TO %1 (%2|%3)", name _x, _x, getPlayerUID _x];
                };
            } forEach playableUnits;
            uiSleep 5;
        };
    };

    [] spawn // Cleanup for the given keys
    {
	   while {true} do
	   {
            if (SC_gmKeysBusy) then
            {
                waitUntil { uiSleep 0.5; not SC_gmKeysBusy }; // Make sure that were are not changing anything while keys are written into. Could "corrupt" it
            };
            SC_gmKeysBusy = true;
            _toClean = [];
            _givenKeys = uiNamespace getVariable "SC_gmKeys";
            {
                if not((_x select 0) in playableUnits) then
                {
                    _toClean pushBack _x;
                };
            } forEach _givenKeys;
            {
                _index = _givenKeys find _x;
                _givenKeys deleteAt _index;
            } forEach _toClean;
            SC_gmKeysBusy = false;
            uiSleep (5*60); // Repeat again after 5 minutes
        };
    };

    "SC_gmMessage" addPublicVariableEventHandler
    {
        _data = _this select 1;
        _msg = [_data, 0, [], [[]]] call BIS_fnc_param;
        _header = [_msg, 0, "", [""]] call BIS_fnc_param;
        _sub = [_msg, 1, "", [""]] call BIS_fnc_param;
        _moving = [_msg, 2, "", [""]] call BIS_fnc_param;
        if (_header isEqualTo "" OR _sub isEqualTo "" OR _moving isEqualTo "") exitWith
        {
            diag_log format["[scarCODE] GlobalMessenger ERROR: SC_gmMessage received empty STRING(s)", _msg];
        };
        _auth = [_data, 1, [], [[]]] call BIS_fnc_param;
        _valid = _auth call SC_fnc_gmAuthCheck;
        if not _valid exitWith { diag_log format["[scarCODE] GlobalMessenger ERROR: SC_gmMessage received invalid _auth", _auth]; };
        // We have a valid key
        SC_gmNews = [_header, _sub, _moving];
        {
            (owner _x) publicVariableClient "SC_gmNews";
        } forEach playableUnits;
    };
};
