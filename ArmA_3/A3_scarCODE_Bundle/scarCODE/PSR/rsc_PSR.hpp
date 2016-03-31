////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Nypute)
////////////////////////////////////////////////////////

class menuBg: IGUIBack
{
	idc = 2200;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 5.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class titleMain: RscText
{
	shadow = 0;

	idc = 1000;
	text = "P.S.R."; //--- ToDo: Localize;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {0,0,0,0.8};
	colorBackground[] = {1,0.784,0.016,0.8};
};
class statusColor: IGUIBack
{
	idc = 2202;
	x = 6 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class statusTxt: RscText
{
	shadow = 0;

	idc = 1001;
	text = "Authenticating...."; //--- ToDo: Localize;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
	tooltip = "server-side refresh every 5 seconds"; //--- ToDo: Localize;
};
class comboRequestType: RscCombo
{
	onLBSelChanged = "(_this select 1) call SC_fnc_getPsrCost";

	idc = 2100;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	tooltip = "Where do you need help with?"; //--- ToDo: Localize;
};
class titleRequestType: RscText
{
	shadow = 0;

	idc = 1003;
	text = "What service do you require?"; //--- ToDo: Localize;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0.784,0.016,1};
	colorBackground[] = {0,0,0,0.7};
};
class sendRequest: RscButton
{
	action = "call SC_fnc_sendPsrRequest";

	idc = 1600;
	text = "SEND REQUEST"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 8.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.9};
};
class menuClose: RscButton
{
	action = closeDialog 0;

	idc = 1601;
	text = "CANCEL"; //--- ToDo: Localize;
	x = 21.8 * GUI_GRID_W + GUI_GRID_X;
	y = 8.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 4 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.9};
};
class titleComment: RscText
{
	shadow = 0;

	idc = 1005;
	text = "Additional info?"; //--- ToDo: Localize;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0.784,0.016,1};
	colorBackground[] = {0,0,0,0.7};
};
class editComment: RscEdit
{
	style = 528;
	shadow = 0;

	idc = 1400;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 13 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.4};
	tooltip = "Type here (optional)"; //--- ToDo: Localize;
};
class bgRequestsFrame: IGUIBack
{
	idc = 2203;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
};
class bgListBox: IGUIBack
{
	idc = 2204;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
};
class txtCost: RscText
{
	shadow = 0;
	sizeEx = 0.07;

	idc = 1008;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.4};
	tooltip = "Cost in Crypto"; //--- ToDo: Localize;
};
class bgRequestDetailsFrame: IGUIBack
{
	idc = 2205;
	x = 7 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 26 * GUI_GRID_W;
	h = 7 * GUI_GRID_H;
};
class bgRequestDescription: IGUIBack
{
	idc = 2206;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 4 * GUI_GRID_H;
};
class grpRequestDetails: RscControlsGroup
{
	idc = 2300;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	class controls
	{
		class strTxtRequestData: RscStructuredText
		{
			idc = 1100;
			x = 0.5 * GUI_GRID_W;
			y = 0.5 * GUI_GRID_H;
			w = 23.5 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
		};
	};
};
class lbTasks: RscListbox
{
	onLBSelChanged	= _this call SC_fnc_getPsrData;
	onLBDblClick = _this call SC_fnc_handlePsrTask;

	idc = 1500;
	x = 7.5 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
};
class priceTitle: RscText
{
	shadow = 0;

	idc = 1002;
	text = "Price"; //--- ToDo: Localize;
	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,0.784,0.016,1};
	colorBackground[] = {0,0,0,0.7};
};
class saldoTitle: RscText
{
	shadow = 0;

	idc = 1004;
	text = "Balance"; //--- ToDo: Localize;
	x = 21.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,0.784,0.016,1};
	colorBackground[] = {0,0,0,0.7};
};
class saldoTxt: RscText
{
	shadow = 0;
	sizeEx = 0.07;

	idc = 1006;
	x = 25 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.4};
	tooltip = "Cost in Crypto"; //--- ToDo: Localize;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
