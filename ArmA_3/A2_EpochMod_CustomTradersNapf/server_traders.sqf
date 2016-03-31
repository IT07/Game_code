// server_traders.sqf for custom Epoch Napf Traders by IT07 || Version 0.2.2.1 SafeZone Edition

serverTraders = ["Worker3", "CZ_Special_Forces_GL_DES_EP1", "CZ_Soldier_DES_EP1", "RU_Worker1", "Woodlander3", "RU_Doctor", "FR_Sapper", "Rita_Ensler_EP1", "USMC_SoldierM_Marksman", "USMC_Soldier_Light", "Citizen3_EP1", "RU_Worker3", "USMC_Soldier_GL", "Dr_Hladik_EP1", "FR_Cooper", "FR_Miles", "RU_Woodlander3", "CIV_EuroMan01_EP1", "RU_Damsel1", "RU_Assistant", "Woodlander2", "Woodlander4", "TK_CIV_Worker01_EP1", "Worker2", "GER_Soldier_EP1", "USMC_Soldier_Pilot"];

// Emmen Food&Drinks 
menu_Worker3 = [
	[["Backpacks",632],["Clothes",631],["Cooked Meats",634],["Drinks",633],["Packaged Food",635]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]],
	"neutral"
];
// Emmen Gunz
menu_CZ_Special_Forces_GL_DES_EP1 = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns and Single-shot",641],["Sniper Rifle",640],["Submachine Guns",642]],
	[],
	"neutral"
];
// Emmen Ammo
menu_CZ_Soldier_DES_EP1 = [
	[["Assault Rifle Ammo",643],["Light Machine Gun Ammo",644],["Pistol Ammo",646],["Shotguns and Single-shot Ammo",649],["Sniper Rifle Ammo",647],["Submachine Gun Ammo",648]],
	[],
	"neutral"
];
// Emmen Vehicles
menu_RU_Worker1 = [
	[["Bikes and ATV",650],["Buses and Vans",651],["Cargo Trucks",653],["Fuel Trucks",655],["Military Unarmed",658],["Trucks",659],["Used Cars",660],["Utility Vehicles",661]],
	[],
	"neutral"
];
// Emmen Building/Parts
menu_Woodlander3 = [
	[["Building Supplies",662],["Toolbelt Items",663],["Vehicle Parts",664]],
	[],
	"neutral"
];
// Emmen Medical
menu_RU_Doctor = [
	[["Chem-lites/Flares",666],["Medical Supplies",665],["Smoke Grenades",668]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
// Hero Vendor
menu_FR_Sapper = [
	[["Ammunition",478],["Clothes",476],["Helicopter Armed",493],["Military Armed",562],["Trucks Armed",479],["Weapons",477]],
	[],
	"hero"
];
// Lenzburg food&drinks
menu_Rita_Ensler_EP1 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]],
	"neutral"
];
// Lenzburg Gunz
menu_USMC_SoldierM_Marksman = [
	[["Assault Rifle",602],["Light Machine Gun",603],["Pistols",606],["Shotguns and Single-shot",607],["Sniper Rifle",605],["Submachine Guns",604]],
	[],
	"neutral"
];
// Lenzburg Ammo
menu_USMC_Soldier_Light = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns and Single-shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612]],
	[],
	"neutral"
];
// Lenzburg Building/Parts
menu_Citizen3_EP1 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"neutral"
];
// Lenzburg Vehicles
menu_RU_Worker3 = [
	[["Bikes and ATV",587],["Buses and Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591]],
	[],
	"neutral"
];
// Lenzburg Black Market Vendor
menu_USMC_Soldier_GL = [
	[["Black Market Ammo",527],["Black Market Weapons",526],["Explosives",529]],
	[],
	"neutral"
];
// Lenzburg Medic
menu_Dr_Hladik_EP1 = [
	[["Chem-lites/Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
// Schratten Ammo
menu_FR_Cooper = [
	[["Assault Rifle Ammo",480],["Light Machine Gun Ammo",481],["Pistol Ammo",484],["Shotguns and Single-shot Ammo",573],["Sniper Rifle Ammo",482],["Submachine Gun Ammo",483]],
	[],
	"friendly"
];
// Schratten Gunz
menu_FR_Miles = [
	[["Assault Rifle",485],["Light Machine Gun",486],["Pistols",489],["Shotguns and Single-shot",574],["Sniper Rifle",487],["Submachine Guns",488]],
	[],
	"friendly"
];
// Schratten Vehicles
menu_RU_Woodlander3 = [
	[["Bikes and ATV",608],["Buses and Vans",563],["Cargo Trucks",564],["Fuel Trucks",492],["Military Unarmed",491],["Trucks",495],["Used Cars",585],["Utility Vehicles",565]],
	[],
	"friendly"
];
// Schratten Building/Parts
menu_CIV_EuroMan01_EP1 = [
	[["Building Supplies",530],["Toolbelt Items",532],["Vehicle Parts",531]],
	[],
	"friendly"
];
// Schratten Food&Drinks
menu_RU_Damsel1 = [
	[["Backpacks",538],["Clothes",628],["Cooked Meats",630],["Drinks",601],["Packaged Food",629]],
	[["ItemTinBar","TrashJackDaniels",1,1,"buy","Empty Wiskey Bottle","Tin Bar",101]],
	"friendly"
];
// Schratten Medical Supplies
menu_RU_Assistant = [
	[["Chem-lites/Flares",542],["Medical Supplies",541],["Smoke Grenades",543]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"friendly"
];
// North Wholesaler
menu_Woodlander2 = [
	[["Wholesale",555]],
	[],
	"neutral"
];
// West Wholesaler
menu_Woodlander4 = [
	[["Wholesale",636]],
	[],
	"neutral"
];
// North Boat Vendor
menu_TK_CIV_Worker01_EP1 = [
	[["Boats Armed",558],["Boats Unarmed",557]],
	[],
	"neutral"
];
// East boat trader
menu_Worker2 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];
// Bandit Trader
menu_GER_Soldier_EP1 = [
	[["Ammunition",577],["Clothing",575],["Helicopter Armed",512],["Military Armed",569],["Trucks Armed",534],["Weapons",627]],
	[],
	"hostile"
];
// Aircraft Dealer
menu_USMC_Soldier_Pilot = [
	[["Airplanes",517],["Helicopter Unarmed",519]],
	[],
	"neutral"
];