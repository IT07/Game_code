// Add this to the end of epoch_config/Configs/CfgActionMenu/CfgActionMenu_self.hpp

class VirtualGarage
{
	condition = "call SC_fnc_dynaMenuCondition";
	action = "createDialog 'SC_vgsDiag'";
	icon =  "a3\ui_f\data\GUI\Rsc\RscDisplayArsenal\spaceGarage_ca.paa";
	tooltip = "Virtual Garage";
};