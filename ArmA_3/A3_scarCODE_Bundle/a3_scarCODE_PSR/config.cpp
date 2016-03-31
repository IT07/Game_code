/*
	Author: IT07

	Description:
	config.cpp for any Server-side scarCODE scripts
*/

class cfgPatches
{
	class a3_scarCODE_PSR
	{
		fileName = "a3_scarCODE_PSR.pbo";
		author[]= {"IT07"};
	};
};

class cfgFunctions
{
	class PlayerSupportRequester
	{
		tag = "SC";
		class functions
		{
			file = "\a3_scarCODE_PSR";
			class psrDiagLog { };
			class psrGenToken { };
			class psrSendToken { };
			class psrCheckToken { };
			class initServerPSR { postInit = 1; };
		};
	};
};