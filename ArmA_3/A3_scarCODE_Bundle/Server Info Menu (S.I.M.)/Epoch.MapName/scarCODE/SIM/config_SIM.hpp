/*
	Author: IT07

	Description:
	Configuration and resource file for server menu. Should be used to adjust the content of menu.
*/

class simConfig
{
	class Settings
	{
		////////////////////////////////////////////////////////////////
		///////  General config for the menu  //////////////////////////
		///////  Please adjust the settings below to your needs  ///////
		////////////////////////////////////////////////////////////////
		/* Ignore if player Support Requester is installed */ customControl = "User7"; // To disable, use false. Info: https://community.bistudio.com/wiki/inputAction/actions/bindings
		/* Ignore if Player Support Requester is installed */ useScrollMenu = 1; // To disable, use false. Default: 1 (enabled)
		menuCategories[] = {"General info","Rules","Donating","Scripts and Credits"}; // Try to keep amount as low as possible for optimal speed/load
		shortServerName = "{SCARCODE} S.I.M. Testing Server (Epoch Altis 0.3.0.3/1.44) -- by TransIP.nl"; // Will be title of menu. This example fits exactly in the bar.
		serverAddress = 123.456.789:2302; // The IP of the server
		maxPlayers = 100; // This should be exactly the same as the maximum slot count of your server
		restartInterval = 4; // Number of hours your server will be online before it automatically restarts. Set to 0 if you use a restart schedule.
		serverAH = "infiSTAR, BattlEye"; // Put your antihack(s) here. Keep it short.
		serverManagedBy = "NameOfAdmin1234"; // Put name of the server manager here. Max 16 characters
		gametrackerURL = "http://gametracker.com/";
		#define TITLEBACKGROUND 0.341,0.529,0.482 // In format R,G,B | color will be given to title bars | tool to convert from HTML color codes: http://killzonekid.com/hex-2-arma-gui-colour-converter/
		#define TITLETEXT 1,1,1 // Same format as above. Color will be given to the text of the title bars.
		/////////////////////////////////////////////////////////
		///////  End of general config  /////////////////////////
		/////////////////////////////////////////////////////////
	};
	class Content
	{
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  Config for the content of each menu category  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  == Instructions for editing the content ==  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  step 1: Adjust the amount of class items (below) to the amount of categories you have set in _menuCategories  ///////////////////////////////////////////////////////////
		///////  step 2: Configure contentArray. Please look at the examples to see how to do it. contentArray is used to divide the text into pieces for easier configuration  //////////
		///////  step 2b: it does not matter how you name the items in contentArray. They just have to match the actual item names that are defined in contentArray[]  ///////////////////
		///////  step 3: go nuts! :)  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  NOTE 1: Do not put the title in contentArray because the title is already put into the title bar automatically  /////////////////////////////////////////////////////////
		///////  NOTE 2: Less items in contentArray[] is faster  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  NOTE 3: <br /> is a linebreak, <img image'path\to\Image.jpg' /> is an image and <a href='url'>this is a link</a>  ///////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		class 1 // First in _menuCategories
 		{
			contentArray[] = {"txtOne","txtTwo","txtThree","txtFour","txtFive"};
			txtOne = "<t size='1.5'>EXAMPLE TITLE</t> <br /><br /> <img image='ScarCode\Images\example.jpg' size='7' /> <br /><br />";
			txtTwo = "<t size='1.5'>SERVER FEATURES</t> <br /> - Feature 1 <br /> - Feature 2 <br /> - Feature 3 <br /> - Feature 4 <br /> - Feature 5 <br /> - Feature 6 <br /> - Feature 7 <br /><br />";
			txtThree = "<t size='1.5'>WEBSITE</t> <br /><a href='url'>url</a><br /><br />";
			txtFour = "<t size='1.5'>VOICE SERVER</t> <br />We have a public TeamSpeak/Ventrilo/Razer Comms/RaidCall/Vivox/Xfire/Mumble server available at 1.2.3.4.5:1234 or <a href='url' color='#D13B3B'>voice.yourwebsite.com</a> <br /><br />";
			txtFive = "<t size='1.5'>SERVER ADMINS</t> <br /> - AdminName [title and function] <br /> - AnotherAdmin [title and function]";
		};
		class 2 // Second in _menuCategories
		{
			contentArray[] = {"txtOne","txtTwo","txtThree","txtFour","txtFive","txtSix","txtSeven"};
			txtOne = "<t size='1.5'>RULE #1</t> <br /> - No racism/profanity/flaming <br />  <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a (temporary/permanent) ban.</t> <br /><br />";
			txtTwo = "<t size='1.5'>RULE #2</t> <br /> - No voice over side/radio channel <br /> <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a kick or (temporary/permanent) ban.</t> <br /><br />";
			txtThree = "<t size='1.5'>RULE #3</t> <br /> - No use/placement of explosives <br /> <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a (temporary/permanent) ban.</t> <br /><br />";
			txtFour = "<t size='1.5'>RULE #4</t> <br /> - No disrespect towards other player(s) and or Admins <br /> <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a kick / (temporary/permanent) ban.</t> <br /><br />";
			txtFive = "<t size='1.5'>RULE #5</t> <br /> - No cheating/glitching or bug abuse/exploiting <br /> <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a (temporary/permanent) ban.</t> <br /><br />";
			txtSix = "<t size='1.5'>RULE #6</t> <br /> - No spawn killing <br /> <t size='0.75' color='#c2c2c2'>Breaking of this rule will result in a (temporary/permanent) ban.</t> <br /><br />";
			txtSeven = "<t size='1.5'>RULE #7</t> <br /> - No excuses such as: I did not read the rules. <br /> <t size='0.75' color='#c2c2c2'>This will be considered very stupid.</t> <br /><br />";
		};
		class 3 // Third in _menuCategories
		{
			contentArray[] = {"txtOne","txtTwo"};
			txtOne = "<t size='1.5'>PLEASE DONATE</t> <br />If you play on and enjoy this server, please consider a donation to keep the high server costs down. <br /><br />";
			txtTwo = "This server costs $80 p/month so we could really use any kind of donation. <a href='url' color='#D13B3B'>click here to donate</a> <br /><br />";
		};
		class 4 // Fourth in _menuCategories
		{
			contentArray[] = {"txtOne"};
			txtOne = " - {ScarCode} Server info menu by IT07 <a color='#D13B3B' href='http://scarcode.com'>http://scarcode.com</a> <br /> - Some other script <br /> - Another script <br /> - A script";
		};
	};
};