/*
	Author: DirtySanchez from DonkeyPunch.INFO
	
	Description:
	Condition file for allowing DynaMenu or addAction
	
	Returns:
	BOOLEAN
*/
private["_nearestJammer", "_jammer", "_maxDist"];
_result = false;
_nearestJammer = objNull;
_jammer = "requireJammer" call SC_fnc_vgsGetClientSetting;
if(_jammer isEqualTo 1)then
{
	_maxDist = "maxDistanceFromJammer" call SC_fnc_vgsGetClientSetting;
	_jammer = nearestObjects[player, ["PlotPole_EPOCH"], _maxDist];
	if !(_jammer isEqualTo []) then 
	{
		{
			if (alive _x && (_x distance player) <= _maxDist) exitWith{
				_nearestJammer = _x;
			};
		} foreach _jammer;
		if !(isNull _nearestJammer) then 
		{
			if((_nearestJammer getVariable["BUILD_OWNER", "-1"]) in[getPlayerUID player, Epoch_my_GroupUID])then
			{
				_result = true;
			};
		};
	};
};
if(_jammer isEqualTo 0)then
{
	_result = true;
};
_result