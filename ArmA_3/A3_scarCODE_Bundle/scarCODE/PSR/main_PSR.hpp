#include "config_PSR.hpp"

class cfgNotifications
{
	class PSRdefault
	{
		title = "P.S.R. NOTIFICATION"; // Tile displayed as text on black background. Filled by arguments.
		iconPicture = ""; // Small icon displayed in left part. Colored by "color", filled by arguments.
		description = "%1"; // Brief description displayed as structured text. Colored by "color", filled by arguments.
		color[] = {1,1,1,1}; // Icon and text color
		duration = 4; // How many seconds will the notification be displayed
		priority = 7; // Priority; higher number = more important; tasks in queue are selected by priority
		difficulty[] = {}; // Required difficulty settings. All listed difficulties has to be enabled
		sound = "zoomIn";
		soundClose = "zoomOut";
	}
	class PSR_newRequest: PSRdefault
	{
		title = "P.S.R. NEW REQUEST";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_ca.paa";
		color[] = {1,0.784,0.016,1};
	};
	class PSR_requestAnswered: PSRdefault
	{
		title = "P.S.R. SUPPORT ENROUTE";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa";
		color[] = {0.02,1,0.431,0.8};
	};
	class PSR_requestPicked: PSRdefault
	{
		title = "P.S.R. REQUEST ANSWERED";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_ca.paa";
		color[] = {1,1,1,0.8};
	};
	class PSR_requestSent: PSRdefault
	{
		title = "P.S.R. REQUEST SENT";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa";
		description = "Request sent! Wait for response";
		color[] = {1,0.784,0.016,1};
	};
	class PSR_maxReached: PSRdefault
	{
		title = "P.S.R. MAX REACHED";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa";
		color[] = {1,0.02,0.231,0.8};
	};
	class PSR_offLine: PSRdefault
	{
		title = "P.S.R. IS OFFLINE";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa";
		description = "Request failed! Support is OFFLINE...";
		color[] = {1,0.02,0.231,0.8};
	};
	class PSR_timeOut: PSRdefault
	{
		title = "P.S.R. REQUEST TIMEOUT";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa";
		description = "Request timed out! No response...";
		color[] = {1,0.02,0.231,0.8};
	};
	class PSR_noToken: PSRdefault
	{
		title = "P.S.R. AUTHORIZATION ERROR";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa";
		description = "Authorization failed! try again later.";
		color[] = {1,0.02,0.231,0.8};
	};
	class PSR_noFunds: PSRdefault
	{
		title = "P.S.R. PAYMENT ERROR";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_ca.paa";
		color[] = {1,0.02,0.231,0.8};
	};
	class PSR_completed: PSRdefault
	{
		title = "P.S.R. REQUEST COMPLETED";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIconDone_ca.paa";
		color[] = {0.02,1,0.431,0.8};
	};
};

class SC_psrDiag
{
	idd = 298;
	onLoad = "[_this] spawn SC_fnc_loadPsr";
	movingEnable = 1;
	class controls
	{
		#include "rsc_PSR.hpp"
	};
};