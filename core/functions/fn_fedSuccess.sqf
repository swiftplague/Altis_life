/*
	File: fn_fedSuccess.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ugh coming up with a name for it was stupid but whatever.
	If the robbery was successful on the Federal reserve then punish
	everyone and take some money.

	Support for Bank Insurance is there.
*/
private["_funds"];
_funds = [_this,0,-1,[0]] call BIS_fnc_param;
if(_funds == -1) exitWith {};
if(!life_use_atm) exitWith {};
sleep 45;

If(_funds > life_atmcash) then
{
	hint "because the State Bank was robbed, a part of your money was lost.\n\nMaybe next time you should buy a Account insurance!";
	life_atmcash = 0;
}
	else
{
	If(life_has_insurance) then
	{
		hint "the last attack has hit the civilians there on the State Bank where's the most hurt, you got Account insurance and lost a weary penny! \n\nDu should soon an ATM looking to renew the insurance!";
		life_has_insurance = false;
	}
		else
	{
		hint format ["by the last assault on the State bench, you've got $%1 lost, next time you should buy a Account insurance! \n\nThis can by bought at the ATM!", [_funds] call life_fnc_numberText];
		life_atmcash = life_atmcash - _funds;
	};
};