/*
	Garage
*/
//CONST
private["_vehicle","_islocked","_sec"];

if( life_cash < 10000 && life_atmcash < 10000) exitWith 
{	
	hint parseText "<t color='#ff0000'>you did not have the necessary money ($10000)</t>";
};


//Action

_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith { hint "Ungültiges Fahrzeug."; };
if(player distance cursorTarget > 10) exitWith { };


//Check if vehicle is opened
_islocked = locked _vehicle;

if((alive _vehicle) && _islocked == 2) exitWith { hint parseText "<t color='#ff0000'>You have to unlock the vehicle, tow it to make.</t>"; };



if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{	
	
	
	life_action_inUse = true;
	
	
	
	//wait time
	hint "Stay in the vicinity of the vehicle.";
	
	_sec = 30 * 10;
	
	for "_i" from 0 to 30 do
	{
		sleep 10;
		
		_sec = _sec - 10;
		
		if(player distance _vehicle > 10) exitWith {hint parseText "<t color='#ff0000'>Vehicle stops towed...!</t>"; life_action_inUse = false;};
		if(!alive player) exitWith {life_action_inUse = false;};
		
		//if( _i % 5 == 0) then
		//{
			hintSilent format["The tow truck comes... Approximately %1 seconds\n\nStay in the vicinity of the vehicle", _sec];
		//};
	};
	
	if(!life_action_inUse) exitWith { hint parseText "<t color='#ff0000'>Vehicle stops towed...!</t>"; }; //canceled
	
	hint "The tow truck is the same...\n\nStay in the vicinity of the vehicle";
	
	sleep 5;	
	
	
	//Last check
	if(player distance _vehicle > 10) exitWith {hint parseText "<t color='#ff0000'>Vehicle stops towed...!</t>"; life_action_inUse = false;};
	if(!alive player) exitWith {life_action_inUse = false;};
	
	//Money
	//Remove money
	if( life_cash >= 10000 ) then
	{
			//Use main
			life_cash = life_cash - 10000;
	}
	else
	{
			//Use ATM
		if(life_atmcash >= 10000) then
		{
			life_atmcash = life_atmcash - 10000;
		};
	};
	
	//Store vehicle
	//[[_vehicle,true,player],"STS_fnc_vehicleStore",false,false] spawn life_fnc_MP;
	[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
	
	hint parseText "<t color='#00ff00'>The car was towed to, is now back in the garage.</t>";
};


life_action_inUse = false;