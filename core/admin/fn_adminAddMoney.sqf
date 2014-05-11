/**
*	addMoney(NUMBER value)
*
*/

private ["_money"];

if((call life_adminlevel) < 1) exitWith {};

_money = _this select 0;

if(_money <= 0) exitWith
{
	hint "Fehlerhafter Geldbetrag fn_adminAddMoney";
};

//Give money
life_cash = life_cash + _money;

//Hint + Infos
hint format["You Have Given $%1.", _money];
[[0,format["ADMIN: %1 has given $%2.",name player, _money]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

//Additional info
sleep 2;

hintSilent format["Current amount: $%1", [life_cash] call life_fnc_numberText];

