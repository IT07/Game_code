/*
	Author: IT07

	Description:
	called by onLBSelChanged, will show data for selected item in rscStructuredText

	Params:
	2 given, none used

	Returns:
	nothing
*/

disableSerialization;
_dsp = 298;
if (not(isNull(findDisplay _dsp))) then
{
	if (count PSR_taskData > 0) then
	{
		_ctrl = (findDisplay _dsp) displayCtrl 2205;
		_ctrl ctrlSetBackgroundColor [0,0,0,0.5];
		_ctrl = (findDisplay _dsp) displayCtrl 2206;
		_ctrl ctrlSetBackgroundColor [0,0,0,0.5];
		_ctrl = (findDisplay _dsp) displayCtrl 1100;
		_ind = _this select 1; // Index = _this select 1
		_tsk = PSR_taskData select _ind; // _tsk is the task
		_unt = _tsk select 5; // Unit
		if ((typeName _unt) isEqualTo "OBJECT") then
		{
			if (isPlayer _unt) then
			{
				_unt = name _unt;
			};
		};
		_txt = parseText format ["<t size='1.5'>#%1</t> from <t color='#ffc804'>%2</t> - Assigned: <t size='0.85' color='#ffc804'>%3</t><br />Location: <t color='#ffc804'>%4</t> - Type: <t color='#ffc804'>%5</t><br />Comment: <t color='#ffc804'>%6</t>", _tsk select 4, name(_tsk select 0), _unt, _tsk select 1, _tsk select 2, _tsk select 3];
		_ctrl ctrlSetStructuredText _txt;
		_cth = ctrlTextHeight _ctrl; // ctrlTxtHeight
		_ctp = ctrlPosition _ctrl; // ctrlPos
		_ctrl ctrlSetPosition [_ctp select 0, _ctp select 1, _ctp select 2, _cth];
		_ctrl ctrlCommit 0;
	};
};