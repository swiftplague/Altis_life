/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
	        license_civ_driver = false;
	        license_civ_boat = false;
	        license_civ_air = false;
	        license_civ_gun = false;
	        license_civ_dive = false;
	        license_civ_oil = false;
	        license_cop_air = false;
	        license_cop_swat = false;
	        license_cop_cg = false;
	        license_civ_heroin = false;
	        license_civ_marijuana = false;
	        license_civ_medmarijuana = false; 
	        license_civ_gang = false;
	        license_civ_rebel = false;
	        license_civ_truck = false;
	        license_civ_diamond = false;
	        license_civ_salt = false;
	        license_civ_coke = false;
	        license_civ_sand = false;
	        license_civ_iron = false;
	        license_civ_copper = false;
	        license_civ_cement = false;
	        license_civ_moonshine = false;
	        license_civ_cherrywine = false;
	        license_civ_grapewine = false;
	        license_civ_beer = false;
	        license_civ_meth = false;
	        license_civ_home = false;
	        license_cop_home = false;
	        license_civ_gold = false;
	        license_civ_silver = false;
	        license_civ_coal = false;
	        license_civ_adac = false;
	        license_cop_sniper = false;
	        license_civ_tazer = false;
	        license_civ_event = false;
	        license_cop_event = false;
	        license_civ_viewwanted = false;
	};
	
	//Jail licenses
	case 1:
	{
	        license_civ_driver = false;
	        license_civ_boat = false;
	        license_civ_air = false;
	        license_civ_gun = false;
	        license_civ_dive = false;
	        license_civ_oil = false;
	        license_cop_air = false;
	        license_cop_swat = false;
	        license_cop_cg = false;
	        license_civ_heroin = false;
	        license_civ_marijuana = false;
	        license_civ_medmarijuana = false; 
	        license_civ_gang = false;
	        license_civ_rebel = false;
	        license_civ_truck = false;
	        license_civ_diamond = false;
	        license_civ_salt = false;
	        license_civ_coke = false;
	        license_civ_sand = false;
	        license_civ_iron = false;
	        license_civ_copper = false;
	        license_civ_cement = false;
	        license_civ_moonshine = false;
	        license_civ_cherrywine = false;
	        license_civ_grapewine = false;
	        license_civ_beer = false;
	        license_civ_meth = false;
	        license_civ_home = false;
	        license_cop_home = false;
	        license_civ_gold = false;
	        license_civ_silver = false;
	        license_civ_coal = false;
	        license_civ_adac = false;
	        license_cop_sniper = false;
	        license_civ_tazer = false;
	        license_civ_event = false;
	        license_cop_event = false;
	        license_civ_viewwanted = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
	        license_cop_air = false;
	        license_cop_swat = false;
	        license_cop_cg = false;
	        license_civ_driver = false;
	        license_civ_boat = false;
	        license_civ_air = false;
	        license_civ_gun = false;
			hint "You have lost all your motor vehicle licenses for vehicular manslaughter.";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_cop_sniper = false;
			license_civ_tazer = false;
			license_civ_gang = false;
			license_civ_rebel = false;
			license_civ_gun = false;
			hint "You have lost your firearms license for manslaughter.";
		};
	};
};