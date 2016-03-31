/*
    Author: IT07

    Description:
    will simply check if given auth data is actually from a valid admin
*/

_playerObj = [_auth, 0, objNull, [objNull]] call BIS_fnc_param;
_uid = [_auth, 1, "", [""]] call BIS_fnc_param;
_key = [_auth, 2, "", [""]] call BIS_fnc_param;
if (count _auth isEqualTo 0 OR isNull _playerObj OR _uid isEqualTo "" OR _key isEqualTo "") exitWith
{
    diag_log format["[scarCODE] GlobalMessenger ERROR: SC_gmAuthCheck FAILED with incorrect values in _auth: %1", _auth];
    false
};
_settings = [["GMconfig"],["serverPass","adminUIDs"]] call SC_fnc_gmGetSetting;
_pass = _settings select 0;
_uids = _settings select 1;
_keys = uiNamespace getVariable "SC_gmKeys";
_findKey = _keys find [_key, _playerObj, _uid];
if not(_uid in _uids OR _findKey isEqualTo -1) exitWith { false };
true
