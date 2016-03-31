class SC_MainMenuDiag
{
	idd = 277;
	onLoad = "[_this] spawn SC_fnc_MainMenuOnLoad";
	// GUI GRID
	#define GUI_GRID_X	(0)
	#define GUI_GRID_Y	(0)
	#define GUI_GRID_W	(0.025)
	#define GUI_GRID_H	(0.04)
	#define GUI_GRID_WAbs	(1)
	#define GUI_GRID_HAbs	(1)
	#define TITLEBACKGROUND 0.282,0.769,0.533 // In format R,G,B | color will be given to title bars | tool to convert from HTML color codes: http://killzonekid.com/hex-2-arma-gui-colour-converter/
	#define TITLETEXT 0.098,0.098,0.098 // Same format as above. Color will be given to the text of the title bars.
	#define SCARCODEDARKGREEN 0.075,0.11,0.094
	#define SCARCODELIGHTGREEN 0.282,0.769,0.533
	#define SCARCODERED 0.769,0.282,0.282
	class RscText
	{
		access = 0;
		colorBackground[] = {SCARCODELIGHTGREEN,1};
		colorShadow[] = {0,0,0,0.5};
		colorText[] = {0,0,0,0.9};
		deletable = 0;
		fade = 0;
		fixedWidth = 0;
		font = "PuristaMedium";
		linespacing = 1;
		shadow = 0;
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		style = 0;
		text = "";
		tooltipColorBox[] = {0,0,0,0};
		tooltipColorShade[] = {0,0,0,0.7};
		tooltipColorText[] = {1,1,1,0.9};
		type = 0;
	};
	class RscCombo
	{
		access = 0;
		arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
		arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
		colorActive[] = {TITLEBACKGROUND,0.7};
		colorBackground[] = {SCARCODEDARKGREEN,0.7};
		colorDisabled[] = {1,1,1,0.25};
		colorPicture[] = {1,1,1,0.9};
		colorPictureDisabled[] = {1,1,1,0.25};
		colorPictureRight[] = {1,1,1,0.9};
		colorPictureRightDisabled[] = {1,1,1,0.25};
		colorPictureRightSelected[] = {1,1,1,0.9};
		colorPictureSelected[] = {1,1,1,0.9};
		colorScrollbar[] = {1,0,0,1};
		colorSelect2Right[] = {0,0,0,0.9};
		colorSelect[] = {0,0,0,1};
		colorSelectBackground[] = {1,1,1,0.8};
		colorSelectRight[] = {0,0,0,0.9};
		colorText[] = {1,1,1,0.9};
		colorTextRight[] = {1,1,1,0.9};
		deletable = 0;
		fade = 0;
		font = "PuristaMedium";
		maxHistoryDelay = 1;
		shadow = 0;
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
		soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
		soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
		style = "0x10 + 0x200";
		tooltipColorBox[] = {1,1,1,0.9};
		tooltipColorShade[] = {0,0,0,0.65};
		tooltipColorText[] = {1,1,1,0.9};
		type = 4;
		wholeHeight = 0.45;
		class ComboScrollBar
		{
			color[] =  {1,1,1,0.9};
			colorBackground[] = {0,0,0,0.3};
			width = 0.021;
			autoScrollEnabled = 0;

			colorActive[] = {1,1,1,0.9};
			colorDisabled[] = {1,1,1,0.3};
			thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
			arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
			arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
			border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		};
	};
	class RscButton
	{
		deletable = 0;
		fade = 0;
		access = 0;
		type = 1;
		color2[] = {0,0,0,0.9};
		color2Secondary[] = {0,0,0,1};
		color[] = {0,0,0,0.9};
		colorBackground2[] = {0.769,0.282,0.282,1};
		colorBackground[] = {0.075,0.11,0.094,0.55};
		colorBackgroundDisabled[] = {0,0,0,0.5};
		colorBackgroundFocused[] = {TITLEBACKGROUND,1};
		colorDisabled[] = {1,1,1,0.25};
		colorDisabledSecondary[] = {1,1,1,0.25};
		colorFocused[] = {0,0,0,0.7};
		colorFocusedSecondary[] = {0,0,0,0.7};
		colorSecondary[] = {0,0,0,0.9};
		colorText[] = {1,1,1,0.9};
		colorShadow[] =	{0,0,0,0};
		colorBorder[] = {0,0,0,0};
		colorBackgroundActive[] = {TITLEBACKGROUND,1};
		style = 2;
		shadow = 0;
		font = "PuristaMedium";
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		offsetX = 0;
		offsetY = 0;
		offsetPressedX = 0.003;
		offsetPressedY = 0.002;
		borderSize = 0;
		soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",	0.09, 1};
		soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1};
		soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1};
		soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
	};
	class controls
	{
		#include "hpp_mainMenuRsc.hpp"
	};
};
