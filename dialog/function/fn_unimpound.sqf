#include <macro.h>
/*
	File: fn_unimpound.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Yeah... Gets the vehicle from the garage.
	
	
	STUPID TONIC 2x UNIMPOUND WTF
*/
private["_vehicle","_vid","_pid","_unit","_price","_isfree"];

_isfree = [_this,0,false] call BIS_fnc_param; //param free

disableSerialization;
if(lbCurSel 2801 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2801,(lbCurSel 2801)];
_vid = lbValue[2801,(lbCurSel 2801)];
_pid = getPlayerUID player;
_unit = player;

if(isNil "_vehicle") exitWith {hint "The selection was a mistake..."};

_price = [_vehicle,__GETC__(life_garage_prices)] call fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_prices) select _price) select 1;};

if(_isfree) then
{
  _price = 0;  
  systemChat "The parking costs you nothing.";
};

if(life_atmcash < _price) exitWith {hint format[(localize "STR_Garage_CashError"),[_price] call life_fnc_numberText];};

[[_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price,life_illegal_item_cleared],"TON_fnc_spawnVehicle",false,false] spawn life_fnc_MP; //##56 ##56 give illegal item array
hint localize "STR_Garage_SpawningVeh";

life_atmcash = life_atmcash - _price;