/**
*	instaHealth(BOOL health, food, water)
*
*/



private ["_health", "_food", "_water"];
_health = _this select 0;
_food = _this select 1;
_water = _this select 2;

if((call life_adminlevel) < 1) exitWith {};



if(_health) then
{
	[[0,format["ADMIN: %1 has set to 100 health.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

	player setDamage 0;
	player setFatigue 0;
};

if(_food) then
{
	[[0,format["ADMIN: %1 has used hunger to 100.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

	life_hunger = 100;
	player setFatigue 0;
};

if(_water) then
{
	[[0,format["ADMIN: %1 has set thirst to 100.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	
	life_thirst = 100;
	player setFatigue 0;
};


/////////////Hints
if(_health) then
{
	hint "Health set to 100.";
	sleep 2;
};

if(_food) then
{
	hint "Hunger is set to 100.";
	sleep 2;
};

if(_water) then
{
	hint "Thirst to 100 set.";
};

