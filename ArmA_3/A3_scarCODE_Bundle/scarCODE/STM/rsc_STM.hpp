////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Bohuto)
////////////////////////////////////////////////////////

class bgMain: IGUIBack
{
	idc = 2200;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 17.5 * GUI_GRID_H;
	colorBackground[] = {0.341,0.529,0.482,0.8};
};
class map: tpMap
{
	type = 101;

	idc = 1800;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 39 * GUI_GRID_W;
	h = 16.5 * GUI_GRID_H;
};
class RscCombo_2100: RscCombo
{
	onLBSelChanged = _this call SC_fnc_animStmMap;

	idc = 2100;
	x = 12.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	tooltip = "Select desired location and then click spawn"; //--- ToDo: Localize;
};
class pickLocation: RscText
{
	shadow = 0;

	idc = 1000;
	text = "CHOOSE SPAWN LOCATION"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.341,0.529,0.482,0.8};
};
class buttonSoawn: RscButton
{
	action = _this call SC_fnc_doStmTp;

	idc = 1600;
	text = "SPAWN"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class buttonCancel: RscButton
{
	action = closeDialog 0;

	idc = 1601;
	text = "CANCEL"; //--- ToDo: Localize;
	x = 28.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
