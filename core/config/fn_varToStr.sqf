/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var", "_ret"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual inventory items
	case "life_inv_oilu": {"Crude"};
	case "life_inv_oilp": {"Oil"};
	case "life_inv_heroinu": {"Poppy"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Hemp"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit Meat"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornithology Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Dogfish Meat"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Rod"};
	case "life_inv_water": {"Water Bottle"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Gas Cans"};
	case "life_inv_fuelF": {"Full Gas Cans"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Bars"};
	case "life_inv_copperr": {"Copper Ingots"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salt"};
	case "life_inv_saltr": {"Table Salt"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Diamond In The Rough"};
	case "life_inv_diamondr": {"Diamond"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lock Pick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Coca Leaves"};
	case "life_inv_cokep": {"cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Stone"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_goldbar": {"Gold Bar"};
	case "life_inv_silver": {"Silver"}; //##10 ##11 ##12
	case "life_inv_silverr": {"Silver"};
	case "life_inv_gold": {"Ore"};
	case "life_inv_goldr": {"Gold"};
	case "life_inv_coal": {"Unprocessed Coal"};
	case "life_inv_coalr": {"Coal"};	
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_hops": {"Hops"};
	case "life_inv_grapes": {"Grapes"};
	case "life_inv_wineg": {"Grape Wine"};
	case "life_inv_cherries": {"Cherries"};
	case "life_inv_winec": {"Cherry Wine"};
	case "life_inv_barley": {"Barley"};
	case "life_inv_beer": {"Beer"};
	case "life_inv_methu": {"Unprocessed Methamphetamines"};
	case "life_inv_methp": {"Processed Methamphetamines"};
	case "life_inv_cokec": {"Confescated cocaine"};
	case "life_inv_heroinc": {"Confescated heroin"};
	case "life_inv_marijuanac": {"Confescated marijuana"};
	case "life_inv_froglsdc": {"Confescated lsd"};	//LSD
	case "life_inv_moonshinec": {"Confescated moonshine"};
	case "life_inv_methc": {"Confescated meth"};
	
	//Illegal money ##38
	case "life_inv_illegalmoney": {"$ dirty money"};
	
	//Vrerpairkit ##49
	case "life_inv_vrepairkit": {"Repair Kit (packed)"};
	
	//VFirstaidkit ##53
	case "life_inv_vfirstaidkit": {"First-Aid Kit (packed)"};
	
	//##69 BOX
	case "life_inv_box": {"box"};
	
	//License Block
	case "license_civ_driver": {"driver's license"};
	case "license_civ_air": {"pilot"};
	case "license_civ_heroin": {"ability: make heroin"};
	case "license_civ_gang": {"gang membership"};
	case "license_civ_oil": {"ability: produce oil"};
	case "license_civ_dive": {"divers permit"};
	case "license_civ_boat": {"boat slip"};
	case "license_civ_gun": {"Gun Permit"};
	case "license_cop_air": {"pilot"};
	case "license_cop_swat": {"SWAT license"};
	case "license_cop_cg": {"Coast Guard"};
	case "license_civ_rebel": {"rebel membership"};
	case "license_civ_truck": {"truck driver's license"};
	case "license_civ_diamond": {"ability: Diamond grind"};
	case "license_civ_copper": {"ability: copper melt"};
	case "license_civ_iron": {"ability: iron melt"};
	case "license_civ_sand": {"ability: make glass"};
	case "license_civ_salt": {"ability: produce table salt"};
	case "license_civ_coke": {"ability: cocaine manufacture"};
	case "license_civ_marijuana": {"ability: manufacture marijuana"};
	case "license_civ_moonshine": {"ability: manufacture moonshine"};
	case "license_civ_winec": {"ability: manufacture cherrywine"};
	case "license_civ_wineg": {"ability: manufacture grapewine"};
	case "license_civ_beer": {"ability: manufacture beer"};
	case "license_civ_meth": {"ability: manufacture methamphetamines"};
	case "license_civ_cement": {"ability: cement burn"};
	
	
	case "license_civ_home": {"Civilian home title"};
	case "license_cop_home": {"Police Home title"};
	case "license_civ_gold": {"ability: gold processing"}; //11
	case "license_civ_silver": {"ability: Silver processing"};//12
	case "license_civ_coal": {"ability: coal processing"}; //10
	
	case "license_civ_adac": {"ADAC license"}; //##33
	
	case "license_cop_sniper": {"sniper license"};//##98
	
	case "license_civ_tazer": {"Tazer license"};
	
	case "license_civ_event": {"participation event"}; //EVENT
	case "license_cop_event": {"participation event"}; //EVENT
	
	case "license_civ_viewwanted": {"insight into Wantedliste"}; //WANTED
	
	//Frog Addon
	case "life_inv_frog": {"frog"};
	case "life_inv_froglsd": {"LSD"};
	case "life_inv_froglegs": {"frog legs"};
	
	default //##69
	{
		_ret = [_var] call life_fnc_vitem_varToStr;
		
		if(_ret == "") then
		{
			_ret = [_var] call life_fnc_uitem_varToStr;
		};
		
		_ret;
	};
	
	
	
};
