/*
	File: fn_postBail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when the player attempts to post bail.
	Needs to be revised.
*/
private["_unit"];
_unit = _this select 1;
if(life_bail_paid) exitWith {};
if(isNil {life_bail_amount}) then {life_bail_amount = 3500;};
if(!isNil "life_canpay_bail") exitWith {hint "you need to wait at least 3 minutes to pay the bail."};
if(life_atmcash < life_bail_amount) exitWith {hint format["you have no $%1, to the deposit to pay.",life_bail_amount];};

life_atmcash = life_atmcash - life_bail_amount;
life_bail_paid = true;
[[0,format["%1 has paid the bail!", name _unit]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;