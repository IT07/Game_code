diag_log "[scarCODE PVE] Starting...";
"SC_PvEkilled" addPublicVariableEventHandler
{
	if (isPlayer(_this select 1 select 0) and isPlayer(_this select 1 select 1) and !alive(_this select 1 select 0)) then
	{
		SC_PVBkillMessage = [(_this select 1 select 0),(_this select 1 select 1)];
		publicVariable "SC_PVBkillMessage";
		diag_log format ["{SCARCODE} PvE warning! %1 was killed by %2", _this select 1 select 0, _this select 1 select 1];
	};
};
diag_log "[scarCODE PVE] eventHandlers added, ready!";