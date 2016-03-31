                      ___  __  ___  |   __        __                    
 _ _ _. _ |_  |_     | |  /  \   /  |  (_  _ _  _/   _  _| _    _ _  _  
_)(_| ||_)|_  |_)\/  | |  \__/  /   |  __)(_(_|| \__(_)(_|(-.  (_(_)||| 
       |         /                                                       

=== INFO ===
Script name: 		ScarCode Epoch SafeZone protection
Version:			0.5.3
Author: 			IT07 a.k.a. "The Fixer" from ScarCode.com
Contact/Support: 	IT07@scarcode.com
Description:		Inventory and Zed Protection System for Epoch/Overpoch
Explanation:		This script will deny access to the inventory of anything else other than the player's or the vehicle he/she is in or a loot pile
Credits:			Sarge for original zedshield script

PLEASE READ! This script recommends usage with IT07's redesigned Napf traders for Epoch/Overpoch (downloadable from epochmod forums)

=== INSTALLATION ===

. unpack your server mission file (pbo)

. unpack your client/server dayz_code.pbo located in the Epoch folder. (I can not give exact name here because every launches uses a different name)

. navigate inside of unpacked dayz_code and open a folder named "init". That folder should have a file called compiles.sqf. Copy that file.

. paste compiles.sqf into the root of your mission file.

. inside the root of te mission file, create a folder called:
	init
	
. move the compiles.sqf from your mission file root into the init folder you just created.

. open init.sqf located in your mission file's root.
	. find this line: 
	call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
	. and change that line into:
	call compile preprocessFileLineNumbers "init\compiles.sqf";				//Compile regular functions

. open compiles.sqf file inside the init folder of your mission file.
	. find this line in compiles.sqf:
	player_traderCity = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderCity.sqf";
	. and change it into:
	player_traderCity = 		compile preprocessFileLineNumbers "compile\player_traderCity.sqf";

. copy a file called player_traderCity.sqf from dayz_code/compile/

. create a folder in the root of your mission file called:
	compile
	. paste player_traderCity.sqf in there
	. open it with notepadd++ or any other kind of software that can compare 2 files

. open player_traderCity.sqf located in the same downloaded folder as this README.txt file is in.
	. compare it against the player_traderCity.sqf you copied from dayz_code/compile/
	. if no differences found, be happy. Otherwise, mail me the contents of the player_traderCity.sqf that you got from dayz_code/compile and tell me the difference, please ;)

. pack your mission file again and have fun!

	