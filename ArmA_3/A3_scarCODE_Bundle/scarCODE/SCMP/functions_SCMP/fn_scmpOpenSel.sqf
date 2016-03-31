/*
	Author: IT07

	Description:
	spawned by onLBSelChanged. Opens selected menu
*/

disableSerialization;
_dsp = 277;
if (isNull(findDisplay _dsp)) exitWith {diag_log"Fuck off you script kid";};
_cb = (findDisplay _dsp) displayCtrl 2100;
_diag = _cb lbData (_this select 0 select 1);
closeDialog 0;
createDialog(_diag);