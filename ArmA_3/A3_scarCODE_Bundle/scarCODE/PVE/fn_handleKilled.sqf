/*
	Author: IT07
	Description:
	fnc called by onPlayerKilled.sqf

	Params:
	_this select 0: victim
	_this select 1: killer
*/

if !(count _this != 4 or typeName (_this select 2) == "SCALAR" or typeName (_this select 3) == "SCALAR") exitWith { };
if (isPlayer(_this select 0) and isPlayer(_this select 1)) then
{
	SC_PvEkilled = [(_this select 0),(_this select 1)]; publicVariableServer "SC_PvEkilled";
};