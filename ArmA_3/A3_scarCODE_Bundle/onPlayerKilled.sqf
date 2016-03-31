//////////////////////////////////
///////  Anti-PvP by IT07  ///////
///  v00264_BETA  ////////////////
// If player not in trigger and if victim + killer are not equal
if (SC_PvE and (_this select 0) != (_this select 1) and isPlayer(_this select 1)) then
{
	_this call SC_fnc_handleKilled;
};
//////////////////////////////////