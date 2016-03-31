# A3_Exile_scarCODE_scriptBundle
##### This bundle is a pack of scripts from scarCODE for ArmA 3 Exile mod.
All client-side (mission-file) scripts are located in `mpmissions\Exile.MapName\scarCODE` <br />
All server-side scripts are located in `@ExileServer\addons` <br />
*Please note that some scripts need both server and client side code installed for it to work!* <br /> <br />

#### Scripts in this bundle
**1. Global Messenger** is a small and light-weight admin tool for sending stylish news-style messages to all players<br />
**2. introCamera** does a little camera intro when the player is logged in <br />
**3. introCredits** on-screen text which can hold anything you want the player to see when he/she logs in<br />
**4. MainMenu** a combined menu which anyone can use to open other install scarCODE menus <br />
**5. ServerInfoMenu** very advanced menu that can show any kind of info about your server to your players. <br />
**6. ServerLogo** shows a logo of your choice on the top-left side of the player's screen <br />
**7. ServerRestartWarning** will warn anyone on your server about incoming restarts using on-screen text <br />
<br />

#### Install guide
The easiest way is: take the `scarCODE` folder which is in `A3_Exile_scarCODE_scriptBundle\mpmissions\Exile.MapName\` and put it in the root of your own Exile missionfile.<br />
Then open these files: `cfgDefines.hpp`, `cfgFunctions.hpp` and `rscTitles.hpp` and simply put two FORWARD slashes in front of any #include line that has anything to do with a script that you do NOT want or do not have installed. Do that for all the 3 files I just mentioned.<br /> Also do that for any folder in `scarCODE\scripts` to make sure there are no scripts in there that you do not want.<br />
If you want the **GlobalMessenger** script you will also need to take `A3_scarCODE_GlobalMessenger` from `A3_Exile_scarCODE_scriptBundle\@ExileServer\addons\` and put it on your server in `@ExileServer\addons`. Also put any player's UID into `adminUIDs` (which is in `A3_scarCODE_GlobalMessenger\config.cpp`) of players that you want to be able to send global messages. <br />
<br />

#### Description.ext (IMPORTANT)
An example is in `mpmisssions\Exile.MapName`. Merge that with your own. Make sure that you do not have duplicate `cfgFunctions` and/or `RscTitles` otherwise your server will not start.<br />
<br />

#### Configuration guide
If you are looking for a config; simply look in `scarCODE\scripts\*nameOfScript*\config.hpp`
