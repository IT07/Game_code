/// Global configuration
_restartWarningTxt = "== WARNING =="; // What the first line will say for all restart warnings
_warningSchedule = [120,30,20,15,10,5,2,1]; // At how many minutes should warnings be given
_enableDebug = false; // DEFAULT: false. Will show hintSilent with some info if true
/////// Configuration for DYNAMIC restarts
_restartInterval = 4; // Server uptime in hours before automatic restart | DEFAULT: 4 | MINIMAL: 0.5; (that is minimum of 30 minutes) | Ignore this setting if not using dynamic restarts