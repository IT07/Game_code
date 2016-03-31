/*
	Author: IT07

	Description:
	config.cpp for any Server-side scarCODE scripts
*/

class GMconfig
{
	adminUIDs[] = {"",""};
};

/////// DO NOT TOUCH BELOW ///////
class cfgPatches
{
	class a3_scarCODE_GM
	{
		fileName = "a3_scarCODE_GM.pbo";
		author[]= {"IT07"};
		version = "0.0001.6 PRE-ALPHA";
	};
};

class cfgFunctions
{
	class GlobalMessenger
	{
		tag = "SC";
		class functions
		{
			file = "\a3_scarCODE_GM";
			class gmGenKey {};
			class gmAuthCheck {};
			class initServerGM { postInit = 1; };
		};
	};
};