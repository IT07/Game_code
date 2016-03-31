////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Gibafy)
////////////////////////////////////////////////////////

class submit: RscButton
{
	action = [] spawn SC_fnc_sarPackMags;

	idc = 1600;
	text = "REPACK MAGAZINES"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class titleUnMerged: RscText
{
	shadow = 0;

	idc = 1000;
	text = "Simple Ammo Repacker by IT07"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 18 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.341,0.529,0.482,0.8};
};
class RscCombo_2100: RscCombo
{
	onLBSelChanged = [_this] spawn SC_fnc_sarGetData;

	idc = 2100;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
};
class output: RscText
{
	sizeEx = 0.05;
	shadow = 0;

	idc = 1001;
	text = "PROCESSING MAGAZINES..."; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.3};
};
class icon: RscPicture
{
	style = 2096;

	idc = 1200;
	x = -6 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0};
};
class RscText_1002: RscText
{
	idc = 1002;
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 29 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class scarCODElogo: RscPicture
{
	style = 2096;

	idc = 1201;
	text = "scarCODE\SAR\img\scarCODE.paa";
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 14.5 * GUI_GRID_W;
	h = 11.5 * GUI_GRID_H;
};
class note: RscText
{
	sizeEx = 0.03;

	idc = 1003;
	text = "NOTE: Repacking does not allow a mag (of selected type) to be inside a weapon!"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
