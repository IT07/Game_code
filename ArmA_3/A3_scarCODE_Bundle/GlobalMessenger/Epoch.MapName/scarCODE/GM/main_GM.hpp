class rscNews
{
	duration = 20;
	fadein = 0.5;
	fadeout = 0.2;
	idd = 3000;
	onLoad = "uiNamespace setVariable ['SC_NEWS',_this select 0]";
	onUnLoad = "uiNamespace setVariable ['SC_NEWS',nil]";
	class Controls
	{
		class logo
		{
			access = 0;
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWith = 0;
			font = "TahomaB";
			h = "0.1275 * safezoneH";
			idc = 3003;
			lineSpacing = 0;
			shadow = 0;
			sizeEx = 0;
			style = 48;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 0;
			w = "0.1275 * safezoneH * 3";
			x = "safezoneX";
			y = "safezoneY + safezoneH - -0.11 * safezoneH - 0.1275 * safezoneH";
		};
		class logoCorner
		{
			access = 0;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,0.3};
			deletable = 0;
			fade = 0;
			fixedWith = 0;
			font = "TahomaB";
			h = "0.1275 * safezoneH";
			idc = 3007;
			lineSpacing = 0;
			shadow = 0;
			sizeEx = 0;
			style = 48;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 0;
			w = "0.1275 * safezoneH * 6/4";
			x = "safezoneX + safezoneW - (0.1275 * safezoneH * 6/4)";
			y = "safezoneY";
		};
		class bgBlackLeft
		{
			access = 0;
			colorBackground[] = {0,0,0,0.7};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWidth = 0;
			font = "PuristaMedium";
			h = "safezoneH";
			idc = -1;
			lineSpacing = 1;
			shadow = 1;
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			style = 0;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 0;
			w = "(safezoneWAbs - safezoneW) / 2";
			x = "safezoneXAbs";
			y = "safezoneY";
		};
		class bgBlackRight
		{
			access = 0;
			colorBackground[] = {0,0,0,0.7};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWidth = 0;
			font = "PuristaMedium";
			h = "safezoneH";
			idc = -1;
			lineSpacing = 1;
			shadow = 1;
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			style = 0;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 0;
			w = "(safezoneWAbs - safezoneW) / 2";
			x = "safezoneX + safezoneW";
			y = "safezoneY";
		};
		class TextHeader
		{
			access = 0;
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			h = "0.1275 * safezoneH - 0.1275 * safezoneH * 0.2";
			idc = 3001;
			shadow = 0;
			size = "((((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) / 1.17647) * safezoneH";
			style = "0x00 + 0x10";
			text = "";
			type = 13;
			w = "safezoneW - (0.1275 * safezoneH * 2.5)";
			x = "safezoneX + (0.1275 * safezoneH * 2.5)";
			y = "safezoneY + safezoneH - -0.1 * safezoneH - 0.1275 * safezoneH + 0.1275 * safezoneH * 0.1";
			class Attributes
			{
				align = "left";
				color = "#ffffff";
				font = "PuristaMedium";
				shadow = 0;
				valign = "top";
			};
		};
		class TextLine
		{
			access = 0;
			colorText[] = {0,0,0,1};
			deletable = 0;
			fade = 0;
			h = "0.0425 * safezoneH";
			idc = 3002;
			shadow = 0;
			size = "((((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) / 1.17647) * safezoneH";
			style = "0x00 + 0x10";
			text = "";
			type = 13;
			w = 1000;
			x = "safezoneX + safezoneW - 0.15";
			y = "safezoneY + safezoneH - 0.0425 * safezoneH + 0.005";
			class Attributes
			{
				align = "left";
				color = "#000000";
				shadow = 0;
				valign = "top";
			};
		};
		class TextClock
		{
			access = 0;
			colorBackground[] = {0.1,0.1,0.1,1};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWidth = 0;
			font = "PuristaMedium";
			h = "0.0425 * safezoneH";
			idc = 3004;
			lineSpacing = 1;
			shadow = 0;
			sizeEx = "0.0425 * safezoneH";
			style = 2;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipColorText[] = {1,1,1,1};
			type = 0;
			w = 0.15;
			x = "safezoneX + safezoneW - 0.15";
			y = "safezoneY + safezoneH - 0.0425 * safezoneH";
		};
	};
	class ControlsBackground
	{
		class bgBarRed
		{
			access = 0;
			colorBackground[] = {0.29,0,0,0.5};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWidth = 0;
			font = "PuristaMedium";
			h = "0.1275 * safezoneH";
			idc = 3005;
			lineSpacing = 1;
			shadow = 1;
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 1)";
			style = 0;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipcolorText[] = {1,1,1,1};
			type = 0;
			w = "safezoneW";
			x = "safezoneX";
			y = "safezoneY + safezoneH - 0 * safezoneH - 0.1275 * safezoneH";
		};
		class bgBarWhite
		{
			access = 0;
			colorBackground[] = {1,1,1,0.7};
			colorShadow[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			deletable = 0;
			fade = 0;
			fixedWidth = 0;
			font = "PuristaMedium";
			h = "0.0425 * safezoneH";
			idc = 3006;
			lineSpacing = 1;
			shadow = 1;
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) /25) * 1)";
			style = 0;
			text = "";
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
			tooltipcolorText[] = {1,1,1,1};
			type = 0;
			w = "safezoneW";
			x = "safezoneX";
			y = "safezoneY + safezoneH - 0 * safezoneH";
		};
	};
};

#include "config_GM.hpp"

class SC_gmDiag
{
	idd = 2097;
	onLoad = "uiNamespace setVariable ['SC_gmDisplay',_this select 0]; 'dynamicBlur' ppEffectAdjust [1.2]; 'dynamicBlur' ppEffectCommit 0.5";
	onUnLoad = "uiNamespace setVariable ['SC_gmDisplay',nil]; 'dynamicBlur' ppEffectAdjust [0]; 'dynamicBlur' ppEffectCommit 0.2";
	movingEnable = true;
	class controls
	{
		#include "rsc_GM.hpp"
	};
};
