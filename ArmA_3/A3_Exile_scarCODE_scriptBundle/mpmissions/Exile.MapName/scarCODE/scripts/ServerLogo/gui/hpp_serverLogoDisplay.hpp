class serverLogo
{
    duration = 99999;
    idd = 2792;
    onLoad = "uiNamespace setVariable ['SC_serverLogoDisplay', _this select 0]; ((_this select 0) displayCtrl 1201) ctrlSetText (getText (missionConfigFile >> 'cfgScarCODE' >> 'sc_cfgServerLogo' >> 'serverLogo'))";
    class controls
    {
        class RscPicture
        {
            deletable = 0;
        	fade = 0;
        	access = 0;
        	type = 0;
        	style = 2096;
        	font = "TahomaB";
        	lineSpacing = 0;
        	fixedWidth = 0;
        	shadow = 0;
        	tooltipColorText[] = {1,1,1,0.9};
        	tooltipColorBox[] = {0,0,0,0};
        	tooltipColorShade[] = {0,0,0,0.7};
        	colorBackground[] = {0,0,0,0};
        	colorText[] = {1,1,1,0.9};
        	sizeEx = 0;
        	text = "";
        };
        #include "hpp_serverLogoRsc.hpp"
    };
};
