/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box"]]};
	case "rebmarket": {["Rebel market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box","uitem_handcuffs","uitem_bomb","uitem_token_rebel"], ["reb"]]};
	case "donatormarket": {["Donor market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","vitem_repairkit","vitem_firstaidkit","box","uitem_handcuffs","uitem_bomb","uitem_token_donator"], ["donator"]]};
	case "wongs": {["City Wok",["turtlesoup","turtle","foglegs"]]};
	case "police": {["Evidence",["cokec","heroinc","marijuanac","froglsdc","moonshinec","methc","froglsd","cocainep","heroinp","marijuana","methu","methp"]]};	
	case "turtledealer": {["Delicacies",["turtlesoup","turtle","foglegs"]]};
	case "coffee": {["Cafe Strata",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["froglsd","cocainep","heroinp","marijuana","methu","methp"]]};
	case "liqour": {["Liqour Store",["cherries","winec","grapes","wineg","barley","beer""hops","moonshine"]]};
	case "oil": {["American Oil traders",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Hardware Store: Glass",["glass"]]};
	case "iron": {["Iron Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",[/*"diamond",*/"diamondc"]]};
	case "salt": {["Salt Traders",["salt_r"]]};
	case "cop": {["Canteen",["donuts","coffee","water","rabbit","apple","redgull"], ["cop"]]};
	case "cop_gear": { ["Cop Equipment", ["uitem_handcuffs","spikeStrip","fuelF","vitem_repairkit","vitem_firstaidkit","box","uitem_bd_mk1_bleachweapon","uitem_bd_mk1_ammo","uitem_bd_mk2_microemp","uitem_bd_mk2_ammo","uitem_token_police","uitem_troll_taschentuch","uitem_troll_nuckel","uitem_troll_bitering","uitem_troll_money"], ["cop"]] };
    case "cement": {["Hardware Store: Cement",["cement"]]};
	case "silver": {["Silver Dealers",["silver","silverr"]]}; //##12
	case "gold": {["Gold Dealers",[/*"gold",*/"goldr"]]}; //##11
	case "pmetal": {["Precious Metal Dealer",[/*"gold",*/"goldr",/*"silver",*/"silverr"]]}; //##11
	case "coal": {["Carbon traders",[/*"coal",*/"coalr"]]}; //##10
	case "furniture": {["Furniture Store" ,["uitem_furniture_01", "uitem_furniture_02", "uitem_furniture_03", "uitem_furniture_04", "uitem_furniture_05"]]};
	case "adac": {["ADAC Equipment",["fuelF","uitem_adac_toolkit","uitem_adac_tow","uitem_adac_paint","vitem_repairkit","vitem_firstaidkit","box","water","rabbit","apple","redgull","tbacon","peach"], ["adac"]]};
	
	//event shops 
	case "event_1": {["** Event **",["event_1"], ["event"]]};
	case "event_2": {["** Event **",["event_2"], ["event"]]};
	case "event_3": {["** Event **",["event_3"], ["event"]]};
};
