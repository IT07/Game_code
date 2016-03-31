////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Cywada)
////////////////////////////////////////////////////////

class editBg: IGUIBack
{
	deletable = 0;

	idc = 2203;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
};
class sMenuTitle: RscText
{
	colorBackground[] = {TITLEBACKGROUND,0.8};
	shadow = 0;
	colorText[] = {TITLETEXT,1};

	idc = 1000;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class sMenuListBox: RscCombo
{
	onLBSelChanged = _this call SC_fnc_setSimContent;
	colorBackground[] = {TITLEBACKGROUND,1};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 2100;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 17 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class contentGroup: RscControlsGroup
{
	deletable = 0;

	idc = 2300;
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 28 * GUI_GRID_W;
	h = 15 * GUI_GRID_H;
	class controls
	{
		class sMenuContentTxt: RscStructuredText
		{
			deletable = 0;

			idc = 1100;
			x = 0 * GUI_GRID_W;
			y = 0 * GUI_GRID_H;
			w = 28 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
	};
};
class sMenuTxtPLAYERS: RscText
{
	shadow = 0;
	sizeEx = 0.07;
	deletable = 0;

	idc = 1002;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 20 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class sMenuTxtUPTIME: RscText
{
	shadow = 0;
	sizeEx = 0.07;
	deletable = 0;

	idc = 1004;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class sMenuTxtRestartIntv: RscText
{
	shadow = 0;
	sizeEx = 0.07;
	deletable = 0;

	idc = 1009;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class sMenuTitleManager: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,1};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1012;
	text = "SERVER MANAGER"; //--- ToDo: Localize;
	x = 40 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class sMenuButtonExit: RscButton
{
	action = closeDialog 0;
	deletable = 0;

	idc = 1600;
	text = "CLOSE/EXIT"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
	tooltip = "Or press ESCAPE key"; //--- ToDo: Localize;
};
class sMenuEdit: RscEdit
{
	shadow = 0;
	style = 528;
	deletable = 0;

	idc = 1402;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	tooltip = "Click any button on the left"; //--- ToDo: Localize;
};
class sMenuTxtAH: RscText
{
	shadow = 0;
	sizeEx = 0.05;
	deletable = 0;

	idc = 1005;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class sMenuButtonGT_URL: RscButton
{
	action = ["GET_GT_URL"] call SC_fnc_setSimCtrlText;
	deletable = 0;

	idc = 1601;
	text = "GET GAMETRACKER"; //--- ToDo: Localize;
	x = 6.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuButtonIP_PORT: RscButton
{
	action = ["GET_ADDRESS"] call SC_fnc_setSimCtrlText;
	deletable = 0;

	idc = 1602;
	text = "GET IP:PORT"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuButtonPlayerUID: RscButton
{
	action = ["GET_PLAYERUID"] call SC_fnc_setSimCtrlText;
	deletable = 0;

	idc = 1603;
	text = "GET PLAYER UID"; //--- ToDo: Localize;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
	tooltip = "hi <br /> my <br /> name <br /> is IT07"; //--- ToDo: Localize;
};
class sMenuTitlePlayers: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,0.8};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1001;
	text = "PLAYERS"; //--- ToDo: Localize;
	x = 36 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class sMenuTitleUPT: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,0.8};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1006;
	text = "UPTIME"; //--- ToDo: Localize;
	x = 37 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class RscText_1008: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,0.8};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1008;
	text = "REST. INTV."; //--- ToDo: Localize;
	x = 38 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class sMenuTitleAH: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,0.8};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1011;
	text = "SERVER ANTIHACK"; //--- ToDo: Localize;
	x = 39 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class sMenuTxtManager: RscText
{
	shadow = 0;
	sizeEx = 0.05;
	deletable = 0;

	idc = 1013;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class devBy: RscText
{
	deletable = 0;
	shadow = 0;

	idc = 1003;
	text = "This is SIM developed by IT07"; //--- ToDo: Localize;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {0,0,0,1};
	colorBackground[] = {1,1,1,0.8};
};
class txtIPPORT: RscText
{
	shadow = 0;
	sizeEx = 0.065;
	deletable = 0;

	idc = 1007;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class titleIPPORT: RscText
{
	shadow = 0;
	colorBackground[] = {TITLEBACKGROUND,1};
	colorText[] = {TITLETEXT,1};
	deletable = 0;

	idc = 1010;
	text = "SERVER IP:PORT"; //--- ToDo: Localize;
	x = 40 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
