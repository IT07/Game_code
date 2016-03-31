/*
	Author: IT07

	Description:
	config.cpp for any GlobalMessenger
*/

class sc_cfgServerGlobalMessenger
{
	adminUIDs[] = {"",""};
};

/////// DO NOT TOUCH BELOW ///////
class cfgPatches
{
	class a3_scarCODE_GlobalMessenger
	{
		fileName = "a3_scarCODE_GlobalMessenger.pbo";
		author[]= {"IT07"};
		version = "Probably the last one";
	};
};

class cfgFunctions
{
	class SCARCODE
	{
		tag = "SC";
		class GlobalMessenger
		{
			file = "a3_scarCODE_GlobalMessenger";
			class gmGenKey {};
			class gmAuthCheck {};
			class initServerGM { postInit = 1; };
		};
	};
};
