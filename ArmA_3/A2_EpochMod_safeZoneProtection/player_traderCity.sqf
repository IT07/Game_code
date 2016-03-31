Private ["_traderName", "_showText", "_enterORleave", "_ct", "_entity_array"];
_traderName = _this select 0;
_showText = _this select 1;
_enterORleave = _this select 2;

switch _enterORleave do {
	case "enter": {
		if (_showText) then {
			cutText [format [localize "STR_EPOCH_TRADER_ENTER", _traderName], "PLAIN DOWN"];
		};
		canbuild = false;
		inTraderCity = _traderName;
		isInTraderCity = true;

		/*	Script name: 		ScarCode Epoch SafeZone protection
			Version:			0.5.3
			Author: 			IT07 a.k.a. "The Fixer" from ScarCode.com
			Contact/Support: 	IT07@scarcode.com
			Description:		Inventory and Zed Protection System for Epoch/Overpoch
			Explanation:		This script will deny access to the inventory of anything else other than the player's or the vehicle he/she is in or a loot pile
			Credits:			Sarge for original zedshield script
		*/
		// == CONFIG ==
		SC_var_Tag = "[SC]";		// Please do not alter this if you want to pay your respects to the author
		SC_var_protectGear = true;	// Set to false if you want to disable gear protection in safezones
		SC_var_zedShield = true;	// Set to false if you want to disable zedshield in safezones
		
		// Do not alter anything below unless you know what you're doing
		SC_fnc_gearCheck = [] spawn {   								// spawn the script in a new thread and give it a name so it can be terminated when player exits safezone
			while {SC_var_protectGear} do {   							// Only do loop if true
				waitUntil {!isNull (findDisplay 106)};   				// Wait for inventory to open (first time or again)
				if ((vehicle player == player)) then {   				// If player is not in a vehicle
					_ct = cursorTarget;   								// Check where player is looking at
					if !(_ct isKindOf'ReammoBox') then {   				// If player is not looking at WeaponHolder
						(findDisplay 106) closeDisplay 1;   			// Close gear menu
						createGearDialog [(player), 'RscDisplayGear']; 	// Open inventory of player
					};
				};
			waitUntil {isNull (findDisplay 106)};	// Wait for player to close the menu
			sleep 0.2;								// Let's take a nap before we start waiting for inventory again
			};
		};
		
		if (SC_var_zedShield) then {systemChat format["%1 You entered the safezone: zedshield set ACTIVE", SC_var_Tag]};
		SC_fnc_zedShield = [] spawn {											// spawn the script in a new thread and give it a name so it can be terminated when player exits safezone
			while {SC_var_ZedShield} do {										// Only do loop if true
				_entity_array = (getPos player) nearEntities ["CAManBase",30];	// 30m radius around player
				{
					if (_x isKindof "zZombie_Base") then {						// If zombie is within 30m
                    deletevehicle _x;											// Delete that sucker
					};
				} forEach _entity_array;										// Do it for the array
				sleep 4;														// Repeat after 4 seconds (no reason to make the sleep low anyways...)
			};
		};
		/* END of ScarCode Epoch SafeZone protection */
	};

	case "leave": {
		if (_showText) then {
			cutText [format [localize "STR_EPOCH_TRADER_LEAVE", _traderName], "PLAIN DOWN"];
		};

		canbuild = true;
		inTraderCity = "Any";
		isInTraderCity = false;
		terminate SC_fnc_gearCheck;
		terminate SC_fnc_zedShield;
		if (SC_var_zedShield) then { SC_var_zedShield = false; systemChat format["%1 You left the safezone: zedshield set INACTIVE", SC_var_Tag]};
	};
};