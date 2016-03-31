class title: RscText
{
	shadow = 0;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	font = "PuristaBold";
	style = 0;

	idc = 1000;
	text = "GLOBAL MESSENGER -- BY IT07"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 14.8 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1.2 * GUI_GRID_H;
	colorText[] = {0,0,0,0.9};
	colorBackground[] = {SCARCODELIGHTGREEN,1};
};
class editHeader: RscEdit
{
	style = 512;
	sizeEx = 0.06;

	idc = 1400;
	text = "HEADER"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 16.2 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {SCARCODEDARKGREEN,0.7};
	onKeyDown = "playSound 'ReadOutClick'";
};
class editSubTitle: RscEdit
{
	style = 512;
	sizeEx = 0.05;

	idc = 1401;
	text = "SUBTITLE"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 18.22 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1.8 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {SCARCODEDARKGREEN,0.7};
	onKeyDown = "playSound 'ReadOutClick'";
};
class editMoving: RscEdit
{
	style = 512;
	sizeEx = 0.04;

	idc = 1402;
	text = "MOVING"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 20.02 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1.6 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {SCARCODEDARKGREEN,0.7};
	onKeyDown = "playSound 'ReadOutClick'";
};
class submit: RscButton
{
	action = "[] spawn SC_fnc_globalMessengerSendGlobalNews";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	idc = 1600;
	text = "SEND"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 22 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
