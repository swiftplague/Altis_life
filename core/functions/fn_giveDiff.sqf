/*
	File: fn_giveDiff.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	??A?SD?ADS?A
*/
private["_unit","_item","_val","_from","_bool"];
_unit = _this select 0;
if(_unit != player) exitWith {};
_item = _this select 1;
_val = _this select 2;
_from = _this select 3;
_bool = if(count _this > 4) then {true} else {false};
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;

If(_BOOL) then
{
	If (([true, _item, (parseNumber _val)] call life_fnc_handleInv)) then
	{
		hint format ["You tried to type %1 %2 %3, but it could not be Stored so it was returned.", name _from, _val, _type];
	};
}
	else
{
	If (([true, _item, (parseNumber _val)] call life_fnc_handleInv)) then
	{
		hint format ["%1 again received %2 %3 because the number was not kept.", name _from, _val, _type];
	};
};