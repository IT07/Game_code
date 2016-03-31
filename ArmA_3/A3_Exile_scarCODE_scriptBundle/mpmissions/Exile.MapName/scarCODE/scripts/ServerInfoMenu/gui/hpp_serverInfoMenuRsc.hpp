class mainGroup : RscControlsGroup
{
	idc = 2300;
	x = -4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 54.5 * GUI_GRID_W;
	h = 21.1 * GUI_GRID_H;
	fade = 1;
	class controls
	{
		class buttonExit: RscButton
		{
			default = 0;
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
			textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
			action = closeDialog 0;
			text = "\A3\ui_F\data\IGUI\Cfg\Actions\ico_off_ca.paa";
			idc = 1600;
			style = 2096;
			x = 44.51 * GUI_GRID_W;
			y = 1 * GUI_GRID_H;
			w = 3 * GUI_GRID_W;
			h = 1.3 * GUI_GRID_H;
			tooltip = "Or press ESCAPE key"; //--- ToDo: Localize;
			fade = 1;
		};
		class Title: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
			font = "PuristaBold";
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};
			idc = 1000;
			x = 4.5 * GUI_GRID_W;
			y = 1 * GUI_GRID_H;
			w = 40 * GUI_GRID_W;
			h = 1.3 * GUI_GRID_H;
			fade = 1;
		};
		class ListBox: RscCombo
		{
			onLBSelChanged = _this call SC_fnc_serverInfoMenuSetContent;
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 2100;
			x = 4.5 * GUI_GRID_W;
			y = 2.5 * GUI_GRID_H;
			w = 17 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class contentGroup: RscControlsGroup
		{
			idc = 2301;
			x = 1.35 * GUI_GRID_W + GUI_GRID_X;
			y = 3.7 * GUI_GRID_H + GUI_GRID_Y;
			w = 28 * GUI_GRID_W;
			h = 14.84 * GUI_GRID_H;
			fade = 1;
			class controls
			{
				class sMenuContentTxt: RscStructuredText
				{
					idc = 1100;
					x = 0 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 28 * GUI_GRID_W;
					h = 0.5 * GUI_GRID_H;
					fade = 1;
				};
			};
		};
		class buttonIpPort: RscButton
		{
			action = ["GET_ADDRESS"] call SC_fnc_serverInfoMenuCtrlSetText;

			idc = 1602;
			text = "GET IP:PORT"; //--- ToDo: Localize;
			x = 4.5 * GUI_GRID_W;
			y = 19 * GUI_GRID_H;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class buttonGametracker: RscButton
		{
			action = ["GET_GT_URL"] call SC_fnc_serverInfoMenuCtrlSetText;

			idc = 1601;
			text = "GET GAMETRACKER"; //--- ToDo: Localize;
			x = 11 * GUI_GRID_W;
			y = 19 * GUI_GRID_H;
			w = 9 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class buttonPlayerUID: RscButton
		{
			action = ["GET_PLAYERUID"] call SC_fnc_serverInfoMenuCtrlSetText;

			idc = 1603;
			text = "GET PLAYER UID"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W;
			y = 19 * GUI_GRID_H;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtIpPort: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.6)";
			idc = 1007;
			x = 29.5 * GUI_GRID_W;
			y = 2.5 * GUI_GRID_H;
			w = 15 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			fade = 1;
		};
		class titleIpPort: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1010;
			text = "SERVER IP:PORT"; //--- ToDo: Localize;
			x = 44.5 * GUI_GRID_W;
			y = 3 * GUI_GRID_H;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtManager: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4)";
			idc = 1013;
			x = 29.5 * GUI_GRID_W;
			y = 5 * GUI_GRID_H;
			w = 15 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			fade = 1;
		};
		class titleManager: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1012;
			text = "SERVER MANAGER"; //--- ToDo: Localize;
			x = 44.5 * GUI_GRID_W;
			y = 5.5 * GUI_GRID_H;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtAntihack: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.4)";
			idc = 1005;
			x = 29.5 * GUI_GRID_W;
			y = 7.5 * GUI_GRID_H;
			w = 14 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			fade = 1;
		};
		class titleAntihack: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1011;
			text = "SERVER ANTIHACK"; //--- ToDo: Localize;
			x = 43.5 * GUI_GRID_W;
			y = 8 * GUI_GRID_H;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtRestartIntv: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.8)";
			idc = 1009;
			x = 29.5 * GUI_GRID_W;
			y = 10 * GUI_GRID_H;
			w = 13 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			fade = 1;
		};
		class titleRestartInterval: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1008;
			text = "REST. INTV."; //--- ToDo: Localize;
			x = 42.5 * GUI_GRID_W;
			y = 10.5 * GUI_GRID_H;
			w = 6 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtUptime: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.8)";
			fade = 1;
			idc = 1004;
			x = 29.5 * GUI_GRID_W;
			y = 12.5 * GUI_GRID_H;
			w = 12 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class titleUptime: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1006;
			text = "UPTIME"; //--- ToDo: Localize;
			x = 41.5 * GUI_GRID_W;
			y = 13 * GUI_GRID_H;
			w = 4.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class txtPlayers: RscText
		{
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.8)";
			idc = 1002;
			x = 29.5 * GUI_GRID_W;
			y = 15 * GUI_GRID_H;
			w = 11 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			fade = 1;
		};
		class titlePlayersOnline: RscText
		{
			colorBackground[] = {TITLEBACKGROUND,1};
			colorText[] = {TITLETEXT,0.9};

			idc = 1001;
			text = "PLAYERS"; //--- ToDo: Localize;
			x = 40.5 * GUI_GRID_W;
			y = 15.5 * GUI_GRID_H;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			fade = 1;
		};
		class devBy: RscText
		{
			font = "PuristaBold";
			text = "Server Info Menu developed by IT07";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			idc = 1003;
			x = 29.5 * GUI_GRID_W;
			y = 17.5 * GUI_GRID_H;
			w = 15 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {TITLETEXT,0.9};
			colorBackground[] = {TITLEBACKGROUND,1};
			fade = 1;
		};
		class Edit: RscEdit
		{
			idc = 1402;
			x = 29.5 * GUI_GRID_W;
			y = 19 * GUI_GRID_H;
			w = 15 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			tooltip = "Click any button on the left"; //--- ToDo: Localize;
			fade = 1;
		};
	};
};
