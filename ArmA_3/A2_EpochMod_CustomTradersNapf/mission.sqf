// Custom Epoch Napf Traders By IT07 Version 0.2.2.1 Safezone edition
//==== CONFIGURATION ====
CS_addSafeZones = true;		// set it to false if you do not want to have safezones on all traders
//=======================

_unit_0 = objNull;
if (true) then
{
  _this = createAgent ["RU_Worker1", [15445.094, 13346.035, 0], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setDir 115.03109;
  _this setVehicleVarName "EmmenCars";
  EmmenCars = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_1 = objNull;
if (true) then
{
  _this = createAgent ["CZ_Special_Forces_GL_DES_EP1", [15465.24, 13306.294], [], 0, "CAN_COLLIDE"];
  _unit_1 = _this;
  _this setDir 56.138039;
  _this setVehicleVarName "EmmenWeapons";
  EmmenWeapons = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_2 = objNull;
if (true) then
{
  _this = createAgent ["CZ_Soldier_DES_EP1", [15464.769, 13309.635], [], 0, "CAN_COLLIDE"];
  _unit_2 = _this;
  _this setDir 100.99728;
  _this setVehicleVarName "EmmenAmmo";
  EmmenAmmo = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_3 = objNull;
if (true) then
{
  _this = createAgent ["Woodlander3", [15493.395, 13299.942, 0], [], 0, "CAN_COLLIDE"];
  _unit_3 = _this;
  _this setDir -57.499966;
  _this setVehicleVarName "EmmenTools";
  EmmenTools = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_4 = objNull;
if (true) then
{
  _this = createAgent ["Worker3", [15475.354, 13302.224, 0], [], 0, "CAN_COLLIDE"];
  _unit_4 = _this;
  _this setDir 33.591755;
  _this setVehicleVarName "EmmenFood";
  EmmenFood = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_5 = objNull;
if (true) then
{
  _this = createAgent ["RU_Doctor", [15485.029, 13295.063, 0], [], 0, "CAN_COLLIDE"];
  _unit_5 = _this;
  _this setDir 44.07682;
  _this setVehicleVarName "EmmenMed";
  EmmenMed = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_6 = objNull;
if (true) then
{
  _this = createAgent ["USMC_Soldier_GL", [8267.7188, 15496.577], [], 0, "CAN_COLLIDE"];
  _unit_6 = _this;
  _this setDir -123.63845;
  _this setVehicleVarName "LenzBlack";
  LenzBlack = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_7 = objNull;
if (true) then
{
  _this = createAgent ["Citizen3_EP1", [8252.1963, 15512.901, 0], [], 0, "CAN_COLLIDE"];
  _unit_7 = _this;
  _this setDir 191.70702;
  _this setVehicleVarName "LenzBuilding";
  LenzBuilding = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_8 = objNull;
if (true) then
{
  _this = createAgent ["RU_Worker3", [8240.0576, 15474.106, 0], [], 0, "CAN_COLLIDE"];
  _unit_8 = _this;
  _this setDir 31.100048;
  _this setVehicleVarName "LenzVeh";
  LenzVeh = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_9 = objNull;
if (true) then
{
  _this = createAgent ["Rita_Ensler_EP1", [8261.4639, 15504.709, 0], [], 0, "CAN_COLLIDE"];
  _unit_9 = _this;
  _this setDir -127.39373;
  _this setVehicleVarName "LenzBackpacks";
  LenzBackpacks = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_10 = objNull;
if (true) then
{
  _this = createAgent ["Dr_Hladik_EP1", [8272.0791, 15491.83, 0], [], 0, "CAN_COLLIDE"];
  _unit_10 = _this;
  _this setDir -88.978577;
  _this setVehicleVarName "LenzMedic";
  LenzMedic = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_11 = objNull;
if (true) then
{
  _this = createAgent ["USMC_SoldierM_Marksman", [8270.9658, 15494.316, 3.5095763], [], 0, "CAN_COLLIDE"];
  _unit_11 = _this;
  _this setDir -152.65327;
  _this setVehicleVarName "LenzGuns";
  LenzGuns = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_12 = objNull;
if (true) then
{
  _this = createAgent ["USMC_Soldier_Light", [8272.4668, 15491.787, 3.4571502], [], 0, "CAN_COLLIDE"];
  _unit_12 = _this;
  _this setDir -107.02948;
  _this setVehicleVarName "LenzAmmo";
  LenzAmmo = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_13 = objNull;
if (true) then
{
  _this = createAgent ["TK_CIV_Worker01_EP1", [6768.0278, 16960.303, 0], [], 0, "CAN_COLLIDE"];
  _unit_13 = _this;
  _this setDir -93.258347;
  _this setVehicleVarName "NorthBoats";
  NorthBoats = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_14 = objNull;
if (true) then
{
  _this = createAgent ["Woodlander2", [5387.4561, 16120.01, 0], [], 0, "CAN_COLLIDE"];
  _unit_14 = _this;
  _this setDir -70.393379;
  _this setVehicleVarName "NorthWholeSale";
  NorthWholeSale = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_15 = objNull;
if (true) then
{
  _this = createAgent ["Woodlander4", [2122.9932, 7804.3901], [], 0, "CAN_COLLIDE"];
  _unit_15 = _this;
  _this setDir -223.38339;
  _this setVehicleVarName "WestWholeSale";
  WestWholeSale = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_16 = objNull;
if (true) then
{
  _this = createAgent ["FR_Sapper", [5156.7778, 4874.8208], [], 0, "CAN_COLLIDE"];
  _unit_16 = _this;
  _this setDir -91.72187;
  _this setVehicleVarName "HeroTrader";
  HeroTrader = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_17 = objNull;
if (true) then
{
  _this = createAgent ["Worker2", [16864.383, 5274.2305, 1.2875739], [], 0, "CAN_COLLIDE"];
  _unit_17 = _this;
  _this setDir 189.76918;
  _this setVehicleVarName "EastBoats";
  EastBoats = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_18 = objNull;
if (true) then
{
  _this = createAgent ["RU_Woodlander3", [12412.137, 5039.8398], [], 0, "CAN_COLLIDE"];
  _unit_18 = _this;
  _this setDir 4.6855617;
  _this setVehicleVarName "SchrattenVehicle";
  SchrattenVehicle = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_19 = objNull;
if (true) then
{
  _this = createAgent ["CIV_EuroMan01_EP1", [12422.808, 5050.354, 0], [], 0, "CAN_COLLIDE"];
  _unit_19 = _this;
  _this setVehicleVarName "SchrattenBuilding";
  SchrattenBuilding = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_20 = objNull;
if (true) then
{
  _this = createAgent ["FR_Miles", [12427.973, 5059.8872, 3.6091425], [], 0, "CAN_COLLIDE"];
  _unit_20 = _this;
  _this setDir -125.56355;
  _this setVehicleVarName "SchrattenGuns";
  SchrattenGuns = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_21 = objNull;
if (true) then
{
  _this = createAgent ["FR_Cooper", [12422.03, 5049.7266, 3.5417507], [], 0, "CAN_COLLIDE"];
  _unit_21 = _this;
  _this setDir -1.1146522;
  _this setVehicleVarName "SchrattenAmmo";
  SchrattenAmmo = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_22 = objNull;
if (true) then
{
  _this = createAgent ["RU_Assistant", [12399.783, 5054.0947, 0], [], 0, "CAN_COLLIDE"];
  _unit_22 = _this;
  _this setVehicleVarName "SchrattenMedic";
  SchrattenMedic = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_23 = objNull;
if (true) then
{
  _this = createAgent ["RU_Damsel1", [12395.294, 5056.5142, 0], [], 0, "CAN_COLLIDE"];
  _unit_23 = _this;
  _this setDir 63.507347;
  _this setVehicleVarName "SchrattenFood";
  SchrattenFood = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_24 = objNull;
if (true) then
{
  _this = createAgent ["USMC_Soldier_Pilot", [15129.787, 16418.258], [], 0, "CAN_COLLIDE"];
  _unit_24 = _this;
  _this setDir 72.466568;
  _this setVehicleVarName "PlaneTrader";
  PlaneTrader = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_25 = objNull;
if (true) then
{
  _this = createAgent ["GER_Soldier_EP1", [9950.7275, 8018.7378, -0.19549167], [], 0, "CAN_COLLIDE"];
  _unit_25 = _this;
  _this setDir 133.07829;
  _this setVehicleVarName "BanditTrader";
  BanditTrader = _this;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_26 = objNull;
if (true) then
{
  _this = createAgent ["USMC_Soldier_Officer", [15131.784, 16415.658], [], 0, "CAN_COLLIDE"];
  _unit_26 = _this;
  _this setDir 150.69295;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_unit_27 = objNull;
if (true) then
{
  _this = createAgent ["USMC_Soldier_Officer", [15133.98, 16416.059], [], 0, "CAN_COLLIDE"];
  _unit_27 = _this;
  _this setDir -176.99173;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0; this disableAI 'ANIM'; removeAllWeapons this";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'SAFE'; _this forceSpeed 0; removeAllWeapons _this;
};

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15447.5,13325.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setDir -71.708;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.3841858e-005]; _this setpos _r}";
  _this setPos [15447.5,13325.5,0];
};

_vehicle_1 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15451.9,13339.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_1 = _this;
  _this setDir 17.299;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.9100647e-005]; _this setpos _r}";
  _this setPos [15451.9,13339.3,0];
};

_vehicle_2 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15452.7,13348.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_2 = _this;
  _this setDir -32.955;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.8146973e-006]; _this setpos _r}";
  _this setPos [15452.7,13348.4,0];
};

_vehicle_3 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15447.3,13352.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_3 = _this;
  _this setDir -66.5972;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.9604645e-005]; _this setpos _r}";
  _this setPos [15447.3,13352.1,0];
};

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15454.4,13333.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir -43.4489;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.0490417e-005]; _this setpos _r}";
  _this setPos [15454.4,13333.8,0];
};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15442.1,13329.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir -51.5449;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,5.2452087e-006]; _this setpos _r}";
  _this setPos [15442.1,13329.2,0];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15451,13324.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir -66.2615;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [15451,13324.3,0];
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15449.1,13323,0], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setDir 10.2078;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,4.0054321e-005]; _this setpos _r}";
  _this setPos [15449.1,13323,0];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15450.2,13326.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir -150.487;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.7220459e-005]; _this setpos _r}";
  _this setPos [15450.2,13326.2,0];
};

_vehicle_9 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15454.5,13331.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_9 = _this;
  _this setDir 42.3654;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.2452087e-006]; _this setpos _r}";
  _this setPos [15454.5,13331.2,0];
};

_vehicle_10 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15456.9,13331.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_10 = _this;
  _this setDir -48.4388;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-9.1552734e-005]; _this setpos _r}";
  _this setPos [15456.9,13331.1,0];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15457.3,13333.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir 50.1885;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.0544739e-005]; _this setpos _r}";
  _this setPos [15457.3,13333.3,0];
};

_vehicle_12 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15431.5,13334.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_12 = _this;
  _this setDir -2.14298;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.5749207e-005]; _this setpos _r}";
  _this setPos [15431.5,13334.7,0];
};

_vehicle_13 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15436.1,13331.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_13 = _this;
  _this setDir -73.2917;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00011014938]; _this setpos _r}";
  _this setPos [15436.1,13331.3,0];
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [15454.7,13343.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir 108.021;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.2452087e-005]; _this setpos _r}";
  _this setPos [15454.7,13343.4,0];
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15459.6,13343.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setDir 28.6008;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.065862149]; _this setpos _r}";
  _this setPos [15459.6,13343.6,0];
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15459.6,13343.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setDir 26.9984;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.80583286]; _this setpos _r}";
  _this setPos [15459.6,13343.6,0];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15462.644, 13341.771], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir 30.0328;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.0044620652]; _this setpos _r}";
  _this setPos [15462.644, 13341.771];
};

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15462.594, 13341.782], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir 30.1302;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.69594574]; _this setpos _r}";
  _this setPos [15462.594, 13341.782];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [15473.4,13332.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir 131.775;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.9577484e-005]; _this setpos _r}";
  _this setPos [15473.4,13332.4,0];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15475.7,13336.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir 42.0303;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-8.4877014e-005]; _this setpos _r}";
  _this setPos [15475.7,13336.5,0];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15469.2,13329.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir 46.4284;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.058273286]; _this setpos _r}";
  _this setPos [15469.2,13329.9,0];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15472.8,13332.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir 40.2874;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.5568039]; _this setpos _r}";
  _this setPos [15472.8,13332.6,0];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15471.1,13336.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir 39.3878;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.9550323e-005]; _this setpos _r}";
  _this setPos [15471.1,13336.9,0];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15471.1,13336.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setDir 39.2014;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.74614781]; _this setpos _r}";
  _this setPos [15471.1,13336.8,0];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15468.6,13334,0], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setDir 48.9844;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.72762161]; _this setpos _r}";
  _this setPos [15468.6,13334,0];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15468.6,13334,0], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setDir 50.1885;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,5.6743622e-005]; _this setpos _r}";
  _this setPos [15468.6,13334,0];
};

_vehicle_27 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15479.319, 13339.038], [], 0, "CAN_COLLIDE"];
  _vehicle_27 = _this;
  _this setDir -12.4236;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.724762e-005]; _this setpos _r}";
  _this setPos [15479.319, 13339.038];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15479.339, 13338.96, 0.0085496167], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir -12.9716;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.72493565]; _this setpos _r}";
  _this setPos [15479.339, 13338.96, 0.0085496167];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15479.384, 13338.843, -0.009770982], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setDir -12.539;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.4540991]; _this setpos _r}";
  _this setPos [15479.384, 13338.843, -0.009770982];
};

_vehicle_30 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15458,13340.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_30 = _this;
  _this setDir 28.6008;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.1525574e-005]; _this setpos _r}";
  _this setPos [15458,13340.3,0];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15458,13340.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir 26.9984;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.74014854]; _this setpos _r}";
  _this setPos [15458,13340.3,0];
};

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15461.007, 13338.956], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setDir 16.482512;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.9591064e-005]; _this setpos _r}";
  _this setPos [15461.007, 13338.956];
};

_vehicle_33 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15460.983, 13338.881], [], 0, "CAN_COLLIDE"];
  _vehicle_33 = _this;
  _this setDir 16.888533;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.7401967]; _this setpos _r}";
  _this setPos [15460.983, 13338.881];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["helihcivil", [15439.3,13338.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setDir -34.7372;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [15439.3,13338.7,0];
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15430.9,13341,0], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir -26.5063;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.6743622e-005]; _this setpos _r}";
  _this setPos [15430.9,13341,0];
};

_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["cinderwall_dz", [15428.1,13347.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir 42.9708;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.1471252e-005]; _this setpos _r}";
  _this setPos [15428.1,13347.2,0];
};

_vehicle_37 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15426.7,13354.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_37 = _this;
  _this setDir -48.0333;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.31178084]; _this setpos _r}";
  _this setPos [15426.7,13354.6,0];
};

_vehicle_38 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15426.7,13354.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_38 = _this;
  _this setDir -47.2563;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.0373828]; _this setpos _r}";
  _this setPos [15426.7,13354.7,0];
};

_vehicle_39 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15426.9,13354.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_39 = _this;
  _this setDir -46.0231;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.7675697]; _this setpos _r}";
  _this setPos [15426.9,13354.8,0];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["cinderwall_dz", [15455.1,13376.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir 42.0866;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.9087067e-005]; _this setpos _r}";
  _this setPos [15455.1,13376.2,0];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15456.5,13368.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir 132.655;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.54740977]; _this setpos _r}";
  _this setPos [15456.5,13368.1,0];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15456.5,13368.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir 133.139;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.2638072]; _this setpos _r}";
  _this setPos [15456.5,13368.1,0];
};

_vehicle_43 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15456.1,13367.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_43 = _this;
  _this setDir 132.105;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.9894866]; _this setpos _r}";
  _this setPos [15456.1,13367.8,0];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [15509.5,13302.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir -50.497;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.2424927e-005]; _this setpos _r}";
  _this setPos [15509.5,13302.4,0];
};

_vehicle_45 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15506.691, 13298.29], [], 0, "CAN_COLLIDE"];
  _vehicle_45 = _this;
  _this setDir -135.44562;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.12673664]; _this setpos _r}";
  _this setPos [15506.691, 13298.29];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15513.3,13305.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir -151.505;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.085137844]; _this setpos _r}";
  _this setPos [15513.3,13305.3,0];
};

_vehicle_47 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [15510,13302,0], [], 0, "CAN_COLLIDE"];
  _vehicle_47 = _this;
  _this setDir -141.984;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.5440297]; _this setpos _r}";
  _this setPos [15510,13302,0];
};

_vehicle_48 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15511.3,13298,0], [], 0, "CAN_COLLIDE"];
  _vehicle_48 = _this;
  _this setDir -142.884;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.024444321]; _this setpos _r}";
  _this setPos [15511.3,13298,0];
};

_vehicle_49 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15511.4,13298,0], [], 0, "CAN_COLLIDE"];
  _vehicle_49 = _this;
  _this setDir -141.692;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.73648834]; _this setpos _r}";
  _this setPos [15511.4,13298,0];
};

_vehicle_50 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15514.2,13300.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_50 = _this;
  _this setDir -133.287;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.56630373]; _this setpos _r}";
  _this setPos [15514.2,13300.8,0];
};

_vehicle_51 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15514.2,13300.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_51 = _this;
  _this setDir -132.083;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.16085005]; _this setpos _r}";
  _this setPos [15514.2,13300.9,0];
};

_vehicle_67 = objNull;
if (true) then
{
  _this = createVehicle ["land_misc_well_c_ep1", [15464.3,13314.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_67 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,4.9591064e-005]; _this setpos _r}";
  _this setPos [15464.3,13314.5,0];
};

_vehicle_68 = objNull;
if (true) then
{
  _this = createVehicle ["gunrackus_ep1", [15463.948, 13306.637], [], 0, "CAN_COLLIDE"];
  _vehicle_68 = _this;
  _this setDir -111.77;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,8.392334e-005]; _this setpos _r}";
  _this setPos [15463.948, 13306.637];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["gunrack1", [15465.7,13305.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setDir -26.0248;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.4305115e-006]; _this setpos _r}";
  _this setPos [15465.7,13305.1,0];
};

_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrate_nointeractive_", [15463.819, 13310.498], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setDir -66.545;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00010871887]; _this setpos _r}";
  _this setPos [15463.819, 13310.498];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_medium", [15464.2,13304.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 25.5432;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.1934509e-005]; _this setpos _r}";
  _this setPos [15464.2,13304.7,0];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["helihcivil", [15108.3,16407.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_72 = _this;
  _this setDir 164.393;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [15108.3,16407.2,0];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15126.1,16422.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir -94.6102;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.9591064e-005]; _this setpos _r}";
  _this setPos [15126.1,16422.1,0];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15131,16426.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setDir -7.66215;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00012397766]; _this setpos _r}";
  _this setPos [15131,16426.6,0];
};

_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15128.2,16408.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_75 = _this;
  _this setDir -94.6102;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.4849854e-005]; _this setpos _r}";
  _this setPos [15128.2,16408.4,0];
};

_vehicle_76 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15134.1,16406.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_76 = _this;
  _this setDir -2.64461;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.335144e-005]; _this setpos _r}";
  _this setPos [15134.1,16406.1,0];
};

_vehicle_77 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15142.5,16407.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_77 = _this;
  _this setDir -5.78033;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.8146973e-006]; _this setpos _r}";
  _this setPos [15142.5,16407.1,0];
};

_vehicle_78 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15145.4,16413.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_78 = _this;
  _this setDir -94.6102;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.8610229e-005]; _this setpos _r}";
  _this setPos [15145.4,16413.1,0];
};

_vehicle_79 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15144.3,16422.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_79 = _this;
  _this setDir -94.6102;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [15144.3,16422.1,0];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [15139.5,16427.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir -2.85679;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.4795532e-005]; _this setpos _r}";
  _this setPos [15139.5,16427.6,0];
};

_vehicle_81 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [15127.5,16413.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_81 = _this;
  _this setDir 85.0493;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.4386597e-005]; _this setpos _r}";
  _this setPos [15127.5,16413.8,0];
};

_vehicle_82 = objNull;
if (true) then
{
  _this = createVehicle ["land_ind_tanksmall", [15125.6,16409.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_82 = _this;
  _this setDir 83.428;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.7166138e-005]; _this setpos _r}";
  _this setPos [15125.6,16409.1,0];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["flagcarrierusa_ep1", [15126.1,16416.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,9.5367432e-006]; _this setpos _r}";
  _this setPos [15126.1,16416.5,0];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["bagfenceround_dz", [15125.5,16416.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir 88.043;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-9.5367432e-006]; _this setpos _r}";
  _this setPos [15125.5,16416.1,0];
};

_vehicle_85 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15124.7,16416.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_85 = _this;
  _this setDir 101.402;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,4.5776367e-005]; _this setpos _r}";
  _this setPos [15124.7,16416.4,0];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15123.9,16410.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setDir 84.4124;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.0980835e-005]; _this setpos _r}";
  _this setPos [15123.9,16410.7,0];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15124.2,16407.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir 80.5798;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.9073486e-005]; _this setpos _r}";
  _this setPos [15124.2,16407.7,0];
};

_vehicle_88 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15125.7,16405.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_88 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [15125.7,16405.9,0];
};

_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [15124.7,16419.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir 83.538;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.2424927e-005]; _this setpos _r}";
  _this setPos [15124.7,16419.3,0];
};

_vehicle_90 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrate_nointeractive_", [8272.8779, 15492.524], [], 0, "CAN_COLLIDE"];
  _vehicle_90 = _this;
  _this setDir -7.0349574;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.4529223]; _this setpos _r}";
  _this setPos [8272.8779, 15492.524];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_large", [8273.42,15491.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir -45.6353;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5011091]; _this setpos _r}";
  _this setPos [8273.42,15491.5,0];
};

_vehicle_92 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_medium", [8269.8438, 15493.995], [], 0, "CAN_COLLIDE"];
  _vehicle_92 = _this;
  _this setDir 51.695999;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.524662]; _this setpos _r}";
  _this setPos [8269.8438, 15493.995];
};

_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["gunrack1", [8271.9443, 15493.486], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir -26.0248;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5472331]; _this setpos _r}";
  _this setPos [8271.9443, 15493.486];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["gunrack2", [8272.0635, 15490.3], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir -39.885807;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5167692]; _this setpos _r}";
  _this setPos [8272.0635, 15490.3];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["gunrackus_ep1", [8267.6094, 15489.551], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir -66.955971;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5579033]; _this setpos _r}";
  _this setPos [8267.6094, 15489.551];
};

_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["map_sign_hospital_new", [8264.71,15490.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir 49.3038;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.2566903]; _this setpos _r}";
  _this setPos [8264.71,15490.6,0];
};

_vehicle_101 = objNull;
if (true) then
{
  _this = createVehicle ["map_sign_hospital_new", [8266.15,15488.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_101 = _this;
  _this setDir 48.9155;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.2560064]; _this setpos _r}";
  _this setPos [8266.15,15488.9,0];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Large", [8269.09,15496.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir -90.9096;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.24886777]; _this setpos _r}";
  _this setPos [8269.09,15496.2,0];
};

_vehicle_104 = objNull;
if (true) then
{
  _this = createVehicle ["land_bag_ep1", [8262.72,15504.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_104 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.2358316]; _this setpos _r}";
  _this setPos [8262.72,15504.4,0];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["foldchair", [8268.3145, 15497.313], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir 45.970268;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.25194326]; _this setpos _r}";
  _this setPos [8268.3145, 15497.313];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["land_chair_ep1", [8262.11,15505.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir 148.166;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.22209623]; _this setpos _r}";
  _this setPos [8262.11,15505.5,0];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["land_shelf_ep1", [8259.47,15502.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setDir -43.326;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.21422593]; _this setpos _r}";
  _this setPos [8259.47,15502.3,0];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["GunRack_DZ", [8267.4141, 15498.22], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir -8.2103682;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.25161642]; _this setpos _r}";
  _this setPos [8267.4141, 15498.22];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["land_crates_ep1", [8258.17,15502.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.24371947]; _this setpos _r}";
  _this setPos [8258.17,15502.4,0];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["land_sack_ep1", [8257.95,15503.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.29685026]; _this setpos _r}";
  _this setPos [8257.95,15503.1,0];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["land_wicker_basket_ep1", [8258.45,15501.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.25152618]; _this setpos _r}";
  _this setPos [8258.45,15501.2,0];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["land_table_ep1", [8262.64,15503.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setDir 10.6724;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,4.6014786e-005]; _this setpos _r}";
  _this setPos [8262.64,15503.1,0];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["land_bags_ep1", [8261.3,15506.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setDir 168.036;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.9631805e-005]; _this setpos _r}";
  _this setPos [8261.3,15506.8,0];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["barrels", [8255.2695, 15513.239], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setDir -41.423672;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.24404241]; _this setpos _r}";
  _this setPos [8255.2695, 15513.239];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [8259.041, 15499.931], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.25237638]; _this setpos _r}";
  _this setPos [8259.041, 15499.931];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["flagcarrierredcross_ep1", [8263.5313, 15491.254], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.17096967]; _this setpos _r}";
  _this setPos [8263.5313, 15491.254];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["misc_palletsfoiled", [8248.1,15512.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setDir -19.9757;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00012421608]; _this setpos _r}";
  _this setPos [8248.1,15512.1,0];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["garbage_container", [8250.2,15512.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setDir -19.3874;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.4836273e-006]; _this setpos _r}";
  _this setPos [8250.2,15512.9,0];
};

_vehicle_121 = objNull;
if (true) then
{
  _this = createVehicle ["land_bags_stack_ep1", [8259.5801, 15507.674], [], 0, "CAN_COLLIDE"];
  _vehicle_121 = _this;
  _this setDir -32.7392;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.4066696e-005]; _this setpos _r}";
  _this setPos [8259.5801, 15507.674];
};

_vehicle_122 = objNull;
if (true) then
{
  _this = createVehicle ["land_ind_tanksmall", [8260.5234, 15467.226], [], 0, "CAN_COLLIDE"];
  _vehicle_122 = _this;
  _this setDir 49.983311;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.0994415e-006]; _this setpos _r}";
  _this setPos [8260.5234, 15467.226];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["misc_tyreheapep1", [8252.99,15514.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setDir 47.6244;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.34508812]; _this setpos _r}";
  _this setPos [8252.99,15514.9,0];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8250.6445, 15451.976], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir 49.7242;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.3855438e-005]; _this setpos _r}";
  _this setPos [8250.6445, 15451.976];
};

_vehicle_126 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8244.8975, 15447.138], [], 0, "CAN_COLLIDE"];
  _vehicle_126 = _this;
  _this setDir 49.7242;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-9.727478e-005]; _this setpos _r}";
  _this setPos [8244.8975, 15447.138];
};

_vehicle_127 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8262.88,15462.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_127 = _this;
  _this setDir 49.7242;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.00016307831]; _this setpos _r}";
  _this setPos [8262.88,15462.4,0];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_small", [8253.625, 15451.076], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir -39.938;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.0027161e-005]; _this setpos _r}";
  _this setPos [8253.625, 15451.076];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_small", [8263.25, 15459.1], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setDir -41.1899;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1988831e-006]; _this setpos _r}";
  _this setPos [8263.25, 15459.1];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8237.6279, 15463.86], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir 49.7242;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.7881393e-005]; _this setpos _r}";
  _this setPos [8237.6279, 15463.86];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8234.6416, 15454.931], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir 141.336;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.865097e-005]; _this setpos _r}";
  _this setPos [8234.6416, 15454.931];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8239.0547, 15449.493], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir -39.2091;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5762787e-005]; _this setpos _r}";
  _this setPos [8239.0547, 15449.493];
};

_vehicle_137 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8254.6836, 15449.712], [], 0, "CAN_COLLIDE"];
  _vehicle_137 = _this;
  _this setDir -40.2916;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8254.6836, 15449.712];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8252.2881, 15449.633], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setDir 47.0295;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.0027161e-005]; _this setpos _r}";
  _this setPos [8252.2881, 15449.633];
};

_vehicle_139 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8255.1885, 15452.004], [], 0, "CAN_COLLIDE"];
  _vehicle_139 = _this;
  _this setDir 49.0188;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.1934509e-005]; _this setpos _r}";
  _this setPos [8255.1885, 15452.004];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8262.06,15457.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir 43.9761;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.7683716e-007]; _this setpos _r}";
  _this setPos [8262.06,15457.8,0];
};

_vehicle_141 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8264.31,15457.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_141 = _this;
  _this setDir -40.3092;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-9.2029572e-005]; _this setpos _r}";
  _this setPos [8264.31,15457.6,0];
};

_vehicle_142 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8264.86,15459.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_142 = _this;
  _this setDir 49.7803;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.2397766e-005]; _this setpos _r}";
  _this setPos [8264.86,15459.6,0];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["woodfloorhalf_dz", [8247.09,15483.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setDir -39.6415;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,11.291946]; _this setpos _r}";
  _this setPos [8247.09,15483.3,0];
};

_vehicle_144 = objNull;
if (true) then
{
  _this = createVehicle ["woodfloorhalf_dz", [8248.8,15484.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_144 = _this;
  _this setDir -39.6817;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,11.284288]; _this setpos _r}";
  _this setPos [8248.8,15484.7,0];
};

_vehicle_145 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8238.86,15472.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_145 = _this;
  _this setDir 51.5621;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.25098693]; _this setpos _r}";
  _this setPos [8238.86,15472.9,0];
};

_vehicle_146 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8238.81,15472.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_146 = _this;
  _this setDir 51.5621;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.95323062]; _this setpos _r}";
  _this setPos [8238.81,15472.9,0];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8238.71,15472.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setDir 51.5621;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.6908342]; _this setpos _r}";
  _this setPos [8238.71,15472.8,0];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8250.19,15515.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setDir 138.834;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.22927088]; _this setpos _r}";
  _this setPos [8250.19,15515.8,0];
};

_vehicle_149 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8250.14,15515.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_149 = _this;
  _this setDir 139.132;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.98894012]; _this setpos _r}";
  _this setPos [8250.14,15515.9,0];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8250.1,15515.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setDir 138.503;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.7338569]; _this setpos _r}";
  _this setPos [8250.1,15515.9,0];
};

_vehicle_151 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5386.89,16114.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_151 = _this;
  _this setDir 89.9175;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.3365021e-005]; _this setpos _r}";
  _this setPos [5386.89,16114.4,0];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5378.75,16118,0], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setDir -26.6944;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1511993e-005]; _this setpos _r}";
  _this setPos [5378.75,16118,0];
};

_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5380.69,16123.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setDir 41.5225;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1988831e-006]; _this setpos _r}";
  _this setPos [5380.69,16123.7,0];
};

_vehicle_154 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5386.71,16125.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_154 = _this;
  _this setDir 89.7459;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.724762e-005]; _this setpos _r}";
  _this setPos [5386.71,16125.6,0];
};

_vehicle_155 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [5382.45,16115.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_155 = _this;
  _this setDir 6.32806;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.058340214]; _this setpos _r}";
  _this setPos [5382.45,16115.4,0];
};

_vehicle_156 = objNull;
if (true) then
{
  _this = createVehicle ["land_camonetb_nato", [5384.49,16119.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_156 = _this;
  _this setDir 54.3051;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00012922287]; _this setpos _r}";
  _this setPos [5384.49,16119.3,0];
};

_vehicle_157 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_net2", [5377.9,16111.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_157 = _this;
  _this setDir -3.828;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.6253204e-005]; _this setpos _r}";
  _this setPos [5377.9,16111.6,0];
};

_vehicle_158 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [5387.68,16121.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_158 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.1934509e-005]; _this setpos _r}";
  _this setPos [5387.68,16121.3,0];
};

_vehicle_159 = objNull;
if (true) then
{
  _this = createVehicle ["land_misc_coil_ep1", [5386.7,16117.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_159 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.4781952e-005]; _this setpos _r}";
  _this setPos [5386.7,16117.4,0];
};

_vehicle_161 = objNull;
if (true) then
{
  _this = createVehicle ["woodlargewall_dz", [2121.87,7803.11,0], [], 0, "CAN_COLLIDE"];
  _vehicle_161 = _this;
  _this setDir 90.9959;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.11836111]; _this setpos _r}";
  _this setPos [2121.87,7803.11,0];
};

_vehicle_162 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_EP1", [2123.0364, 7801.5811], [], 0, "CAN_COLLIDE"];
  _vehicle_162 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.2874603e-005]; _this setpos _r}";
  _this setPos [2123.0364, 7801.5811];
};

_vehicle_163 = objNull;
if (true) then
{
  _this = createVehicle ["land_arrows_desk_r", [2127.22,7800.08,0], [], 0, "CAN_COLLIDE"];
  _vehicle_163 = _this;
  _this setDir -90.9614;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [2127.22,7800.08,0];
};

_vehicle_164 = objNull;
if (true) then
{
  _this = createVehicle ["land_arrows_desk_l", [2126.2773, 7805.9258], [], 0, "CAN_COLLIDE"];
  _vehicle_164 = _this;
  _this setDir -179.96637;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.8146973e-006]; _this setpos _r}";
  _this setPos [2126.2773, 7805.9258];
};

_vehicle_167 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [2130.21,7796.77,0], [], 0, "CAN_COLLIDE"];
  _vehicle_167 = _this;
  _this setDir 90.9279;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.26398322]; _this setpos _r}";
  _this setPos [2130.21,7796.77,0];
};

_vehicle_168 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [2130.13,7796.85,0], [], 0, "CAN_COLLIDE"];
  _vehicle_168 = _this;
  _this setDir 90.9279;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.6915998]; _this setpos _r}";
  _this setPos [2130.13,7796.85,0];
};

_vehicle_169 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [2126.47,7797.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_169 = _this;
  _this setDir 90.9279;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.021667538]; _this setpos _r}";
  _this setPos [2126.47,7797.1,0];
};

_vehicle_170 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [2126.47,7797.12,0], [], 0, "CAN_COLLIDE"];
  _vehicle_170 = _this;
  _this setDir 90.2193;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.2067372]; _this setpos _r}";
  _this setPos [2126.47,7797.12,0];
};

_vehicle_171 = objNull;
if (true) then
{
  _this = createVehicle ["helihcivil", [5133.8994, 4873.2988], [], 0, "CAN_COLLIDE"];
  _vehicle_171 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5133.8994, 4873.2988];
};

_vehicle_172 = objNull;
if (true) then
{
  _this = createVehicle ["flagcarrierwhite_ep1", [5139.6909, 4846.9448], [], 0, "CAN_COLLIDE"];
  _vehicle_172 = _this;
  _this setDir 0.16953996;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5139.6909, 4846.9448];
};

_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["land_camonetvar_nato", [5154.7192, 4875.895], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setDir -99.381828;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [5154.7192, 4875.895];
};

_vehicle_174 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5154.3418, 4884.6431], [], 0, "CAN_COLLIDE"];
  _vehicle_174 = _this;
  _this setDir 101.06857;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5154.3418, 4884.6431];
};

_vehicle_175 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5148.5034, 4882.9941], [], 0, "CAN_COLLIDE"];
  _vehicle_175 = _this;
  _this setDir 33.971138;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5148.5034, 4882.9941];
};

_vehicle_176 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [5148.1777, 4876.6021], [], 0, "CAN_COLLIDE"];
  _vehicle_176 = _this;
  _this setDir 165.03395;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [5148.1777, 4876.6021];
};

_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5121.8931, 4867.9038], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setDir 170.72823;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5121.8931, 4867.9038];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5153.9814, 4868.4438, 0.048854966], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setDir 110.63333;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5153.9814, 4868.4438, 0.048854966];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [5150.0786, 4871.9082], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir -140.62761;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [5150.0786, 4871.9082];
};

_vehicle_182 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5147.501, 4872.0938], [], 0, "CAN_COLLIDE"];
  _vehicle_182 = _this;
  _this setDir -87.845161;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5147.501, 4872.0938];
};

_vehicle_183 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5150.4312, 4868.0298], [], 0, "CAN_COLLIDE"];
  _vehicle_183 = _this;
  _this setDir 27.264122;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5150.4312, 4868.0298];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [5125.8315, 4847.8232], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setDir 171.3652;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5125.8315, 4847.8232];
};

_vehicle_185 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5120.5425, 4874.7383], [], 0, "CAN_COLLIDE"];
  _vehicle_185 = _this;
  _this setDir 169.83871;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5120.5425, 4874.7383];
};

_vehicle_186 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_large", [5158.0313, 4871.7852, -0.0086214608], [], 0, "CAN_COLLIDE"];
  _vehicle_186 = _this;
  _this setDir -55.326088;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5158.0313, 4871.7852, -0.0086214608];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_medium", [5156.6621, 4877.127], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setDir -75.37915;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5156.6621, 4877.127];
};

_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_small", [5156.937, 4873.5942, 0.050040383], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setDir 239.14857;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5156.937, 4873.5942, 0.050040383];
};

_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["foldtable", [5158.4458, 4874.5942], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setDir -101.5005;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5158.4458, 4874.5942];
};

_vehicle_190 = objNull;
if (true) then
{
  _this = createVehicle ["foldchair", [5157.7168, 4876.0684], [], 0, "CAN_COLLIDE"];
  _vehicle_190 = _this;
  _this setDir 41.382015;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5157.7168, 4876.0684];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [5154.2363, 4872.2095], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [5154.2363, 4872.2095];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5161.8901, 4852.2334], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir 80.848114;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-006]; _this setpos _r}";
  _this setPos [5161.8901, 4852.2334];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5148.5322, 4849.8589], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setDir 258.98251;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5148.5322, 4849.8589];
};

_vehicle_201 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5141.7549, 4848.936], [], 0, "CAN_COLLIDE"];
  _vehicle_201 = _this;
  _this setDir -93.981407;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5141.7549, 4848.936];
};

_vehicle_202 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5124.8589, 4854.6343], [], 0, "CAN_COLLIDE"];
  _vehicle_202 = _this;
  _this setDir 171.53229;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5124.8589, 4854.6343];
};

_vehicle_203 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5123.3516, 4861.1821], [], 0, "CAN_COLLIDE"];
  _vehicle_203 = _this;
  _this setDir 163.69252;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [5123.3516, 4861.1821];
};

_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5163.6143, 4857.1538], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setDir -9.1264114;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.5776367e-005]; _this setpos _r}";
  _this setPos [5163.6143, 4857.1538];
};

_vehicle_211 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5126.2979, 4844.1279], [], 0, "CAN_COLLIDE"];
  _vehicle_211 = _this;
  _this setDir -29.76008;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.8146973e-005]; _this setpos _r}";
  _this setPos [5126.2979, 4844.1279];
};

_vehicle_213 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5142.9648, 4842.5767], [], 0, "CAN_COLLIDE"];
  _vehicle_213 = _this;
  _this setDir -80.320747;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.2888184e-005]; _this setpos _r}";
  _this setPos [5142.9648, 4842.5767];
};

_vehicle_214 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5141.2192, 4840.9731], [], 0, "CAN_COLLIDE"];
  _vehicle_214 = _this;
  _this setDir 9.1271124;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.5776367e-005]; _this setpos _r}";
  _this setPos [5141.2192, 4840.9731];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["map_sign_hospital_new", [12401.3,5055.56,0], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setDir -150.291;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.3421991]; _this setpos _r}";
  _this setPos [12401.3,5055.56,0];
};

_vehicle_218 = objNull;
if (true) then
{
  _this = createVehicle ["map_sign_food", [12396.5,5058.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_218 = _this;
  _this setDir -148.616;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.3537478]; _this setpos _r}";
  _this setPos [12396.5,5058.5,0];
};

_vehicle_219 = objNull;
if (true) then
{
  _this = createVehicle ["land_bags_ep1", [12394.3,5057.96,0], [], 0, "CAN_COLLIDE"];
  _vehicle_219 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.19278005]; _this setpos _r}";
  _this setPos [12394.3,5057.96,0];
};

_vehicle_220 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [12401.214, 5053.2827, 0.32525668], [], 0, "CAN_COLLIDE"];
  _vehicle_220 = _this;
  _this setDir 134.723;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00010681152]; _this setpos _r}";
  _this setPos [12401.214, 5053.2827, 0.32525668];
};

_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["helihcivil", [12414.8,5045.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12414.8,5045.3,0];
};

_vehicle_222 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12427.4,5063.63,0], [], 0, "CAN_COLLIDE"];
  _vehicle_222 = _this;
  _this setDir -151.678;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12427.4,5063.63,0];
};

_vehicle_223 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12393.6,5062.46,0], [], 0, "CAN_COLLIDE"];
  _vehicle_223 = _this;
  _this setDir -54.0278;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-6.1035156e-005]; _this setpos _r}";
  _this setPos [12393.6,5062.46,0];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12427.1,5051.73,0], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setDir -57.6959;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [12427.1,5051.73,0];
};

_vehicle_225 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12403.1,5074.18,0], [], 0, "CAN_COLLIDE"];
  _vehicle_225 = _this;
  _this setDir -42.578;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12403.1,5074.18,0];
};

_vehicle_226 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12422.3,5073.73,0], [], 0, "CAN_COLLIDE"];
  _vehicle_226 = _this;
  _this setDir 23.5455;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1035156e-005]; _this setpos _r}";
  _this setPos [12422.3,5073.73,0];
};

_vehicle_228 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12389.6,5056.26,0], [], 0, "CAN_COLLIDE"];
  _vehicle_228 = _this;
  _this setDir 26.0018;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [12389.6,5056.26,0];
};

_vehicle_229 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12415.5,5077.25,0], [], 0, "CAN_COLLIDE"];
  _vehicle_229 = _this;
  _this setDir 127.258;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12415.5,5077.25,0];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12426.6,5069.23,0], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setDir 206.085;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1035156e-005]; _this setpos _r}";
  _this setPos [12426.6,5069.23,0];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12431.647, 5058.9966], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setDir 29.2144;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [12431.647, 5058.9966];
};

_vehicle_232 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12423,5044.82,0], [], 0, "CAN_COLLIDE"];
  _vehicle_232 = _this;
  _this setDir 30.6328;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [12423,5044.82,0];
};

_vehicle_233 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12418.6,5037.96,0], [], 0, "CAN_COLLIDE"];
  _vehicle_233 = _this;
  _this setDir -56.8436;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-6.1035156e-005]; _this setpos _r}";
  _this setPos [12418.6,5037.96,0];
};

_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12411.1,5035.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setDir 29.9489;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.5258789e-005]; _this setpos _r}";
  _this setPos [12411.1,5035.7,0];
};

_vehicle_235 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12404.1,5039.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_235 = _this;
  _this setDir 120.278;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.00012207031]; _this setpos _r}";
  _this setPos [12404.1,5039.8,0];
};

_vehicle_236 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12397.2,5043.83,0], [], 0, "CAN_COLLIDE"];
  _vehicle_236 = _this;
  _this setDir 32.4878;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [12397.2,5043.83,0];
};

_vehicle_237 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [12390.2,5047.73,0], [], 0, "CAN_COLLIDE"];
  _vehicle_237 = _this;
  _this setDir 121.85;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.0001373291]; _this setpos _r}";
  _this setPos [12390.2,5047.73,0];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["land_hbarrier_large", [12409.6,5082.24,0], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setDir 46.2404;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12409.6,5082.24,0];
};

_vehicle_240 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12406.5,5085.53,0], [], 0, "CAN_COLLIDE"];
  _vehicle_240 = _this;
  _this setDir -34.6301;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-6.1035156e-005]; _this setpos _r}";
  _this setPos [12406.5,5085.53,0];
};

_vehicle_241 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12408.9,5085.37,0], [], 0, "CAN_COLLIDE"];
  _vehicle_241 = _this;
  _this setDir 36.0901;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.5776367e-005]; _this setpos _r}";
  _this setPos [12408.9,5085.37,0];
};

_vehicle_242 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12406.5,5083.63,0], [], 0, "CAN_COLLIDE"];
  _vehicle_242 = _this;
  _this setDir 49.1324;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.6293945e-005]; _this setpos _r}";
  _this setPos [12406.5,5083.63,0];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12406.465, 5077.4658], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 40.759018;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.5258789e-005]; _this setpos _r}";
  _this setPos [12406.465, 5077.4658];
};

_vehicle_245 = objNull;
if (true) then
{
  _this = createVehicle ["land_crates_ep1", [12397.3,5055.39,0], [], 0, "CAN_COLLIDE"];
  _vehicle_245 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.32560307]; _this setpos _r}";
  _this setPos [12397.3,5055.39,0];
};

_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["land_shelf_ep1", [12396.2,5055.67,0], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setDir -59.7959;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.37715691]; _this setpos _r}";
  _this setPos [12396.2,5055.67,0];
};

_vehicle_247 = objNull;
if (true) then
{
  _this = createVehicle ["flagcarrierwhite_ep1", [12419.021, 5061.48], [], 0, "CAN_COLLIDE"];
  _vehicle_247 = _this;
  _this setDir 11.1261;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1035156e-005]; _this setpos _r}";
  _this setPos [12419.021, 5061.48];
};

_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["haystack", [12389,5068.23,0], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setDir -50.2904;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.13929886]; _this setpos _r}";
  _this setPos [12389,5068.23,0];
};

_vehicle_249 = objNull;
if (true) then
{
  _this = createVehicle ["land_bags_stack_ep1", [12395.8,5059.41,0], [], 0, "CAN_COLLIDE"];
  _vehicle_249 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [12395.8,5059.41,0];
};

_vehicle_250 = objNull;
if (true) then
{
  _this = createVehicle ["paleta2", [12419.5,5050.73,0], [], 0, "CAN_COLLIDE"];
  _vehicle_250 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.24369156]; _this setpos _r}";
  _this setPos [12419.5,5050.73,0];
};

_vehicle_251 = objNull;
if (true) then
{
  _this = createVehicle ["misc_palletsfoiled_heap", [12423.506, 5068.9395], [], 0, "CAN_COLLIDE"];
  _vehicle_251 = _this;
  _this setDir -157.331;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.5258789e-005]; _this setpos _r}";
  _this setPos [12423.506, 5068.9395];
};

_vehicle_252 = objNull;
if (true) then
{
  _this = createVehicle ["land_ind_tanksmall", [12398.114, 5068.6191], [], 0, "CAN_COLLIDE"];
  _vehicle_252 = _this;
  _this setDir -50.429871;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [12398.114, 5068.6191];
};

_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["land_crates_stack_ep1", [12424,5050.91,0], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setDir -63.953;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [12424,5050.91,0];
};

_vehicle_254 = objNull;
if (true) then
{
  _this = createVehicle ["misc_tyreheapep1", [12420.411, 5048.0938, -0.079425231], [], 0, "CAN_COLLIDE"];
  _vehicle_254 = _this;
  _this setDir -133.55313;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.20060742]; _this setpos _r}";
  _this setPos [12420.411, 5048.0938, -0.079425231];
};

_vehicle_255 = objNull;
if (true) then
{
  _this = createVehicle ["land_transport_crates_ep1", [12421.6,5055.38,0], [], 0, "CAN_COLLIDE"];
  _vehicle_255 = _this;
  _this setDir -61.1178;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.22141962]; _this setpos _r}";
  _this setPos [12421.6,5055.38,0];
};

_vehicle_256 = objNull;
if (true) then
{
  _this = createVehicle ["vaultstoragelocked", [12422,5049.65,0], [], 0, "CAN_COLLIDE"];
  _vehicle_256 = _this;
  _this setDir -158.779;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [12422,5049.65,0];
};

_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["helihcivil", [8243.53,15456.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.00014734268]; _this setpos _r}";
  _this setPos [8243.53,15456.7,0];
};

_vehicle_266 = objNull;
if (true) then
{
  _this = createVehicle ["ladawreck", [8238.48,15477.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_266 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.22102492]; _this setpos _r}";
  _this setPos [8238.48,15477.2,0];
};

_vehicle_267 = objNull;
if (true) then
{
  _this = createVehicle ["misc_tyreheap", [8241.84,15472.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_267 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.1401892]; _this setpos _r}";
  _this setPos [8241.84,15472.1,0];
};

_vehicle_268 = objNull;
if (true) then
{
  _this = createVehicle ["land_camonetvar_nato", [6767.97,16957.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_268 = _this;
  _this setDir -33.6059;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.0001347065]; _this setpos _r}";
  _this setPos [6767.97,16957.7,0];
};

_vehicle_269 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [6769.96,16965.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_269 = _this;
  _this setDir 95.6754;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.00012159348]; _this setpos _r}";
  _this setPos [6769.96,16965.9,0];
};

_vehicle_270 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1bo_military", [6764.62,16965.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_270 = _this;
  _this setDir 19.5024;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-5.1021576e-005]; _this setpos _r}";
  _this setPos [6764.62,16965.1,0];
};

_vehicle_271 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [6760.1699, 16963.4], [], 0, "CAN_COLLIDE"];
  _vehicle_271 = _this;
  _this setDir 39.4257;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.1205673e-005]; _this setpos _r}";
  _this setPos [6760.1699, 16963.4];
};

_vehicle_272 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [6767.32,16963.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_272 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00014400482]; _this setpos _r}";
  _this setPos [6767.32,16963.7,0];
};

_vehicle_273 = objNull;
if (true) then
{
  _this = createVehicle ["barrels", [6762.78,16957.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_273 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.2636185e-005]; _this setpos _r}";
  _this setPos [6762.78,16957.1,0];
};

_vehicle_274 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrate_nointeractive_", [12420.911, 5050.2739], [], 0, "CAN_COLLIDE"];
  _vehicle_274 = _this;
  _this setDir -146.81949;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5002847]; _this setpos _r}";
  _this setPos [12420.911, 5050.2739];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_large", [12422.965, 5049.3638], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir -405.04895;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.4902396]; _this setpos _r}";
  _this setPos [12422.965, 5049.3638];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["ladawreck", [12414.393, 5039.0264], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir -101.98192;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-9.1552734e-005]; _this setpos _r}";
  _this setPos [12414.393, 5039.0264];
};

_vehicle_278 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_large", [15463.977, 13308.637], [], 0, "CAN_COLLIDE"];
  _vehicle_278 = _this;
  _this setDir -27.17;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.0967255e-005]; _this setpos _r}";
  _this setPos [15463.977, 13308.637];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["map_sign_hospital_new", [15485.4,13293.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir 223.615;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.0688076]; _this setpos _r}";
  _this setPos [15485.4,13293.9,0];
};

_vehicle_280 = objNull;
if (true) then
{
  _this = createVehicle ["vaultstoragelocked", [15491.8,13297.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_280 = _this;
  _this setDir -178.154;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,8.1062317e-006]; _this setpos _r}";
  _this setPos [15491.8,13297.6,0];
};

_vehicle_281 = objNull;
if (true) then
{
  _this = createVehicle ["land_toilet", [15480.5,13297.6,0], [], 0, "CAN_COLLIDE"];
  _vehicle_281 = _this;
  _this setDir -175.734;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.7193298e-005]; _this setpos _r}";
  _this setPos [15480.5,13297.6,0];
};

_vehicle_282 = objNull;
if (true) then
{
  _this = createVehicle ["land_ind_tanksmall2_ep1", [15463.1,13321.3,0], [], 0, "CAN_COLLIDE"];
  _vehicle_282 = _this;
  _this setDir 132.048;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.36965451]; _this setpos _r}";
  _this setPos [15463.1,13321.3,0];
};

_vehicle_283 = objNull;
if (true) then
{
  _this = createVehicle ["flagcarrierwhite_ep1", [15483.8,13311.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_283 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.7179718e-005]; _this setpos _r}";
  _this setPos [15483.8,13311.7,0];
};

_vehicle_284 = objNull;
if (true) then
{
  _this = createVehicle ["garbage_can", [15491.3,13296.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_284 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,4.9591064e-005]; _this setpos _r}";
  _this setPos [15491.3,13296.9,0];
};

_vehicle_285 = objNull;
if (true) then
{
  _this = createVehicle ["land_bags_stack_ep1", [15477.1,13300.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_285 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.00014019012]; _this setpos _r}";
  _this setPos [15477.1,13300.8,0];
};

_vehicle_286 = objNull;
if (true) then
{
  _this = createVehicle ["land_misc_ironpipes_ep1", [15494.8,13298.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_286 = _this;
  _this setDir -218.935;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-4.1007996e-005]; _this setpos _r}";
  _this setPos [15494.8,13298.9,0];
};

_vehicle_287 = objNull;
if (true) then
{
  _this = createVehicle ["paleta2", [15495.5,13300.9,0], [], 0, "CAN_COLLIDE"];
  _vehicle_287 = _this;
  _this setDir -14.5635;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,8.1062317e-006]; _this setpos _r}";
  _this setPos [15495.5,13300.9,0];
};

_vehicle_288 = objNull;
if (true) then
{
  _this = createVehicle ["land_barrel_water", [15473.2,13303.2,0], [], 0, "CAN_COLLIDE"];
  _vehicle_288 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.3841858e-006]; _this setpos _r}";
  _this setPos [15473.2,13303.2,0];
};

_vehicle_289 = objNull;
if (true) then
{
  _this = createVehicle ["land_cages_ep1", [15472.3,13304.5,0], [], 0, "CAN_COLLIDE"];
  _vehicle_289 = _this;
  _this setDir -31.822;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.001358e-005]; _this setpos _r}";
  _this setPos [15472.3,13304.5,0];
};

_vehicle_290 = objNull;
if (true) then
{
  _this = createVehicle ["land_crates_stack_ep1", [15474.1,13302,0], [], 0, "CAN_COLLIDE"];
  _vehicle_290 = _this;
  _this setDir -38.7058;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-8.2015991e-005]; _this setpos _r}";
  _this setPos [15474.1,13302,0];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["land_tires_ep1", [15497.1,13302,0], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setDir 49.8868;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.5762787e-005]; _this setpos _r}";
  _this setPos [15497.1,13302,0];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["land_bag_ep1", [15474.2,13303,0], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.048464362]; _this setpos _r}";
  _this setPos [15474.2,13303,0];
};

_vehicle_293 = objNull;
if (true) then
{
  _this = createVehicle ["land_bucket_ep1", [15475.7,13300.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_293 = _this;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0.034073729]; _this setpos _r}";
  _this setPos [15475.7,13300.4,0];
};

_vehicle_294 = objNull;
if (true) then
{
  _this = createVehicle ["land_shelf_ep1", [15476.8,13299.1,0], [], 0, "CAN_COLLIDE"];
  _vehicle_294 = _this;
  _this setDir -47.3043;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.029088022]; _this setpos _r}";
  _this setPos [15476.8,13299.1,0];
};

_vehicle_295 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrate_nointeractive_", [12428.841, 5059.7427], [], 0, "CAN_COLLIDE"];
  _vehicle_295 = _this;
  _this setDir -90.654312;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.4523263]; _this setpos _r}";
  _this setPos [12428.841, 5059.7427];
};

_vehicle_296 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_medium", [12428.024, 5058.2876], [], 0, "CAN_COLLIDE"];
  _vehicle_296 = _this;
  _this setDir 28.4795;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.4649951]; _this setpos _r}";
  _this setPos [12428.024, 5058.2876];
};

_vehicle_297 = objNull;
if (true) then
{
  _this = createVehicle ["foldchair", [12428.1,5060.8,0], [], 0, "CAN_COLLIDE"];
  _vehicle_297 = _this;
  _this setDir 25.9022;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.3330092]; _this setpos _r}";
  _this setPos [12428.1,5060.8,0];
};

_vehicle_298 = objNull;
if (true) then
{
  _this = createVehicle ["foldtable", [12426.683, 5061.3169, 0.019613881], [], 0, "CAN_COLLIDE"];
  _vehicle_298 = _this;
  _this setDir 26.357462;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.4282]; _this setpos _r}";
  _this setPos [12426.683, 5061.3169, 0.019613881];
};

_vehicle_300 = objNull;
if (true) then
{
  _this = createVehicle ["gunrackus_ep1", [12423.453, 5050.7349], [], 0, "CAN_COLLIDE"];
  _vehicle_300 = _this;
  _this setDir -149.88;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,3.5458572]; _this setpos _r}";
  _this setPos [12423.453, 5050.7349];
};

_vehicle_301 = objNull;
if (true) then
{
  _this = createVehicle ["info_board_ep1", [12408.2,5048.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_301 = _this;
  _this setDir -149.079;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-3.0517578e-005]; _this setpos _r}";
  _this setPos [12408.2,5048.7,0];
};

_vehicle_302 = objNull;
if (true) then
{
  _this = createVehicle ["info_board_ep1", [15470.8,13314.7,0], [], 0, "CAN_COLLIDE"];
  _vehicle_302 = _this;
  _this setDir -48.3655;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-2.3841858e-005]; _this setpos _r}";
  _this setPos [15470.8,13314.7,0];
};

_vehicle_303 = objNull;
if (true) then
{
  _this = createVehicle ["info_board_ep1", [8242.13,15495.4,0], [], 0, "CAN_COLLIDE"];
  _vehicle_303 = _this;
  _this setDir -128.852;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.5101852e-005]; _this setpos _r}";
  _this setPos [8242.13,15495.4,0];
};

_vehicle_305 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [6758.5903, 16957.223, -0.00022125244], [], 0, "CAN_COLLIDE"];
  _vehicle_305 = _this;
  _this setDir -12.150015;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,1.1205673e-005]; _this setpos _r}";
  _this setPos [6758.5903, 16957.223, -0.00022125244];
};

_vehicle_310 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrate_NoInteractive_", [8267.9209, 15494.755, 0.22470753], [], 0, "CAN_COLLIDE"];
  _vehicle_310 = _this;
  _this setDir -58.936001;
  _this setPos [8267.9209, 15494.755, 0.22470753];
};

_vehicle_312 = objNull;
if (true) then
{
  _this = createVehicle ["AmmoCrates_NoInteractive_Small", [8266.4609, 15493.706, 0.24600686], [], 0, "CAN_COLLIDE"];
  _vehicle_312 = _this;
  _this setDir -404.91397;
  _this setPos [8266.4609, 15493.706, 0.24600686];
};

_vehicle_314 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [5155.1309, 4851.2085, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_314 = _this;
  _this setDir 259.87933;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [5155.1309, 4851.2085, -7.6293945e-006];
};

_vehicle_319 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [5140.2168, 4890.2715, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_319 = _this;
  _this setDir -8.6063671;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [5140.2168, 4890.2715, -6.8664551e-005];
};

_vehicle_321 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12404.195, 5077.6963], [], 0, "CAN_COLLIDE"];
  _vehicle_321 = _this;
  _this setDir -41.982452;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [12404.195, 5077.6963];
};

_vehicle_323 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12397.911, 5071.0259, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_323 = _this;
  _this setDir -52.043034;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [12397.911, 5071.0259, -1.5258789e-005];
};

_vehicle_325 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [12395.648, 5068.4014], [], 0, "CAN_COLLIDE"];
  _vehicle_325 = _this;
  _this setDir -49.841679;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [12395.648, 5068.4014];
};

_vehicle_328 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo1b_military", [8260.4932, 15472.069, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_328 = _this;
  _this setDir -40.260918;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-0.00016117096]; _this setpos _r}";
  _this setPos [8260.4932, 15472.069, -4.2915344e-006];
};

_vehicle_331 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8240.832, 15464.678, -1.2159348e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_331 = _this;
  _this setDir -48.046959;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8240.832, 15464.678, -1.2159348e-005];
};

_vehicle_333 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8236.2373, 15460.656, 4.5061111e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_333 = _this;
  _this setDir -27.142065;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8236.2373, 15460.656, 4.5061111e-005];
};

_vehicle_335 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8234.0781, 15462.992, 2.5987625e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_335 = _this;
  _this setDir -54.135727;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8234.0781, 15462.992, 2.5987625e-005];
};

_vehicle_337 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8238.8262, 15467.106, -2.6226044e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_337 = _this;
  _this setDir -30.621258;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8238.8262, 15467.106, -2.6226044e-006];
};

_vehicle_339 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8260.3252, 15474.934, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_339 = _this;
  _this setDir 41.801273;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8260.3252, 15474.934, -9.5367432e-006];
};

_vehicle_341 = objNull;
if (true) then
{
  _this = createVehicle ["land_cncblock_stripes", [8257.3057, 15472.287, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_341 = _this;
  _this setDir 50.930904;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-7.390976e-005]; _this setpos _r}";
  _this setPos [8257.3057, 15472.287, -1.4305115e-006];
};

_vehicle_344 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_small", [8266.6826, 15465.728, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_344 = _this;
  _this setDir -131.37434;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1988831e-006]; _this setpos _r}";
  _this setPos [8266.6826, 15465.728, 1.9073486e-005];
};

_vehicle_348 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [2125.5771, 7804.373, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_348 = _this;
  _this setDir 22.800119;
  _this setPos [2125.5771, 7804.373, -5.7220459e-006];
};

_vehicle_349 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_small", [15516.246, 13309.418, -4.0531158e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_349 = _this;
  _this setDir -139.35179;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1988831e-006]; _this setpos _r}";
  _this setPos [15516.246, 13309.418, -4.0531158e-005];
};

_vehicle_351 = objNull;
if (true) then
{
  _this = createVehicle ["misc_cargo_cont_small", [15503.417, 13294.808, -0.006918611], [], 0, "CAN_COLLIDE"];
  _vehicle_351 = _this;
  _this setDir -137.66672;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,6.1988831e-006]; _this setpos _r}";
  _this setPos [15503.417, 13294.808, -0.006918611];
};

_vehicle_352 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_cargo_cont_small_EP1", [5158.4902, 4869.5425, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_352 = _this;
  _this setDir -102.79341;
  _this setPos [5158.4902, 4869.5425, -3.0517578e-005];
};

_vehicle_354 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [5141.5874, 4844.5405, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_354 = _this;
  _this setDir 7.5358763;
  _this setPos [5141.5874, 4844.5405, -2.2888184e-005];
};

_vehicle_361 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1B_military", [5121.7925, 4844.3379, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_361 = _this;
  _this setDir 261.34695;
  _this setPos [5121.7925, 4844.3379, -2.2888184e-005];
};

_vehicle_364 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_military", [5137.2124, 4848.6646, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_364 = _this;
  _this setDir -5.013896;
  _this setPos [5137.2124, 4848.6646, -2.2888184e-005];
};

_vehicle_380 = objNull;
if (true) then
{
  _this = createVehicle ["land_camonetvar_nato", [9954.6816, 8017.6636], [], 0, "CAN_COLLIDE"];
  _vehicle_380 = _this;
  _this setDir -215.89941;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,2.2888184e-005]; _this setpos _r}";
  _this setPos [9954.6816, 8017.6636];
};

_vehicle_388 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_large", [9948.875, 8017.3032, -0.05028246], [], 0, "CAN_COLLIDE"];
  _vehicle_388 = _this;
  _this setDir -294.35666;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,7.6293945e-006]; _this setpos _r}";
  _this setPos [9948.875, 8017.3032, -0.05028246];
};

_vehicle_389 = objNull;
if (true) then
{
  _this = createVehicle ["ammocrates_nointeractive_medium", [9951.1533, 8019.7329, -0.057231527], [], 0, "CAN_COLLIDE"];
  _vehicle_389 = _this;
  _this setDir -135.77649;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [9951.1533, 8019.7329, -0.057231527];
};

_vehicle_392 = objNull;
if (true) then
{
  _this = createVehicle ["foldchair", [9949.4678, 8018.7285, -0.11536397], [], 0, "CAN_COLLIDE"];
  _vehicle_392 = _this;
  _this setDir -65.645378;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,0]; _this setpos _r}";
  _this setPos [9949.4678, 8018.7285, -0.11536397];
};

_vehicle_393 = objNull;
if (true) then
{
  _this = createVehicle ["land_fire_barrel", [9952.7627, 8020.4717, 0.0088179111], [], 0, "CAN_COLLIDE"];
  _vehicle_393 = _this;
  _this setDir -116.51756;
  _this setVehicleInit "this call {_r = getpos _this; _r set [2,-1.5258789e-005]; _this setpos _r}";
  _this setPos [9952.7627, 8020.4717, 0.0088179111];
};

_vehicle_410 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [9959.7793, 8023.4683, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_410 = _this;
  _this setDir -43.834446;
  _this setPos [9959.7793, 8023.4683, -2.2888184e-005];
};

_vehicle_411 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [9962.4209, 8017.9517, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_411 = _this;
  _this setDir 11.808092;
  _this setPos [9962.4209, 8017.9517, 0.00012207031];
};

_vehicle_412 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1Eo_EP1", [9959.0938, 8015.314, -0.00011444092], [], 0, "CAN_COLLIDE"];
  _vehicle_412 = _this;
  _this setDir -21.664211;
  _this setPos [9959.0938, 8015.314, -0.00011444092];
};

_vehicle_414 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [9955.4668, 8011.5225, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_414 = _this;
  _this setDir 58.835083;
  _this setPos [9955.4668, 8011.5225, -6.8664551e-005];
};

_vehicle_415 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Cargo1E_EP1", [9949.6338, 8010.772, -0.067774177], [], 0, "CAN_COLLIDE"];
  _vehicle_415 = _this;
  _this setDir -50.34882;
  _this setPos [9949.6338, 8010.772, -0.067774177];
};

_vehicle_416 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [9966.3174, 7997.9971], [], 0, "CAN_COLLIDE"];
  _vehicle_416 = _this;
  _this setPos [9966.3174, 7997.9971];
};

_vehicle_417 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15447.714, 13320.316], [], 0, "CAN_COLLIDE"];
  _vehicle_417 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15447.714, 13320.316];
};

_vehicle_419 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15466.999, 13354.448, -0.00010919571], [], 0, "CAN_COLLIDE"];
  _vehicle_419 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15466.999, 13354.448, -0.00010919571];
};

_vehicle_421 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15491.229, 13319.757, 5.4359436e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_421 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15491.229, 13319.757, 5.4359436e-005];
};

_vehicle_423 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15532.907, 13320.72, -3.7193298e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_423 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15532.907, 13320.72, -3.7193298e-005];
};

_vehicle_425 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15510.304, 13357.716, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_425 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15510.304, 13357.716, 5.7220459e-006];
};

_vehicle_427 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15465.867, 13284.044, 0.00027561188], [], 0, "CAN_COLLIDE"];
  _vehicle_427 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15465.867, 13284.044, 0.00027561188];
};

_vehicle_429 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15507.908, 13284.688, -3.9100647e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_429 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15507.908, 13284.688, -3.9100647e-005];
};

_vehicle_431 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15422.585, 13288.869, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_431 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15422.585, 13288.869, -1.8119812e-005];
};

_vehicle_433 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15133.455, 16419.592, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_433 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15133.455, 16419.592, 1.9073486e-006];
};

_vehicle_435 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15125.511, 16381, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_435 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15125.511, 16381, 1.335144e-005];
};

_vehicle_437 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15091.925, 16410.248, 7.4386597e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_437 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15091.925, 16410.248, 7.4386597e-005];
};

_vehicle_439 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15105.535, 16449.922, -3.2424927e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_439 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15105.535, 16449.922, -3.2424927e-005];
};

_vehicle_441 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15129.194, 16467.84, -4.7683716e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_441 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15129.194, 16467.84, -4.7683716e-005];
};

_vehicle_443 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15090.518, 16491.877, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_443 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15090.518, 16491.877, 5.7220459e-006];
};

_vehicle_445 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15076.273, 16518.168, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_445 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15076.273, 16518.168, 5.7220459e-006];
};

_vehicle_447 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15050.03, 16480.986, 5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_447 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15050.03, 16480.986, 5.7220459e-006];
};

_vehicle_449 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [15071.27, 16452.916, 0.00012016296], [], 0, "CAN_COLLIDE"];
  _vehicle_449 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [15071.27, 16452.916, 0.00012016296];
};

_vehicle_451 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8274.5264, 15460.496, 3.0994415e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_451 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8274.5264, 15460.496, 3.0994415e-005];
};

_vehicle_453 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8293.0459, 15494.042, -1.7642975e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_453 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8293.0459, 15494.042, -1.7642975e-005];
};

_vehicle_455 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8247.5664, 15492.507, -4.3869019e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_455 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8247.5664, 15492.507, -4.3869019e-005];
};

_vehicle_457 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8274.9209, 15526.852, -3.9100647e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_457 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8274.9209, 15526.852, -3.9100647e-005];
};

_vehicle_459 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8234.7529, 15533.031, -0.00011920929], [], 0, "CAN_COLLIDE"];
  _vehicle_459 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8234.7529, 15533.031, -0.00011920929];
};

_vehicle_461 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8235.3018, 15449.438, -7.390976e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_461 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8235.3018, 15449.438, -7.390976e-005];
};

_vehicle_463 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8205.8975, 15480.634, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_463 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8205.8975, 15480.634, 6.6757202e-006];
};

_vehicle_465 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [8206.7617, 15515.613, 2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_465 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [8206.7617, 15515.613, 2.8610229e-006];
};

_vehicle_467 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6767.5225, 16964.174, 0.20529106], [], 0, "CAN_COLLIDE"];
  _vehicle_467 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6767.5225, 16964.174, 0.20529106];
};

_vehicle_469 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6727.4063, 16952.074, -0.00012016296], [], 0, "CAN_COLLIDE"];
  _vehicle_469 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6727.4063, 16952.074, -0.00012016296];
};

_vehicle_471 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6738.7896, 16993.102, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_471 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6738.7896, 16993.102, 1.0490417e-005];
};

_vehicle_473 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6782.3623, 17004.932, 0.11861694], [], 0, "CAN_COLLIDE"];
  _vehicle_473 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6782.3623, 17004.932, 0.11861694];
};

_vehicle_475 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6806.8491, 16972.807, -0.091109693], [], 0, "CAN_COLLIDE"];
  _vehicle_475 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6806.8491, 16972.807, -0.091109693];
};

_vehicle_477 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6760.2402, 16925.326, -0.054547131], [], 0, "CAN_COLLIDE"];
  _vehicle_477 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6760.2402, 16925.326, -0.054547131];
};

_vehicle_479 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [6796.1631, 16935.744, 0.0065341592], [], 0, "CAN_COLLIDE"];
  _vehicle_479 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [6796.1631, 16935.744, 0.0065341592];
};

_vehicle_481 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5392.793, 16126.547, 3.9100647e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_481 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5392.793, 16126.547, 3.9100647e-005];
};

_vehicle_483 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5352.6978, 16104.354, 1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_483 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5352.6978, 16104.354, 1.7166138e-005];
};

_vehicle_485 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5387.9526, 16086.919, 1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_485 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5387.9526, 16086.919, 1.3828278e-005];
};

_vehicle_487 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5433.9507, 16099.001, -0.00012874603], [], 0, "CAN_COLLIDE"];
  _vehicle_487 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5433.9507, 16099.001, -0.00012874603];
};

_vehicle_489 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5353.9033, 16143.888, -9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_489 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5353.9033, 16143.888, -9.059906e-006];
};

_vehicle_491 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5391.0269, 16170.495, -4.1007996e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_491 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5391.0269, 16170.495, -4.1007996e-005];
};

_vehicle_493 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5431.2427, 16142.094, 0.00019454956], [], 0, "CAN_COLLIDE"];
  _vehicle_493 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5431.2427, 16142.094, 0.00019454956];
};

_vehicle_495 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2126.1826, 7806.9238, -2.1457672e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_495 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2126.1826, 7806.9238, -2.1457672e-005];
};

_vehicle_497 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2087.6855, 7806.0869, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_497 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2087.6855, 7806.0869, -1.1920929e-005];
};

_vehicle_499 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2107.7178, 7768.7671, 1.0967255e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_499 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2107.7178, 7768.7671, 1.0967255e-005];
};

_vehicle_501 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2150.3376, 7772.3179, -3.3378601e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_501 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2150.3376, 7772.3179, -3.3378601e-005];
};

_vehicle_503 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2105.3289, 7846.4414, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_503 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2105.3289, 7846.4414, 1.5258789e-005];
};

_vehicle_505 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2149.6289, 7839.8608, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_505 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2149.6289, 7839.8608, 2.2888184e-005];
};

_vehicle_507 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [2172.6589, 7807.0356, 2.7656555e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_507 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [2172.6589, 7807.0356, 2.7656555e-005];
};

_vehicle_509 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5139.9272, 4869.8115, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_509 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5139.9272, 4869.8115, -7.6293945e-006];
};

_vehicle_511 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5167.2129, 4831.8857, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_511 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5167.2129, 4831.8857, -7.6293945e-006];
};

_vehicle_513 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5182.7573, 4861.6963, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_513 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5182.7573, 4861.6963, 7.6293945e-006];
};

_vehicle_515 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5170.2095, 4905.9556, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_515 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5170.2095, 4905.9556, -5.3405762e-005];
};

_vehicle_517 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5127.4966, 4914.4351, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_517 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5127.4966, 4914.4351, -6.1035156e-005];
};

_vehicle_519 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5097.9653, 4887.5527, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_519 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5097.9653, 4887.5527, 5.3405762e-005];
};

_vehicle_521 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5102.8457, 4849.1826, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_521 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5102.8457, 4849.1826, -1.5258789e-005];
};

_vehicle_523 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [5131.3735, 4828.959, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_523 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [5131.3735, 4828.959, -1.5258789e-005];
};

_vehicle_525 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9953.7979, 8017.5107, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_525 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9953.7979, 8017.5107, -1.5258789e-005];
};

_vehicle_527 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9981.3174, 7981.8843, 0.00025939941], [], 0, "CAN_COLLIDE"];
  _vehicle_527 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9981.3174, 7981.8843, 0.00025939941];
};

_vehicle_529 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9959.9199, 7980.6553, 0.0002822876], [], 0, "CAN_COLLIDE"];
  _vehicle_529 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9959.9199, 7980.6553, 0.0002822876];
};

_vehicle_531 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9930.9697, 8000.8794, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_531 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9930.9697, 8000.8794, -0.00010681152];
};

_vehicle_533 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9916.3926, 8031.1191, -0.00012969971], [], 0, "CAN_COLLIDE"];
  _vehicle_533 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9916.3926, 8031.1191, -0.00012969971];
};

_vehicle_535 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9938.3184, 8054.8496, 0.00022125244], [], 0, "CAN_COLLIDE"];
  _vehicle_535 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9938.3184, 8054.8496, 0.00022125244];
};

_vehicle_537 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9968.9941, 8045.0249, 0.00064086914], [], 0, "CAN_COLLIDE"];
  _vehicle_537 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9968.9941, 8045.0249, 0.00064086914];
};

_vehicle_539 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [9986.4697, 8014.3149, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_539 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [9986.4697, 8014.3149, 6.1035156e-005];
};

_vehicle_541 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12411.066, 5059.3618, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_541 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12411.066, 5059.3618, 4.5776367e-005];
};

_vehicle_543 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12453.744, 5072.2969, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_543 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12453.744, 5072.2969, 6.1035156e-005];
};

_vehicle_545 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12451.071, 5037.3418, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_545 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12451.071, 5037.3418, 1.5258789e-005];
};

_vehicle_547 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12418.264, 5020.0928, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_547 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12418.264, 5020.0928, -6.1035156e-005];
};

_vehicle_549 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12383.889, 5032.522, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_549 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12383.889, 5032.522, 0.00021362305];
};

_vehicle_551 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12369.208, 5067.9204], [], 0, "CAN_COLLIDE"];
  _vehicle_551 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12369.208, 5067.9204];
};

_vehicle_553 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12392.356, 5096.1006, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_553 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12392.356, 5096.1006, -1.5258789e-005];
};

_vehicle_555 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [12428.47, 5092.2798, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_555 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [12428.47, 5092.2798, -0.00010681152];
};

_vehicle_557 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16862.783, 5275.6406, 0.18237838], [], 0, "CAN_COLLIDE"];
  _vehicle_557 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16862.783, 5275.6406, 0.18237838];
};

_vehicle_559 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16880.59, 5231.9185, 0.00010538101], [], 0, "CAN_COLLIDE"];
  _vehicle_559 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16880.59, 5231.9185, 0.00010538101];
};

_vehicle_561 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16842.584, 5236.3569, 6.4849854e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_561 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16842.584, 5236.3569, 6.4849854e-005];
};

_vehicle_563 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16819.58, 5266.1509, -0.10386723], [], 0, "CAN_COLLIDE"];
  _vehicle_563 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16819.58, 5266.1509, -0.10386723];
};

_vehicle_565 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16907.264, 5268.3672, -0.0483374], [], 0, "CAN_COLLIDE"];
  _vehicle_565 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16907.264, 5268.3672, -0.0483374];
};

_vehicle_567 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16837.867, 5309.8853, 0.12335178], [], 0, "CAN_COLLIDE"];
  _vehicle_567 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16837.867, 5309.8853, 0.12335178];
};

_vehicle_569 = objNull;
if (CS_addSafeZones) then
{
  _this = createVehicle ["ProtectionZone_EP1", [16882.287, 5310.3872, -0.0002746582], [], 0, "CAN_COLLIDE"];
  _vehicle_569 = _this;
  _this setVehicleInit "this setObjectTexture [0,'#(argb,8,8,3)color(0,0,0,0,ca)']; this setVectorUp [0,0,1];";
  _this setPos [16882.287, 5310.3872, -0.0002746582];
};