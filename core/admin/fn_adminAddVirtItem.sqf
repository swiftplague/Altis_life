/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name"];
if((lbCurSel 2401) == -1) exitWith {hint "You must select an item to buy it."};
_type = lbData[2401,(lbCurSel 2401)];
_amount = 1;

if(!([_amount] call fnc_isnumber)) exitWith {hint "You have specified no current number.";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "You have not enough storage space for this number!"};
_amount = _diff;

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	hint format["You gave yourself %1 %2.",_amount,_name] call life_fnc_numberText];
	[[0,format["ADMIN: %1 item has given % 2.",name player, _type]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	
	[] call life_fnc_virt_update;
};
