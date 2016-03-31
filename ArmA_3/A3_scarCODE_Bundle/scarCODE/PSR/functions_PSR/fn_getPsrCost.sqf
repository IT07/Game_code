/*
	Author: IT07

	Description:
	called by onLBselChanged. Will output the cost of request to rscTitle

	Params:
	none

	Returns:
	nothing
*/

_d = 298; // Display idd
if not(isNull(findDisplay _d)) then
{
	_p = ["prices"] call SC_fnc_getPsrSetting;
	_co = _p select 0 select _this;
	if ((typeName _co) isEqualTo "SCALAR") then
	{
		_c = (findDisplay _d) displayCtrl 1008;
		_c ctrlSetText str(_co);
	};
};