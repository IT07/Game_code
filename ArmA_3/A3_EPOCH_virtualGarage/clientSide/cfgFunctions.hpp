// Add this to epoch_config/Configs/CfgFunctions.hpp
// within the class CfgFunctions
/*
class cfgFunctions
{
*/
	/////// scarCODE functions ///////
	class scarCODE
	{
		tag = "SC";
		class VirtualGarageSystem
		{
			file = "scarCODE\VGS\functions_VGS";
			class vgsGetClientSetting {};
			class vgsOnLoad {};
			class vgsRefresh {};			
			class vgsMoveOut {};
			class vgsMoveIn {};
			class vgsTrash {};
			class vgsWaitForChange {};
			class vgsRecvFromServer {};
			class dynaMenuCondition {};
			class vgsInitClient { postInit = 1; };
		};
	};