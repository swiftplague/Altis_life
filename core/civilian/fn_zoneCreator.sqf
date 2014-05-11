/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_frogZones","_grapeZones","_cherryZones","_methZones","_hopsZones","_barleyZones","_heroinpZones","_cocainepZones","_marijuanaZones","_LSDZones","_methpZones","_moonshinesZones"];
_moonshineZones = ["moonshine_1"];
_methpZones = ["methp_1"];
_heroinpZones = ["heroinp_1"];
_cocainepZones = ["cocainep_1"];
_marijuanaZones = ["marijuana_1"];
_LSDZones = ["LSD_swamp1"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4","apple_5","apple_6"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","peaches_6"];
_grapeZones = ["grape_1","grape_2","grape_3"];
_cherryZones = ["cherry_1","cherry_2","cherry_3"];
_hopZones = ["hop_1","hop_2","hop_3"];
_barleyZones = ["barley_1","barley_2","barley_3"];
_methZones = ["meth_1"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_frogZones = ["frog_swamp1"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Collect apples',life_fnc_gatherApples,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Collect peaches',life_fnc_gatherPeaches,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Collect poppy',life_fnc_gatherHeroin,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Collect hemp',life_fnc_gatherCannabis,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Collecting coca leaves',life_fnc_gatherCocaine,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create frog zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Frog = player addAction['Catch frogs',life_fnc_CatchFrogAction,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Frog;"];
} foreach _frogZones;

//Create grapes zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_grapes = player addAction['Gather Grapes',life_fnc_gatherGrapes,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_grapes;"];
} foreach _grapeZones;

//Create cherries zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_cherries = player addAction['Gather Grapes',life_fnc_gatherCherries,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_cherries;"];
} foreach _cherryZones;

//Create barley zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_barley = player addAction['Gather Barley',life_fnc_gatherBarley,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_barley;"];
} foreach _barleyZones;

//Create hops zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_hops = player addAction['Gather Hops',life_fnc_gatherHops,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_hops;"];
} foreach _hopZones;

//Create meth zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_meth = player addAction['Gather Meth',life_fnc_gatherMeth,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_meth;"];
} foreach _methZones;


//Create heroinp zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Heroinp = player addAction['Confescate Heroin',life_fnc_gatherHeroinp,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroinp;"];
} foreach _heroinpZones;

//Create marijuana zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Marijuana = player addAction['Confescate marijuana',life_fnc_gatherWeed,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Marijuana;"];
} foreach _marijuanaZones;

//Create cocainep zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cocainep = player addAction['Confescate Cocaine',life_fnc_gatherCocainep,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cocainep;"];
} foreach _cocainepZones;

//Create LSD zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_LSD = player addAction['Confescate LSD',life_fnc_gatherLsd,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_LSD;"];
} foreach _LSDZones;

//Create moonshine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Moonshine = player addAction['Confescate Moonshine',life_fnc_gatherMoonshine,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Moonshine;"];
} foreach _moonshineZones;

//Create methp zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["west","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Methp = player addAction['Confescate meth',life_fnc_gatherMethp,'',6,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Methp;"];
} foreach _methpZones;