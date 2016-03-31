## VEMF Changelog

#### `v0726.6`
**[ADDED]** Option to enable/disable the ability to lift loot crate <br />
<br />

#### `v0726.3`
**[NEW]** refreshed mission notification with new animations <br />
**[FIXED]** difficult to see quickly if mission message means new one or a defeated one <br />
**[FIXED]** network load peak and fps lag when mines are placed by mission <br />
**[CHANGED]** server-side message broadcasting to accommodate for including the notification type in the broadcast <br />
<br />

#### `v0725.8`
**[CHANGED]** default config value of validateLoot from -1 to 1 (enabled) <br />
**[CHANGED]** default config value of maxGlobalMissions from 5 to 10 <br />
**[CHANGED]** default config value of maxInvasions from 5 to 3 <br />
**[CHANGED]** increased detection speed of players for triggering missions from 200 to 250 <br />
**[REMOVED]** any usage of playableUnits command <br />
**[REMOVED]** any checks for the player's side <br />
**[REMOVED]** config option to enable/disable the crate spawn sound <br />
**[FIXED]** old stuff in fn_checkLoot.sqf <br />
**[FIXED]** VEMF_Reloaded logs still say [VEMF] as the tag <br />
**[FIXED]** mission amount can go beyond the limit <br />
**[FIXED]** fn_playerCount.sqf: unreliable detection of player amount <br />
**[FIXED]** VEMF_Reloaded started anyway without the actual amount of minimal players to be ingame <br />
**[IMPROVED]** fail-safe "if checks" in fn_missionTimer.sqf <br />

#### `v0724.5`
**[FIXED]** Instabilities in the spawning and timing out of missions <br />
**[ADDED]** Option to blacklist buildings <br />
<br />

#### `v0724.4`
**[FIX ATTEMPT]** Missions not spawning anymore under very specific conditions <br />
<br />

#### `v0.0724.3`
**[ADDED]** Option to enable/disable mission announcement messages <br />
**[FIXED]** Missions not spawning anymore after a while <br />
<br />

#### `v0.0723.11`
**[NEW]** Epoch_VEMF is now called Epoch_VEMF_Reloaded <br />
**[ADDED]** Option to enable removal of .50 cals from missions after completion <br />
**UPDATE NOTES:** Reinstall it all from scratch <br />
<br />

#### `v0.0722.8`
**[NEW]** changed the name of the server-side pbo from VEMF to Epoch_VEMF <br />
**[ADDED]** Option to allow minimum/maximum AI groups as well as units per mission <br />
**[FIXED]** Non-functional launcher chance <br />
**[CHANGED]** AI has now less aimshake and more stamina by default. Feel free to change to your own likings <br />
<br />

#### `v0.0721.23`
**[FIXED]** Unreliable removal of launchers and ammo <br />
**[CHANGED]** Mission DynamicLocationInvasion is now called MalitiaInvasions <br />
**[NEW]** AI are now called Militia and all wear Balaclava <br />
**[NEW]** If enabled, players will earn money for killing Militia <br />
**[NEW]** Rewritten client-side code. Removes the requirement of BE Filters <br />
<br />

#### `v0.0720.2 HOTFIX`
**[FIXED]** Missing config options. Pardon me, getting things mixed up with the Exile build of VEMF <br />
<br />

#### `v0.0720.1 HOTFIX`
**[FIXED]** fn_aiKilled.sqf: Suspending not allowed in this context, line 72 <br />
<br />

#### `v0.0719.6`
**[NEW]** Automatic removal of loot crate marker when player gets close <br />
**[ADDED]** Option to enable/disable mission markers <br />
**[ADDED]** Ability to put `maxGlobalMissions` on -1. Disables the mission limit <br />
**[ADDED]** Exile default safe zones to mission blacklist positions <br />
**[ADDED]** Option to enable/disable loot crate markers <br />
**[ADDED]** Option to enable/disable loot crate parachute spawn <br />
**[ADDED]** Option to enable/disable loot crate visual smoke/chemlights <br />
**[ADDED]** Option to enable/disable loot crate spawn sound (once) <br />
**[ADDED]** Logging of successfull removal/exploding of mines <br />
**[ADDED]** Code changes to fn_missionTimer.sqf to allow ignoring of global mission count <br />
**[ADDED]** Code changes to DLI mission to prevent removal of non-existing mission marker <br />
**[CHANGED]** several config options from negative to positive <br />
**[CHANGED]** Default debug mode from 2 to 0 (errors only) <br />
**[CHANGED]** AI difficulty config now less lines <br />
**[CHANGED]** AI Veteran and Harcore difficulty increased <br />
**[CHANGED]** Mines are now switched off by default <br />
**[CHANGED]** Default mine removal mode is now explode <br />
**[CHANGED]** fn_loadLoot.sqf: now empties the crate instead of the mission itself <br />
**[FIXED]** Error in expression fn_findPos.sqf <br />
**[FIXED]** Error in expression fn_loadInv.sqf with specific set of config settings <br />
<br />

#### `v0.0718.9`
**[ADDED]** Option to enable/disable the placement of a marker on the loot crate <br />
**[ADDED]** Attempt to fix the floating crate problem <br />
**[ADDED]** Fail-safety for fn_checkPlayerPresence.sqf <br />
**[ADDED]** Fail-safety for fn_placeMines.sqf <br />
**[ADDED]** Fail-safety for fn_spawnAI.sqf <br />
**[CHANGED]** Default value of `validateLoot` from 1 to -1 <br />
**[REMOVED]** Option to enable/disable sound on the loot crate <br />
**[FIXED]** Mines not removing or exploding <br />
**[FIXED]** Structure error in fn_findPos.sqf <br />
<br />

#### `v0.0717.9`
**[ADDED]** AI Difficulty presets <br />
**[CHANGED]** fn_spawnAI.sqf: changes to make AI difficulty presets possible <br />
**[FIXED]** Duplicate mission spawns on same location <br />
**[FIXED]** Loot crate stuck in air <br />
**[FIXED]** Loot crate not making any sound <br />
<br />

#### `v0.0716.11`
**[ADDED]** Option to enable AT-only mines/AP-only mines/both types of mines <br />
**[NEW]** AI Kill messages now show: killer, distance <br />
**[FIXED]** Instability in kill messages <br />
**[FIXED]** Other stuff <br />
<br />

#### `v0.0715.40`
**[ADDED]** Option to enable/disable AT mines at mission location <br />
**[ADDED]** (Mines) option to control the amount of mines <br />
**[ADDED]** (Mines) option to control the removal of mission mines <br />
**[ADDED]** Option to enable/disable mission crates emitting a sound when parachuted <br />
**[ADDED]** (Loot crate sound beam) option to set for how long the sound is transmitted <br />
**[ADDED]** Option to set the types of ammoboxes used as loot crates <br />
**[ADDED]** Option to set the types of chemlights used on loot crates <br />
**[ADDED]** Option to set the types of smoke used on loot crates <br />
**[FIXED]** Incorrect removal of launcher ammo from AI <br />
**[FIXED]** Function "name" RPT errors <br />
**[FIXED]** Slow waitForMissionDone <br />
**[FIXED]** Overall code structure. Is now much much faster <br />
**[FIXED]** Broken position blacklist config option <br />
**[FIXED]** Launch VEMF log not showing up with certain debug modes <br />
**[NEW]** fn_placeMines.sqf <br />
**[NEW]** AI will always have a vest now <br />
**[REMOVED]** "B_KitBag_mcamo_Eng" in backpack loot list and AI backpack list <br />
<br />

#### `v0.0714.4`
**[ADDED]** Option to disable/enable the removal of AI bodies <br />
**[BACK]** Option to enable/disable the removal of launchers from AI's inventory when they die <br />
**[CHANGED]** function description for fn_getSetting.sqf <br />
<br />

#### `v0.0713.1`
**[FIXED]** Error in expression: Error undefined variable in expression LOGIC <br />
**[CHANGED]** waitForMissionDone interval was 2, now 5 <br />
<br />

#### `v0.0712.195`
**[CHANGED]** IMPORTANT: Client-side code for VEMF has been recoded. Check install instructions for details <br />
**[ADDED]** Support for multiple and single Headless Client(s) <br />
**[ADDED]** Headless Client load balancing <br />
**[ADDED]** AI Load-off to clients if no HC present <br />
**[ADDED]** Minimal server FPS option <br />
**[ADDED]** Loot table validation (can be enabled/disabled) <br />
**[ADDED]** Option in config for max global missions <br />
**[CHANGED]** config option "timeOutTime" now rules all. Use -1 to disable timeout <br />
**[CHANGED]** minMissionTime is now minNew in config <br />
**[CHANGED]** maxMissionTime is now maxNew in config <br />
**[ADDED]** Almyra (Altis) to blacklist <br />
**[ADDED]** sayKilled option to config. Shows kill messages when AI get killed <br />
**[ADDED]** allowSmall option to config. -1 disallows invasions on small locations <br />
**[ADDED]** enableDebug option to config. <br />
**[REMOVED]** Temporarely removed heliCrash mission due to delayed development of new version <br />
**[NEW]** Mission specific settings are now inside their own class in config <br />
**[NEW]** AI skill can now be configured to your needs for each skill type <br />
**[NEW]** Recoded loot system. Max amount for each item can be defined now <br />
**[REMOVED]** Guns with attachments in loot crate <br />
**[ADDED]** New skins to aiUniforms <br />
**[REMOVED]** EPOCH Female skins from aiUniforms <br />
**[ADDED]** More new bags to backpackLoot <br />
**[ADDED]** Config options for min and max slots of loot types in crate <br />
**[REMOVED]** RequiredAddons from config.cpp <br />
**[CHANGED]** When AI gets killed, unit flashes (instead of dying) a few times and gets deleted to confirm the kill <br />
**[NEW]** fn_checkPlayerpresence for easy checking for player in the area <br />
**[DELETED]** fn_findLoc.sqf <br />
**[ADDED]** fn_findPos.sqf <br />
**[DELETED]** fn_findPlayers.sqf <br />
**[NEW]** fn_getSetting can now retrieve from given config path as well <br />
**[CHANGED]** AI will not have items on them anymore because of the new kill-confirm system <br />
**[CHANGED]** spawn distance of crate. Needed bigger distance because crate failed to find position in other towns with low distance.
**[FIXED]** A shitload of stuff I can not even remember I fixed. Happy shootin y'all :) <br />
<br />

#### `v0.0702.16`
**[CHANGED]** default timeOutTime from 10 to 25 <br />
**[ADDED]** extra check in missionTimer for player count <br />
**[ADDED]** fn_findPlayers.sqf: detects player(s) in location <br />
**[ADDED]** default Blacklisted locations for Altis <br />
**[ADDED]** playerCheck option to config.cpp <br />
**[ADDED]** distanceCheck option added to config.cpp <br />
**[ADDED]** distanceTooClose option added to config <br />
**[ADDED]** distanceMaxPrefered option added to config <br />
**[REMOVED]** tracker from fn_aiKilled.sqf <br />
**[REMOVED]** unit setVars from fn_spawnAI <br />
**[IMPROVED]** fn_findLoc code structure and speed <br />
**[IMPROVED]** tiny things in heliCrash mission <br />
**[FIXED]** server-lag from fn_waitForMissionDone <br />
**[FIXED]** server-lag from fn_waitForPlayers <br />
<br />

#### `v0.0632e`
**[FIXED]** Old references in RPT to DynamicTownInvasion <br />
**[FIXED]** Crash issues with heliCrash mission <br />
**[NEW]** heliCrash mission will have marker on wreck <br />
**[NEW]** heliCrash loot amount per pile decreased <br />
**[NEW]** heliCrash pilots/crew have special loadout <br />
**[NEW]** VEMF Version will not show in RPT. Check config.cpp instead <br />
<br />

#### `v0.0612f`
**[NEW]** heliPatrol changed into heliCrash <br />
**[FIXED]** Weird behaviour of heli <br />
<br />

#### `v0.0602`
**[NEW]** BETA version of HeliPatrol mission :) <br />
**[NEW]** Config options are now in config.cpp not in configuration.sqf! <br />
**[NEW]** Location invasion missions will now spawn within 5Km of random player <br />
**[IMPROVED]** Server Load <br />
**[IMPROVED]** Overall code structure <br />
**[IMPROVED]** Spawn ALT of loot crate. Is now higher for all you lazy players <br />
**[REMOVED]** fn_getMapCenter. New system makes mission system COMPATIBLE WITH ALL ARMA 3 MAPS <br />
**[REMOVED]** Useless food and drinks from AI inventory. More chance for FAK <br />
**[REMOVED]** Several debugging lines. Who needs debugging when it works? <br />
**[REMOVED]** All sorts of useless code and files <br />
<br />

#### `v0.0512`
**[REMOVED]** fn_aiWatchdog <br />
**[ADDED]** Option to remove AI launchers and the ammo for them on AI death <br />
**[IMPROVED]** AI spawning reliability <br />
**[REMOVED]** Useless code execute on AI death <br />
**[CHANGED]** Mission broadcast messages <br />
<br />

#### `v0.0502`
**[ADDED]** AI with backpacks have launchers. Can be enabled/disabled in configuration.sqf <br />
<br />

#### `v0.0492`
**[FIXED]** fn_missionTimer: did not wait for required player amount <br />
**[ADDED]** Support for multiple missions at the same time. Max amount configurable <br />
<br />
#### `v0.0482a`
**[FIX ATTEMPT]** 1 more unit present after mission complete <br />
**[CHANGED]** Default AI skill from 0.25 to 0.23 again after lots of testing. <br />
<br />

#### `v0.0482`
**[DONE]** fn_spawnAI.sqf code improvements <br />
**[DONE]** fn_waitForMissionDone.sqf rewritten <br />
**[ADDED]** Option to enable minimum players to be ingame for missions to start<br />
**[FIXED]** Comment for VEMF_aiSkill has incorrect default value <br />
**[FIXED]** Unreliable spawning of units <br />
**[CHANGED]** DynamicTownInvasion is now called DynamicLocationInvasion because missions will now also spawn elsewhere<br />
**[CHANGED]** VEMFRequiredKillPercent is now in actual percentage. So: 100 = 100% <br />
<br />

#### `v0.0472b`
**[FIXED]** RPT errors related to findHouses.sqf <br />
**[FIXED]** settings for group sizes are ignored <br />
**[FIXED]** Waaaaay to complicated fn_spawnAI.sqf :) <br />
**[CHANGED]** aiWatchdog interval from 1200 to 600 seconds <br />
<br />

#### `v0.0472a`
**[NEW]** Loot crate now spawns in with parachute <br />
**[FIXED]** aiWatchdog checking too often <br />
<br />

#### `v0.0451`
**[ADDED]** Missions now have markers :) <br />
<br />

#### `v0.0441`
**[FIXED]** Several expression errors in numerous files <br />
**[FIXED]** AI not spawning back in after leaving mission alone <br />
**[OTHER]** Improved server stability <br />
<br />

#### `v0.0411a ALPHA`
**[FIXED]** Broken mission timer and timeout <br />
**[NEW]** More stable CPU usage for server <br />
**[CHANGED]** Default AI skill from 3 to 2.5 <br />
**[OTHER]** Several code structure improvements <br />
<br />

#### `v0.0401a ALPHA`
**[NEW]** Players in vehicles can now trigger AI spawn <br />
**[NEW]** Loot revamp :) all in seperate configurable arrays now <br />
**[FIXED]** Code. Should be a little more kind to the server now :) <br />
<br />

#### `v0.0381a ALPHA`
**[NEW]** Loot crate will have smoke at day, flair at night <br />
**[NEW]** AI will now not always have a backpack <br />
**[NEW]** AI will now not always have a vest <br />
<br />

#### `v0.0370r HOTFIX`
**[FIXED]** No missions after first mission <br />
**[CHANGED]** fn_init.sqf to fn_initVEMF.sqf <br />
<br />

#### `v0.0350r`
###### Improved code structure/readability
**[REWRITE]** configuration.sqf <br />
**[IMPROVED]** function code readability <br />
**[ADDED]** Functions now have returns info in header <br />
<br />
