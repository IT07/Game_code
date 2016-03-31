/*
    Author: IT07

    Description:
    handles the sending of a global message to all clients. Server will check if sender is valid.
*/

// First check if the sender is authorized...
disableSerialization;
_display = uiNamespace getVariable "SC_gmDisplay";
if (isNil"SC_gmKey" OR isNull _display) exitWith { closeDialog 0; systemChat"[GM] ERROR! No such _key"; };
_headerCtrl = _display displayCtrl 1400;
    _headerTxt = ctrlText _headerCtrl;
_subCtrl = _display displayCtrl 1401;
    _subTxt = ctrlText _subCtrl;
_movingCtrl = _display displayCtrl 1402;
    _movingTxt = ctrlText _movingCtrl;
SC_gmMessage = [[_headerTxt, _subTxt, _movingTxt],[player, getPlayerUID player, SC_gmKey]];
publicVariableServer "SC_gmMessage";
closeDialog 0;
