/*
	File: fn_serviceTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for the service truck.
	*Needs to be revised for new system and flow*
*/
private["_nearby"];

if((["adac"] call life_fnc_permLevel) < 1) exitWith
{
	hint "You have no ADAC license!";
};

_nearby = nearestObjects[(vehicle player),["Car","Ship","Air"],10];
if(count (_nearby) > 1) then
{
	_vehicle = _nearby select 1;
	_name = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	titleText[format["take care of %1! [Don't move...",_name],"PLAIN"];
	titleFadeOut 12;
	sleep 10;
	if((vehicle player) distance _vehicle > 10) exitWith {titleText["you could not repair the vehicle / top-up, since you removed more than 10 m from the vehicle are.","PLAIN"];};
	titleText[format["you have %1 repaired/refueled.",_name],"PLAIN"];
	if(!local _vehicle) then
	{
		[{_vehicle setFuel 1;},"BIS_fnc_spawn",_vehicle,false] spawn life_fnc_MP;
	}
		else
	{
		_vehicle setFuel 1;
	};
	_vehicle setDamage 0;
};