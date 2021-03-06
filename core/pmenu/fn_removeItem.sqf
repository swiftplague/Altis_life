/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "you've got nothing to the Remove selected.";};
if(!([_value] call fnc_isnumber)) exitWith {hint "you have specified no current count."};
if(parseNumber(_value) <= 0) exitWith {hint "you must specify a current number that you want to remove."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["this is an illegal item, because cops nearby you can no longer destroy the be white.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["You can remove any items while you are in the vehicle.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "number could not be destroyed, not this number you möglicherweiße?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;

hint format["You have successfully removed %1 %2 from your inventory.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;