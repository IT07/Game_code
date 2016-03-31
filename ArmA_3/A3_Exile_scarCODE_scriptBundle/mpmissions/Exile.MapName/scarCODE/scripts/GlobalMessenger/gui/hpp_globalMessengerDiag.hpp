class SC_globalMessengerDiag
{
	idd = 2097;
	onLoad = "uiNamespace setVariable ['SC_globalMessengerDisplay',_this select 0]; 'dynamicBlur' ppEffectAdjust [1.2]; 'dynamicBlur' ppEffectCommit 0.5";
	onUnLoad = "uiNamespace setVariable ['SC_globalMessengerDisplay',nil]; 'dynamicBlur' ppEffectAdjust [0]; 'dynamicBlur' ppEffectCommit 0.2";
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
		colorBackground[] = {0.075,0.11,0.094,0.55};
		colorShadow[] = {0,0,0,0.5};
		colorText[] = {1,1,1,0.9};
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
	class RscEdit
	{
		deletable = 0;
		fade = 0;
		access = 1;
		type = 2;
		colorBackground[] = {0.075,0.11,0.094,0.55};
		colorText[] = {1,1,1,0.9};
		colorDisabled[] = {1,1,1,0.25};
		colorSelection[] = {0.282,0.769,0.533,1};
		autoComplete = "";
		text = "";
		size = 0.2;
		style = 512;
		font = "PuristaMedium";
		shadow = 0;
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		canModify = 1;
		tooltipColorText[] = {1,1,1,0.9};
		tooltipColorBox[] = {0,0,0,0};
		tooltipColorShade[] = {0,0,0,0.7};
	};
	class RscButton
	{
		deletable = 0;
		fade = 0;
		access = 0;
		type = 1;
		color2[] = {SCARCODERED,0.55};
		color2Secondary[] = {SCARCODERED,0.55};
		color[] = {SCARCODERED,0.55};
		colorBackground2[] = {SCARCODERED,0.55};
		colorBackground[] = {SCARCODERED,0.55};
		colorBackgroundDisabled[] = {0,0,0,0.5};
		colorBackgroundFocused[] = {TITLEBACKGROUND,1};
		colorDisabled[] = {1,1,1,0.25};
		colorDisabledSecondary[] = {1,1,1,0.25};
		colorFocused[] = {SCARCODERED,0.55};
		colorFocusedSecondary[] = {SCARCODERED,0.55};
		colorSecondary[] = {SCARCODERED,0.55};
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
		#include "hpp_globalMessengerRsc.hpp"
	};
};
