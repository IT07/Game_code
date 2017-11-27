# A3_EPOCH_virtualGarage

#### What is this?
This script/menu gives any EPOCH player the ability to have a "cloud-storage" vehicle garage.<br />
The amount of garage slots can be changed by the admin that installs this script onto his/her server.<br />
All vehicles inside the garage are saved to the database (Redis) and are persistent IF inside the garage. <br />
Which means that when the player takes it out and does not put it back before the server restarts; it will be gone.<br />
<br />
<br />
#### Whats New?
<br />
**Server Side**<br />
[REMOVED] PublicVariable Event Handler<br />
[REMOVED] Spawn loop for generating keys for each <br />
[ADDED] 3 new functions to handle the removed PVEH(ReadFrom/WriteTo/TrashFrom)<br />
[ADDED] 2 new functions to spit out client vgs key and client garage on join<br />
[ADDED] Debug config option to log every use/request<br />
<br />
**Client Side**<br />
[FIXED] Global.hpp missing and caused hosts issues getting the script setup and running<br />
[ADDED] Ships are now searched for and listed for storage in the garage<br />
[FIXED] System searched for "Air", but listed only "Helicopters" (now planes and VTOL will show up).<br />
[ADDED] Scroll Wheel config option to disable/enable<br />
[ADDED] Dyna Menu self interaction<br />
[ADDED] Jammer requirement config option along with max distance from jammer entry<br />
[ADDED] Scroll Wheel will follow Jammer Requirements and Max Distance if enabled<br />
[ADDED] Dyna Menu will follow Jammer Requirements and Max Distance if enabled<br />
[ADDED] Debug config option to log each client vgs event<br />
[ADDED] New Function to handle the receipt of data from VGS server<br />
[FIXED] Refreshing of VGS GUI on Move IN and Move OUT was not refreshing both sides properly.<br />
<br />
**Configs**<br />
// Settings here<br />
debug = 0; // 1 = ON // 0 = OFF<br />
range = 25; // Vehicles within this range of player can be moved into garage<br />
useScrollWheel = 1; // Scroll Wheel VGS Menu<br />
requireJammer = 0; // 1 = ON // 0 = OFF<br />
maxDistanceFromJammer = 300; // meters, only applies if requireJammer = 1<br />
<br />
<br />
#### Installation
**clientSide:**<br />
move the folder called `scarCODE` into the root of your mission file.<br />
Then open your description.ext and merge the content of the description.ext provided with this repository.<br />
Then open your epoch_configs\configs\cfgRemoteExec.hpp and merge the content of the cfgRemoteExec.hpp provided with this repository.<br />
Then open your epoch_configs\configs\cfgActionMenu_self.hpp and merge the content of the cfgActionMenu_self.hpp provided with this repository.<br />
Then open your epoch_configs\configs\cfgFunctions.hpp and merge the content of the cfgFunctions.hpp provided with this repository.<br />
Make sure you do not have `tag="SC";` twice.<br />
<br />
**serverSide:**<br />
move the folder called `a3_epoch_virtualGarage` into your server's `@epochhive\addons` folder.<br />
When done with configuration, you can pack the contents of `a3_epoch_virtualGarage` into a pbo named exactly the same.<br />
<br />
#### Configuration
**clientSide:** open `config_VGS.hpp` located in `scarCODE\VGS` and edit its settings to your likings <br />
**serverSide:** open `config.cpp` located in `@epochhive\addons\a3_epoch_virtualGarage` and edit its setting to your likings <br />
<br />
*Want to help me out with making more stuff in the future? You can donate here: (PayPal) http://scarcode.com/donate/*
