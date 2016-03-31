
/*
	File: fn_AAN.sqf
	Author: Karel Moricky, edited by IT07

	Description:
	It's showtime!

	Parameter(s):
	_this select 0: STRUCTURED TEXT: Header text (usage: _var = parseText "STRING");
	_this select 1: STRUCTURED TEXT: Bottom text (moving)

	Returns:
	Nothing
*/

disableserialization;
_header = _this select 0;
_sub = _this select 1;
_line = _this select 2;
_speed = 0.5;
([] call bis_fnc_rscLayer) cutrsc ["rscNews","plain"];
_display = uiNamespace getVariable "SC_NEWS";

_redBg = _display displayctrl 3005;
_oldPos = ctrlposition _redBg;
_redBg ctrlSetPosition [_oldPos select 0, (safezoneY + safezoneH - 0.0425 * safezoneH - 0.1275 * safezoneH), _oldPos select 2, _oldPos select 3];
_redBg ctrlCommit _speed;

_whiteBg = _display displayctrl 3006;
_oldPos = ctrlposition _whiteBg;
_whiteBg ctrlSetPosition [_oldPos select 0, (safezoneY + safezoneH - 0.0425 * safezoneH), _oldPos select 2, _oldPos select 3];
_whiteBg ctrlCommit _speed;

_textHeader = _display displayctrl 3001;
_oldPos = ctrlposition _textHeader;
_textHeader ctrlSetPosition [_oldPos select 0, (safezoneY + safezoneH - 0.0425 * safezoneH - 0.1275 * safezoneH + 0.1275 * safezoneH * 0.1), _oldPos select 2, _oldPos select 3];
_textHeader ctrlcommit _speed;
_textHeader ctrlsetstructuredtext parseText format["<t size='2'>%1</t> <br /> %2", _header, _sub]; //parsetext "<t size='2.3'>Military press conference</t><br />Col. Kane announces the end of the op. Arrowhead";
_textHeader ctrlcommit 0;

_textLine = _display displayctrl 3002;
_textLine ctrlsetstructuredtext parseText _line;
_textLine ctrlcommit 0;
_textLinePos = ctrlposition _textLine;
_textLinePos set [0,-200];
_textLine ctrlSetPosition _textLinePos;
_textLine ctrlcommit 1500;

_logo = "logo" call SC_fnc_globalMessengerGetSetting;
_image = _display displayctrl 3003;
_image ctrlSetText _logo;
_oldPos = ctrlposition _image;
_image ctrlSetPosition [_oldPos select 0, (safezoneY + safezoneH - 0.0425 * safezoneH - 0.1275 * safezoneH), _oldPos select 2, _oldPos select 3];
_image ctrlCommit _speed;

_logoCorner = "logoCorner" call SC_fnc_globalMessengerGetSetting;
_imageCorner = _display displayCtrl 3007;
_imageCorner ctrlSetText _logoCorner;

_textClock = _display displayctrl 3004;
while {not(isnull _display)} do {
	_textClock ctrlsettext ([daytime,"HH:MM"] call bis_fnc_timetostring);
	_textClock ctrlcommit 0;
	if not(isNull _display) then
	{
		uiSleep 60;
	};
};
