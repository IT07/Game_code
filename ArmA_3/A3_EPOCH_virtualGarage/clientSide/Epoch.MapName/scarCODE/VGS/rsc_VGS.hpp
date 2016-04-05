////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Qofoqu)
////////////////////////////////////////////////////////

class bgMainLeft: IGUIBack
{
	deletable = 0;

	idc = 2203;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 19.5 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
	colorBackground[] = {0.157,0.173,0.204,0.9};
};
class bgMainRight: IGUIBack
{
	deletable = 0;

	idc = 2200;
	x = 20 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
	colorBackground[] = {0.157,0.173,0.204,0.9};
};
class bgCtrlTxt: IGUIBack
{
	idc = 2202;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0.157,0.173,0.204,0.9};
};
class inGarageTitle: RscText
{
	shadow = 0;
	deletable = 0;
	sizeEx = 0.07;
	fade = 0;
	style = 2;
	font = "PuristaBold";
	access = 0;

	idc = 1000;
	text = "INSIDE"; //--- ToDo: Localize;
	x = 20 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 20 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0.129,0.141,0.165,0.7};
};
class outsideGarageTitle: RscText
{
	shadow = 0;
	deletable = 0;
	sizeEx = 0.07;
	fade = 0;
	font = "PuristaBold";
	access = 0;
	style = 2;

	idc = 1001;
	text = "OUTSIDE"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 19.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0.129,0.141,0.165,0.7};
};
class txtFeedback: RscText
{
	shadow = 0;
	deletable = 0;
	fade = 0;
	font = "PuristaMedium";

	idc = 1002;
	text = "LOADING DATA"; //--- ToDo: Localize;
	x = 4 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 36 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
};
class buttonTrash: RscButton
{
	action = "[] spawn SC_fnc_vgsTrash";
	deletable = 0;
	default = 0;
	color[] = {1,1,1,0.9};
	colorActive[] = {0.243,0.388,0.675,1};
	access = 0;
	sizeEx = 0.05;

	idc = 1603;
	text = "DELETE"; //--- ToDo: Localize;
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	tooltip = "DELETE SELECTED VEHICLE"; //--- ToDo: Localize;
};
class txtVGStag: RscText
{
	shadow = 0;
	deletable = 0;
	fade = 0;
	font = "PuristaBold";
	access = 0;
	style = 2;

	idc = 1003;
	text = "[VGS]"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0,0,0,0.2};
	tooltip = "Virtual_Garage_System developed by IT07"; //--- ToDo: Localize;
};
class txtNoneInRange: RscText
{
	shadow = 0;
	deletable = 0;
	fade = 1;
	font = "PuristaMedium";

	idc = 1006;
	text = "NO VEHICLES FOUND"; //--- ToDo: Localize;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 18.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {0.741,0.227,0.227,1};
};
class unknown: RscText
{
	deletable = 0;
	fade = 0;
	sizeEx = 0.03;
	style = 1;
	shadow = 0;
	access = 0;

	idc = 1008;
	text = "15121791"; //--- ToDo: Localize;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	colorText[] = {0.157,0.173,0.204,0.5};
};
class cbOutside: RscCombo
{
	idc = 1500;
	fade = 1;
	deletable = 0;
	colorSelectBackground[] = {0.243,0.388,0.675,1};
	colorSelectBackground2[] = {0.243,0.388,0.675,1};
	colorSelect[] = {1,1,1,0.9};
	colorSelect2[] = {1,1,1,0.9};
	colorPicture[] = {0.243,0.388,0.675,1};
	colorPictureSelected[] = {1,1,1,0.9};
	tooltipColorText[] = {1,1,1,0.9};
	tooltipColorBox[] = {-1,-1,-1,-1};
	tooltipColorShade[] = {0,0,0,0.7};

	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 18.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
};
class cbInside: RscCombo
{
	idc = 1501;
	fade = 0;
	deletable = 0;
	colorSelectBackground[] = {0.243,0.388,0.675,1};
	colorSelectBackground2[] = {0.243,0.388,0.675,1};
	colorSelect[] = {1,1,1,0.9};
	colorSelect2[] = {1,1,1,0.9};
	colorPicture[] = {0.243,0.388,0.675,1};
	colorPictureSelected[] = {1,1,1,0.9};
	tooltipColorText[] = {1,1,1,0.9};
	tooltipColorBox[] = {-1,-1,-1,-1};
	tooltipColorShade[] = {0,0,0,0.7};

	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 19 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
};
class moveIn: RscButton
{
	deletable = 0;
	action = "[] spawn SC_fnc_vgsMoveIn";
	sizeEx = 0.05;

	idc = 1600;
	text = "MOVE IN"; //--- ToDo: Localize;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 18.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0,0,0,0.5};
};
class moveOut: RscButton
{
	deletable = 0;
	fade = 0;
	action = "[] spawn SC_fnc_vgsMoveOut";
	sizeEx = 0.05;
	default = 0;

	idc = 1601;
	text = "MOVE OUT"; //--- ToDo: Localize;
	x = 20.5 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0,0,0,0.5};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
