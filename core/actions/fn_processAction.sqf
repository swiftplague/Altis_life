/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP", "_sound"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_sound = "";

_itemInfo = switch (_type) do
{
	case "oil": 
	{
		_sound="processoil"; 
		["oilu","oilp",1200,"Processing Oil"];
	};
	case "diamond":
	{
		_sound="diamondcutting"; 
		["diamond", "diamondc", 1350,"loop diamond"]
	};
	case "heroin":
	{
		_sound="drugcooking"; 
		["heroinu", "heroinp", 2100, "Deal with opium poppy"]
	};
	case "copper":
	{
		_sound="smelting"; 
		["copperore","copper_r", 750,"melt copper"]
	};
	case "iron":
	{
		_sound="smelting"; 
		["ironore","iron_r", 1120,"melt iron"]
	};
	case "sand":
	{
		_sound="smelting";
		["sand", "glass", 650, "Process sand"]
	};
	case "salt":
	{
		_sound="saltprocess"; 
		["salt", "salt_r", 450,"deal with salt"]
	};
	case "cocaine":
	{
		_sound="drugcooking"; 
		["cocaine", "cocainep", 1500, "deal with coca leaves"]
	};
	case "marijuana":
	{
		_sound="drugcooking"; 
		["cannabis", "marijuana", 500,"deal with hemp"]
	};
	case "cement":
	{
		_sound="cementmix"; 
		["Rock", "cement", 350, "burn cement"]
	};
	case "gold":
	{
		_sound="smelting"; 
		["gold", "goldr", 1350,"melting gold"]
	}; //##11
	case "silver":
	{
		_sound="smelting"; 
		["silver","silverr",1050,"Molten silver"]
	}; //##12
	case "coal":
	{
		_sound="smelting"; 
		["coal","coalr",350,"Work with coal"]
	}; //##10
	case "grapes":
	{
		_sound="drugcooking"; 
		["grapes","wineg",300,"Fermenting Wine"]
	}; //##10
	case "winec":
	{
		_sound="drugcooking"; 
		["cherries","winec",300,"Fermenting Wine"]
	}; //##10
	case "beer":
	{
		_sound="drugcooking"; 
		["barley","beer",600,"Fermenting Beer"]
	}; //##10
	case "moonshine":
	{
		_sound="drugcooking"; 
		["hops","moonshine",1200,"Fermenting Moonshine"]
	}; //##10
	case "methp":
	{
		_sound="drugcooking"; 
		["methu", "methp", 2300, "Deal with opium poppy"]
	};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	//Trigger sounds here
	if(_sound != "") then { _vendor say3D _sound };

	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You may make at the produce not more than 10 m remove."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["You've made %1 %2.",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format["You need $%1, order something without ability to process!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	//Trigger sounds here
	if(_sound != "") then { _vendor say3D _sound };
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You may make at the produce not more than 10 m remove."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format["You need $%1, order something without ability to process!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["You've made %1 %2 ($%3)",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	