// server_traders file for IT07's Custom Epoch Chernarus Traders V1.42
serverTraders = ["FR_Marksman","FR_Light","CIV_EuroWoman01_EP1","Worker1","RU_Assistant","Citizen1","GER_Soldier_EP1","Citizen2_EP1","Citizen3_EP1","CIV_EuroMan02_EP1","Citizen4","USMC_Soldier_Light","Assistant","Citizen2","FR_Sykes","CIV_EuroWoman02_EP1","Worker2","Soldier_M4A3_PMC","Pilot_EP1","Pierce","US_Soldier_Officer_EP1","US_Delta_Force_Medic_EP1","FR_Rodriguez","Dr_Annie_Baker_EP1","Worker3","RU_Doctor","Citizen3"];

/* NWA TRADER */
// Weapons, NWA Bash
menu_FR_Marksman = [
	[["Assault Rifle",602],["Light Machine Gun",603],["Pistols",606],["Shotguns and Single-shot",607],["Sniper Rifle",605],["Submachine Guns",604]],
	[],
	"neutral"
];
// Ammo, NWA Bash
menu_FR_Light = [
	[["Assault Rifle Ammo",609],["Light Machine Gun Ammo",610],["Pistol Ammo",611],["Shotguns and Single-shot Ammo",613],["Sniper Rifle Ammo",614],["Submachine Gun Ammo",612]],
	[],
	"neutral"
];
// General Store, NWA Bash
menu_CIV_EuroWoman01_EP1 = [
	[["Backpacks",632],["Clothes",631],["Cooked Meats",634],["Drinks",633],["Packaged Food",635]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"neutral"
];
// Vehicles, NWA Bash
menu_Worker1 = [
	[["Bikes and ATV",587],["Buses and Vans",588],["Cargo Trucks",586],["Fuel Trucks",589],["Military Unarmed",598],["Trucks",590],["Used Cars",520],["Utility Vehicles",591]],
	[],
	"neutral"
];
// Medical Supplies, NWA Bash
menu_RU_Assistant = [
	[["Chem-lites/Flares",669],["Medical Supplies",670],["Smoke Grenades",671]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
// Building/Parts/Tools, NWA Bash
menu_Citizen1 = [
	[["Building Supplies",508],["Toolbelt Items",510],["Vehicle Parts",509]],
	[],
	"neutral"
];

/* BANDIT TRADER */
menu_GER_Soldier_EP1 = [
	[["Ammunition",577],["Clothing",575],["Helicopter Armed",512],["Military Armed",569],["Trucks Armed",534],["Weapons",627]],
	[],
	"hostile"
];

/* BALOTA WHOLESALER */
menu_Citizen2_EP1 = [
	[["Wholesale",636]],
	[],
	"neutral"
];

/* CHERNO ELECTRO BOAT DEALER */
menu_Citizen3_EP1 = [
	[["Boats Armed",558],["Boats Unarmed",557]],
	[],
	"neutral"
];

/* THREE VALLEYS BOAT DEALER */
menu_CIV_EuroMan02_EP1 = [
	[["Boats Armed",673],["Boats Unarmed",672]],
	[],
	"neutral"
];

/* SOLNICHY WHOLESALER */
menu_Citizen4 = [
	[["Wholesale",555]],
	[],
	"neutral"
];

/* KLEN TRADER */
// Ammo, Klen
menu_USMC_Soldier_Light = [
	[["Assault Rifle Ammo",480],["Light Machine Gun Ammo",481],["Pistol Ammo",484],["Shotguns and Single-shot Ammo",573],["Sniper Rifle Ammo",482],["Submachine Gun Ammo",483]],
	[],
	"friendly"
];
// Medical Supplies, Klen
menu_Assistant = [
	[["Chem-lites/Flares",542],["Medical Supplies",541],["Smoke Grenades",543]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"friendly"
];
// Building/Parts/Tools, Klen
menu_Citizen2 = [
	[["Building Supplies",530],["Toolbelt Items",532],["Vehicle Parts",531]],
	[],
	"friendly"
];
// Weapons, Klen
menu_FR_Sykes = [
	[["Assault Rifle",485],["Light Machine Gun",486],["Pistols",489],["Shotguns and Single-shot",574],["Sniper Rifle",487],["Submachine Guns",488]],
	[],
	"friendly"
];
// General Store, Klen
menu_CIV_EuroWoman02_EP1 = [
	[["Backpacks",538],["Clothes",628],["Cooked Meats",630],["Drinks",601],["Packaged Food",629]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"friendly"
];
// Vehicles, Klen
menu_Worker2 = [
	[["Bikes and ATV",608],["Buses and Vans",563],["Cargo Trucks",564],["Fuel Trucks",492],["Military Unarmed",491],["Trucks",495],["Used Cars",585],["Utility Vehicles",565]],
	[],
	"friendly"
];

/* HERO TRADER */
menu_Soldier_M4A3_PMC = [
	[["Ammunition",478],["Clothes",476],["Helicopter Armed",493],["Military Armed",562],["Trucks Armed",479],["Weapons",477]],
	[],
	"hero"
];

/* AIRCRAFT TRADER NEA */
menu_Pilot_EP1 = [
	[["Airplanes",517],["Helicopter Unarmed",519]],
	[],
	"neutral"
];

/* AIRCRAFT TRADER NWA */
menu_Pierce = [
	[["Airplanes",517],["Helicopter Unarmed",519]],
	[],
	"neutral"
];

/* STARY TRADER */
// Ammunition, Stary
menu_US_Soldier_Officer_EP1 = [
	[["Assault Rifle Ammo",643],["Light Machine Gun Ammo",644],["Pistol Ammo",646],["Shotguns and Single-shot Ammo",649],["Sniper Rifle Ammo",647],["Submachine Gun Ammo",648]],
	[],
	"neutral"
];
// Weapons, Stary
menu_US_Delta_Force_Medic_EP1 = [
	[["Assault Rifle",637],["Light Machine Gun",638],["Pistols",674],["Shotguns and Single-shot",641],["Sniper Rifle",640],["Submachine Guns",642]],
	[],
	"neutral"
];
// Black market, Stary
menu_FR_Rodriguez = [
	[["Black Market Ammo",527],["Black Market Weapons",526],["Explosives",529]],
	[],
	"neutral"
];
// General Store, Stary
menu_Dr_Annie_Baker_EP1 = [
	[["Backpacks",496],["Clothes",497],["Cooked Meats",580],["Drinks",498],["Packaged Food",579]],
	[["ItemCopperBar","TrashJackDaniels",1,1,"buy","Empty Whiskey Bottle","Copper Bar",101]],
	"neutral"
];
// Vehicles, Stary
menu_Worker3 = [
	[["Bikes and ATV",650],["Buses and Vans",651],["Cargo Trucks",653],["Fuel Trucks",655],["Military Unarmed",658],["Trucks",659],["Used Cars",660],["Utility Vehicles",661]],
	[],
	"neutral"
];
// Medical Supplies, Stary
menu_RU_Doctor = [
	[["Chem-lites/Flares",666],["Medical Supplies",665],["Smoke Grenades",668]],
	[["FoodBioMeat","ItemZombieParts",1,1,"buy","Zombie Parts","Bio Meat",101]],
	"neutral"
];
// Building/Parts/Tools, Stary
menu_Citizen3 = [
	[["Building Supplies",662],["Toolbelt Items",663],["Vehicle Parts",664]],
	[],
	"neutral"
];