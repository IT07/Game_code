/*
	Author: IT07

	Description:
	"reloads" the menu.

	Params:
	none

	Returns:
	nothing
*/

disableSerialization;
_dsp = 298; // Display idd
if (not(isNull(findDisplay _dsp))) then
{
	_lb = (findDisplay _dsp) displayCtrl 1500;
	lbClear _lb;
	_blnc = (findDisplay _dsp) displayCtrl 1006; // Crypto balance
	_blnc ctrlSetText str(EPOCH_playerCrypto);
	if (count PSR_taskData > 0) then
	{
		_ctrl = (findDisplay _dsp) displayCtrl 2203;
		_ctrl ctrlSetBackgroundColor [0,0,0,0.5];
		_ctrl = (findDisplay _dsp) displayCtrl 2204;
		_ctrl ctrlSetBackgroundColor [0,0,0,0.5];
		{
			_i = _forEachIndex;
			_s = _lb lbAdd format["#%1 from %2 - %3 at %4", _x select 4, name(_x select 0), _x select 2, _x select 1];
			if not((_x select 3) isEqualTo "") then
			{
				_lb lbSetTooltip [_s,format["Comment: %1",_x select 3]];
			};
			if (typeName (_x select 5) isEqualTo "OBJECT") then
			{
				_lb lbSetPicture [_i,"\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa"];
				_lb lbSetPictureColor [_i,[0.02,1,0.431,0.8]];
				_lb lbSetPictureColorSelected [_i,[1,0.784,0.016,1]];
			};
			_i = PSR_taskData find _x;
			_lb lbSetValue [_s,_i];
		} forEach PSR_taskData;
	};

	_ctrl = (findDisplay _dsp) displayCtrl 1100;
	if ((count PSR_taskData) isEqualTo 0 and not(ctrlText _ctrl isEqualTo "")) then
	{
		_ctrl ctrlSetText "";
		_cth = ctrlTextHeight _ctrl; // ctrlTxtHeight
		_ctp = ctrlPosition _ctrl; // ctrlPos
		_ctrl ctrlSetPosition [_ctp select 0, _ctp select 1, _ctp select 2, _cth];
		_ctrl ctrlCommit 0;
		_ctrl = (findDisplay _dsp) displayCtrl 2203;
		_ctrl ctrlSetBackgroundColor [0,0,0,0];
		_ctrl = (findDisplay _dsp) displayCtrl 2204;
		_ctrl ctrlSetBackgroundColor [0,0,0,0];
		_ctrl = (findDisplay _dsp) displayCtrl 2205;
		_ctrl ctrlSetBackgroundColor [0,0,0,0];
		_ctrl = (findDisplay _dsp) displayCtrl 2206;
		_ctrl ctrlSetBackgroundColor [0,0,0,0];
	};
};