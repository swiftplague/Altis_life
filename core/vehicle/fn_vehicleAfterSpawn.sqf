/*

	Vehicle after spawn

*/

private["_veh","_classname"];

_veh = _this select 0;
_classname = typeOf _veh;

switch (_classname) do 
{
	case "I_Heli_Light_01_F":
	{
		//Remove ammo
		 _veh setVehicleAmmo 1;
		 
		 systemChat "Rockets have been removed.";
	};
	
	case "O_Heli_Light_02_F":
	{
		//Remove ammo
		 _veh setVehicleAmmo 1;
		 
		 systemChat "Rockets have been removed.";
	};
	
	case "B_Heli_Transport_01_F":
	{
		//Remove ammo
		 _veh setVehicleAmmo 1;
		 
		 systemChat "Minigunmunition has been removed.";
	};
};
