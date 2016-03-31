/*
	Author: IT07

	Description:
	config.cpp for any Server-side scarCODE scripts
*/

class cfgPatches
{
	class a3_scarCODE_PVE
	{
		fileName = "a3_scarCODE_PVE.pbo";
		author[]= {"IT07"};
	};
};

class cfgFunctions
{
	class PVE
	{
		tag = "SC";
		class functions
		{
			file = "\a3_scarCODE_PVE\functions_PVE";
			class initPVE { postInit = 1; };
		};
	};
};