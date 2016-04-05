#include "config_VGS.hpp"

class SC_vgsDiag
{
	idd = 2990;
	onLoad = "uiNamespace setVariable ['VGSdisplay', _this select 0]; [] spawn SC_fnc_vgsOnLoad; 'dynamicBlur' ppEffectAdjust [0.5]; 'dynamicBlur' ppEffectCommit 0.5";
	onUnload = "uiNamespace setVariable ['VGSdisplay', nil]; 'dynamicBlur' ppEffectAdjust [0]; 'dynamicBlur' ppEffectCommit 0.2";
	movingEnable = 1;
	class controls
	{
		#include "rsc_VGS.hpp"
	};
};
