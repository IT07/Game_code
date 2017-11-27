/*
	Author: IT07

	Description:
	config.cpp of the VGS server-side pbo.
*/

class cfgVGS
{
	debug = 1; // 0 = OFF
	maxGarageSlots = 7; // Self-explenatory, right?
	vehBlacklist[] = {"O_Truck_Big_cock_F"}; // Put classnames of disallowed vehicles in here
	expiresVirtualGarage = 604800; // time is in seconds
};

class CfgPatches
{
	class a3_epoch_virtualGarage
	{
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {};
		fileName = "a3_epoch_virtualGarage.pbo";
		author[]= {"IT07"};
		version = 0.1425.1;
	};
};

class cfgFunctions
{
	class VirtualGarageSystem
	{
		tag = "VGS";
		class fnc
		{
			file = "\a3_epoch_virtualGarage\functions_VGS";
			class vgsGetServerSetting {};
			class vgsGenKey {};
			class vgsWriteToGarage {};
			class vgsReadFromGarage {};
			class vgsTrashFromGarage {};
			class vgsRequestGarage {};
			class vgsRequestKey {};
			class vgsInitServer { postInit = 1; };
		};
	};
};
