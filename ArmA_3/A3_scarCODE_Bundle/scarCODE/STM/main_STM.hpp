#include "config_STM.hpp"

class tpMap
{
	style = 0x30;
	text = "";
	colorOutside[]={0,0,0,1};
	colorRailWay[]={0.8,0.2,0,1};
	colorTracks[]={0.84,0.76,0.65,0.15};
	colorRoads[]={0.7,0.7,0.7,1};
	colorMainRoads[]={0.9,0.5,0.3,1};
	colorTracksFill[]={0.84,0.76,0.65,1};
	colorRoadsFill[]={1,1,1,1};
	colorMainRoadsFill[]={1,0.6,0.4,1};
	colorGrid[]={0.1,0.1,0.1,0.6};
	colorGridMap[]={0.1,0.1,0.1,0.6};
	colorBackground[]={1.00,1.00,1.00,1.00};
	colorText[]={0.00,0.00,0.00,1.00};
	colorSea[]={0.56,0.80,0.98,0.50};
	colorForest[]={0.60,0.80,0.20,0.50};
	colorRocks[]={0.50,0.50,0.50,0.50};
	colorCountlines[]={0.65,0.45,0.27,0.50};
	colorMainCountlines[]={0.65,0.45,0.27,1.00};
	colorCountlinesWater[]={0.00,0.53,1.00,0.50};
	colorMainCountlinesWater[]={0.00,0.53,1.00,1.00};
	colorForestBorder[]={0.40,0.80,0.00,1.00};
	colorRocksBorder[]={0.50,0.50,0.50,1.00};
	colorPowerLines[]={0.00,0.00,0.00,1.00};
	colorNames[]={0.00,0.00,0.00,1.00};
	colorInactive[]={1.00,1.00,1.00,0.50};
	colorLevels[]={0.00,0.00,0.00,1.00};
	maxSatelliteAlpha=0.85;
	alphaFadeStartScale=0.75;
	alphaFadeEndScale=0.8;
	moveOnEdges=0;
	ptsPerSquareSea=6;
	ptsPerSquareTxt=8;
	ptsPerSquareCLn=8;
	ptsPerSquareExp=8;
	ptsPerSquareCost=8;
	ptsPerSquareFor="4.0f";
	ptsPerSquareForEdge="10.0f";
	ptsPerSquareRoad=2;
	ptsPerSquareObj=10;
	scaleMin=0.001;
	scaleMax=1;
	showCountourInterval=2;
	scaleDefault=0.1;
	onMouseButtonClick="";
	onMouseButtonDblClick="";
	font="TahomaB";
	sizeEx=0.040000;
	fontLabel="TahomaB";
	sizeExLabel=0.02;
	fontGrid="TahomaB";
	sizeExGrid=0.02;
	fontUnits="TahomaB";
	sizeExUnits=0.02;
	fontNames="TahomaB";
	sizeExNames=0.02;
	fontInfo="TahomaB";
	sizeExInfo=0.02;
	fontLevel="TahomaB";
	sizeExLevel=0.02;

	class ActiveMarker
	{
		color[]={0.30,0.10,0.90,1.00};
		size=50;
	};
	class Bunker
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=14;
		importance="1.5*14*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Bush
	{
		icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[]={0.55,0.64,0.43,1.00};
		size=14;
		importance="0.2*14*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class BusStop
	{
		icon="\A3\ui_f\data\map\mapcontrol\busstop_ca.paa";
		color[]={0.00,0.00,1.00,1.00};
		size=10;
		importance="1*10*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Command
	{
		icon="#(argb,8,8,3)color(1,1,1,1)";
		color[]={0.00,0.00,0.00,1.00};
		size=18;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class CustomMark
	{
		color[]={0,0,0,1};
		icon="\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size=24;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class Cross
	{
		icon="\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="0.7*16*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Fortress
	{
		icon="\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Fuelstation
	{
		icon="\A3\ui_f\data\map\mapcontrol\fuelstation_ca.paa";
		color[]={1.00,0.35,0.35,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.75;
		coefMax=4.00;
	};
	class Fountain
	{
		icon="\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=12;
		importance="1*12*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Hospital
	{
		icon="\A3\ui_f\data\map\mapcontrol\hospital_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.50;
		coefMax=4;
	};
	class Chapel
	{
		icon="\A3\ui_f\data\map\mapcontrol\chapel_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="1*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Church
	{
		icon="\A3\ui_f\data\map\mapcontrol\church_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Lighthouse
	{
		icon="\A3\ui_f\data\map\mapcontrol\lighthouse_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=20;
		importance="3*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Quay
	{
		icon="\A3\ui_f\data\map\mapcontrol\quay_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2*16*0.05";
		coefMin=0.50;
		coefMax=4.00;
	};
	class Rock
	{
		icon="\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[]={0.35,0.35,0.35,1.00};
		size=12;
		importance="0.5*12*0.05";
		coefMin=0.25;
		coefMax=4.00;
	};
	class Ruin
	{
		icon="\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		color[]={0.78,0.00,0.05,1.00};
		size=16;
		importance="1.2*16*0.05";
		coefMin=1.00;
		coefMax=4.00;
	};
	class Stack
	{
		icon="\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Tree
	{
	icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
	color[]={0.55,0.64,0.43,1.00};
	size=12;
	importance="0.9*16*0.05";
	coefMin=0.25;
	coefMax=4.00;
	};
	class SmallTree
	{
	icon="\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
	color[]={0.55,0.64,0.43,1.00};
	size=12;
	importance="0.6*12*0.05";
	coefMin=0.25;
	coefMax=4.00;
	};
	class Tourism
	{
	icon="\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
	color[]={0.78,0.00,0.05,1.00};
	size=16;
	importance="1*16*0.05";
	coefMin=0.70;
	coefMax=4.00;
	};
	class Transmitter
	{
		icon="\A3\ui_f\data\map\mapcontrol\transmitter_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=20;
		importance="2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class ViewTower
	{
		icon="\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=16;
		importance="2.5*16*0.05";
		coefMin=0.50;
		coefMax=4.00;
	};
	class Watertower
	{
		icon="\A3\ui_f\data\map\mapcontrol\watertower_ca.paa";
		color[]={0.00,0.35,0.70,1.00};
		size=32;
		importance="1.2*16*0.05";
		coefMin=0.90;
		coefMax=4.00;
	};
	class Waypoint
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		color[]={0.00,0.00,0.00,1.00};
		size=24;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class WaypointCompleted
	{
		icon="\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		color[]={0.00,0.00,0.00,1.00};
		size=24;
		importance=1.00;
		coefMin=1.00;
		coefMax=1.00;
	};
	class Task
	{
		colorCreated[]={1,1,1,1};
		colorCanceled[]={0.7,0.7,0.7,1};
		colorDone[]={0.7,1,0.3,1};
		colorFailed[]={1,0.3,0.2,1};
		color[]={"(profilenamespace getVariable['IGUI_TEXT_RGB_R',0])","(profilenamespace getVariable['IGUI_TEXT_RGB_G',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_B',1])","(profilenamespace getVariable['IGUI_TEXT_RGB_A',0.8])"};
		icon="\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated="\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled="\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone="\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed="\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		size=27;
		importance=1;
		coefMin=1;
		coefMax=1;
	};
	class Power
	{
		icon="\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powersolar
	{
		icon="\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powerwave
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Powerwind
	{
		icon="\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
	class Shipwreck
	{
		icon="\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size=24;
		importance=1;
		coefMin=0.85;
		coefMax=1;
		color[]={1,1,1,1};
	};
};

class SC_stmDiag
{
	idd = 299;
	onLoad = "[_this] spawn SC_fnc_loadStm";
	movingEnable = 1;
	class controls
	{
		#include "rsc_STM.hpp"
	};
};