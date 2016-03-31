_error = _this select 0;
_notif =
[
	[
		["[ScarCode Debugger]","<t align = 'center' shadow = '1' size = '0.8' color ='#E44646' font='PuristaBold'>%1</t><br />"],
		[format["%1", _error],"<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"]
	]
] spawn BIS_fnc_typeText;