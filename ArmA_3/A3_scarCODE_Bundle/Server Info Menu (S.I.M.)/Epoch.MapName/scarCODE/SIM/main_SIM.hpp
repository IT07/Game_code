#include "config_SIM.hpp"

class SC_simDiag
{
	idd = 297;
	onLoad = "[] spawn SC_fnc_loadSim; 'dynamicBlur' ppEffectAdjust [0.5]; 'dynamicBlur' ppEffectCommit 0.5";
	onUnLoad = "'dynamicBlur' ppEffectAdjust [0]; 'dynamicBlur' ppEffectCommit 0.2";
	movingEnable = 1;
	class controls
	{
		#include "rsc_SIM.hpp"
	};
};
