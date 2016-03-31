class psrConfig
{
	class Settings
	{
		////////  CONFIGURATION  ///////
		/* Ignore if Server Info Menu is installed */ customControl = "User7"; // To disable, use false. Info: https://community.bistudio.com/wiki/inputAction/actions/bindings
		/* Ignore if Server Info Menu is installed */ useScrollMenu = 1; // To disable, use false. Default: 1 (enabled)
		supportTypes[] = {"Car pickup","Truck pickup","Heli pickup","Boat pickup","Vehicle crashed","Critical health","Pinned down","Armed support","Hot LZ drop-off","K.I.A."};
		prices[] = {200,350,650,400,500,150,650,850,950,300}; // Prices in crypto for each support type in the same order
		maxRequests = 25; // Any requests after this number will be refused
		///////  END OF CONFIG  ////////
	};
};