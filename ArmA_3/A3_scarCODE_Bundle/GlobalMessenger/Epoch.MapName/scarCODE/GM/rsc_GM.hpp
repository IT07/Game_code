////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Nulizu)
////////////////////////////////////////////////////////

class mainBg: IGUIBack
{
	idc = 2201;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.3};
};
class sideBg: IGUIBack
{
	idc = 2202;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.2};
};
class editBgMoving: IGUIBack
{
	idc = 2204;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 29.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.3};
};
class editBgHeader: IGUIBack
{
	idc = 2200;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 21 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.3};
};
class editBgSubTitle: IGUIBack
{
	idc = 2203;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 19 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.3};
};
class title: RscText
{
	shadow = 0;
	sizeEx = 0.075;
	style = 528;

	idc = 1000;
	text = "[GM]"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 6 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {0.341,0.529,0.482,1};
};
class txtHeader: RscText
{
	sizeEx = 0.05;

	idc = 1001;
	text = "HEADER"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0.341,0.529,0.482,0.25};
};
class editHeader: RscEdit
{
	style = 512;
	sizeEx = 0.06;

	idc = 1400;
	text = "..."; //--- ToDo: Localize;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 21 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0,0,0,0};
};
class txtSub: RscText
{
	shadow = 0;
	sizeEx = 0.05;

	idc = 1002;
	text = "SUBTITLE"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 19 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0.341,0.529,0.482,0.2};
};
class editSubTitle: RscEdit
{
	style = 512;
	sizeEx = 0.05;

	idc = 1401;
	text = "..."; //--- ToDo: Localize;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 19 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0,0,0,0};
};
class txtMoving: RscText
{
	shadow = 0;
	sizeEx = 0.05;

	idc = 1003;
	text = "MOVING"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0.341,0.529,0.482,0.15};
};
class editMoving: RscEdit
{
	style = 512;
	sizeEx = 0.04;

	idc = 1402;
	text = "..."; //--- ToDo: Localize;
	x = 8 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 29.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0,0,0,0};
};
class submit: RscButton
{
	action = "[] spawn SC_fnc_sendGlobalNews";

	idc = 1600;
	text = "SEND GLOBAL MESSAGE"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
