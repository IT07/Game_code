/*
    Author: IT07

    Description:
    handles the sending of a global message to all clients. Server will check if sender is valid.
*/

// First check if the sender is authorized...
disableSerialization;
_display = uiNamespace getVariable "SC_globalMessengerDisplay";
if not isNil"SC_globalMessengerKey" then
{
    if not isNil"_display" then
    {
        if not isNull _display then
        {
            _headerCtrl = _display displayCtrl 1400;
            _headerTxt = ctrlText _headerCtrl;
            _subCtrl = _display displayCtrl 1401;
            _subTxt = ctrlText _subCtrl;
            _movingCtrl = _display displayCtrl 1402;
            _movingTxt = ctrlText _movingCtrl;
            SC_gmMessage = [[_headerTxt, _subTxt, _movingTxt],[player, getPlayerUID player, SC_globalMessengerKey]];
            publicVariableServer "SC_globalMessengerMessage";
            closeDialog 0;
        };
    };
};
