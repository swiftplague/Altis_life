/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Deleting it soon enough....
*/
private["_index","_veh","_color","_price","_sp","_kill","_dir","_name","_sv","_fed","_double"];
_kill = false;
_double = false;
switch(life_veh_shop) do
{
	//##33
	case "civ_adac":
	{
		_sp = getMarkerPos "civ_adac_car_spawn";
		_dir = markerDir "civ_adac_car_spawn";
	};
	
	case "civ_adac_air":
	{
		_sp = getMarkerPos "civ_adac_air";
		_dir = markerDir "civ_adac_air";
	};

	case "civ_car_1":
	{
		_sp = getMarkerPos "civ_car_1";
		_dir = markerDir "civ_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_car_1_1";
			_dir = markerDir "civ_car_1_1";
		};
	};
	
	case "donator_1":
	{
		_sp = getMarkerPos "donator_1";
		_dir = markerDir "donator_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "donator_1_1";
			_dir = markerDir "donator_1_1";
		};
	};
	
	case "donator_2":
	{
		_sp = getMarkerPos "donator_2";
		_dir = markerDir "donator_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],5]) > 0) then 
		{
			_sp = getMarkerPos "donator_2_1";
			_dir = markerDir "donator_2_1";
		};
	};
	
	case "civ_car_2":
	{
		_sp = getMarkerPos "civ_car_2";
		_dir = markerDir "civ_car_2";
	};
	
	case "civ_car_3":
	{
		_sp = getMarkerPos "civ_car_3";
		_dir = markerDir "civ_car_3";
	};
	
	case "civ_car_4":
	{
		_sp = getMarkerPos "civ_car_4";
		_dir = markerDir "civ_car_4";
	};
	
	case "civ_servt_1":
	{
		_sp = getMarkerPos "civ_servt_1";
		_dir = markerDir "civ_servt_1";
	};
	
	case "cop_car_1":
	{
		_sp = getMarkerPos "cop_car_1";
		_dir = markerDir "cop_car_1";
	};
	
	case "cop_car_2":
	{
		_sp = getMarkerPos "cop_car_2";
		_dir = markerDir "cop_car_2";
	};
	
	case "cop_car_3":
	{
		_sp = getMarkerPos "cop_car_3";
		_dir = markerDir "cop_car_3";
	};
	
	case "cop_car_5":
	{
		_sp = getMarkerPos "cop_car_5";
		_dir = markerDir "cop_car_5";
	};
	
	case "cop_car_6":
	{
		_sp = getMarkerPos "cop_car_6";
		_dir = markerDir "cop_car_6";
	};
	
	case "cop_car_7":
	{
		_sp = getMarkerPos "cop_car_7";
		_dir = markerDir "cop_car_7";
	};
	
	case "cop_car_8":
	{
		_sp = getMarkerPos "cop_car_8";
		_dir = markerDir "cop_car_8";
	};
	
	case "fed_car":
	{
		_sp = getMarkerPos "fed_car_1";
		_dir = markerDir "fed_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "A vehicle is on the spawn."};
	};
	
	case "fed_air":
	{
		_sp = getMarkerPos "fed_air_1";
		_dir = markerDir "fed_air_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "A vehicle is on the spawn."};
	};
	
	case "civ_ship_1":
	{
		//if(!license_civ_boat) exitWith {_kill = true;};
		_sp = getMarkerPos "civ_ship_1";
		_dir = markerDir "civ_ship_1";	
	};
	
	case "civ_ship_2":
	{
		_sp = getMarkerPos "civ_ship_2";
		_dir = markerDir "civ_ship_2";
	};
	
	case "civ_ship_3":
	{
		_sp = getMarkerPos "civ_ship_3";
		_dir = markerDir "civ_ship_3";
	};
	
	case "civ_air_1":
	{
		_sp = getMarkerPos "civ_air_1";
		_dir = markerDir "civ_air_1";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_air_1_2";
			_dir = markerDir "civ_air_1_2";
		};
	};
	
	case "civ_air_2":
	{
		_sp = getMarkerPos "civ_air_2";
		_dir = markerDir "civ_air_2";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then 
		{
			_sp = getMarkerPos "civ_car_2_2";
			_dir = markerDir "civ_car_2_2";
		};
	};
	
	case "civ_air_3":
	{
		_sp = getMarkerPos "civ_air_3";
		_dir = markerDir "civ_air_3";
	};
	
	case "civ_truck_1":
	{
		_sp = getMarkerPos "civ_truck_1";
		_dir = markerDir "civ_truck_1";
	};
	
	case "civ_truck_2":
	{
		_sp = getMarkerPos "civ_truck_2";
		_dir = markerDir "civ_truck_2";
		
		if(count(nearestObjects[_sp,["Car","Ship","Air"],3]) > 0) then 
		{
			_sp = getMarkerPos "civ_truck_2_1";
			_dir = markerDir "civ_truck_2_1";
		};
	};
	
	case "cop_air_1":
	{
		_sp = getMarkerPos "cop_air_1";
		_dir = markerDir "cop_air_1";
	};
	
	case "cop_air_2":
	{
		_sp = getMarkerPos "cop_air_2";
		_dir = markerDir "cop_air_2";
	};
	
	case "cop_air_3":
	{
		_sp = getMarkerPos "cop_air_3";
		_dir = markerDir "cop_air_3";
	};
	
		case "cop_air_3_1":
	{
		_sp = getMarkerPos "cop_air_3_1";
		_dir = markerDir "cop_air_3_1";
	};
	
	case "cop_air_4":
	{
		_sp = getMarkerPos "cop_air_4";
		_dir = markerDir "cop_air_4";
	};
	
	case "cop_air_5":
	{
		_sp = getMarkerPos "cop_air_5";
		_dir = markerDir "cop_air_5";
	};
	
	case "cop_air_7":
	{
		_sp = getMarkerPos "cop_air_7";
		_dir = markerDir "cop_air_7";
	};
	
	case "cop_air_9":
	{
		_sp = getMarkerPos "cop_air_9";
		_dir = markerDir "cop_air_9";
	};
		
	case "reb_v_1":
	{
		_sp = getMarkerPos "reb_v_1";
		_dir = markerDir "reb_v_1";
	};
	
	case "reb_v_2":
	{
		_sp = getMarkerPos "reb_v_2";
		_dir = markerDir "reb_v_2";
	};
	
	case "cop_ship_1":
	{
		_sp = getMarkerPos "cop_ship_1";
		_dir = markerDir "cop_ship_1";
	};
	
	case "cop_ship_2":
	{
		_sp = getMarkerPos "cop_ship_2";
		_dir = markerDir "cop_ship_2";
	};
	
	case "donator_heli":
	{
		_sp = getMarkerPos "donator_heli";
		_dir = markerDir "donator_heli";
	};
	
	case "donator_car":
	{
		_sp = getMarkerPos "donator_car";
		_dir = markerDir "donator_car";
	};
	
	case "donator_all":
	{
		_sp = getMarkerPos "donator_All_Fahrzeug_Spawn";
		_dir = markerDir "donator_All_Fahrzeug_Spawn";
	};
};
_index = lbCurSel 2302;
_veh = lbData[2302,_index];

if(!([_veh] call life_fnc_vehShopLicenses) && _veh != "B_MRAP_01_hmg_F") exitWith {hint "You have not the required license!"};


_color = lbValue[2303,(lbCurSel 2303)];
_price = lbValue[2302,(lbCurSel 2302)];

//if invalid, search for price in main config ##111
if(_price < 0) then
{	
	systemChat format ["Looking for %1 in main config!", _veh ];
	
	{
		if( _veh == ( _x select 0) ) exitWith
		{
			_price = (_x select 2);
			systemChat format ["Price found: %1", [_price] call life_fnc_numberText ];
		};
	}
	foreach life_vehicle_config_new;
};

if(_price < 0) exitWith {hint "Invalid price";};
if(_price == 0) exitWith{hint "Purchase canceled! Price is $0!";};


if(life_cash < _price) exitWith {hint "You do not have enough money."};
hint "Can a two seconds...";
sleep floor(random 3);

if(count(nearestObjects[_sp,["Car","Ship","Air"],4]) > 0) exitWith {hint "A vehicle is on the spawn point."};

_sv = false;

if(_veh == "serv_truck") then
{
	_name = "ADAC-Truck";
	_veh = "C_Offroad_01_F";
	_sv = true;
}
	else
{
	_name = getText(configFile >> "CfgVehicles" >> _veh >> "displayName");
};
hint format["You have bought a %1 for $%2.",_name,[_price] call life_fnc_numberText];
_vehicle = _veh createVehicle _sp;
_vehicle setVectorUp (surfaceNormal _sp);
if(_veh == "B_MRAP_01_hmg_F") then
{
	_vehicle disableTIEquipment true;
};
_vehicle setPos _sp;
_vehicle setDir _dir;
_vehicle setVariable["trunk_in_use",false,true];
[_vehicle] call life_fnc_clearVehicleAmmo;

if(_sv) then
{
	[_vehicle,"service_truck",true] call life_fnc_vehicleAnimate;
	_color = 4;
};

_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,name player]],true];

if(_veh in ["B_MRAP_01_F","C_SUV_01_F"] && playerSide == west) then {
	_vehicle setVariable["lights",false,true];
};

life_vehicles set[count life_vehicles,_vehicle];
life_cash = life_cash - _price;

if(playerSide == west) then
{
	if(_veh == "C_Offroad_01_F") then
	{
		[_vehicle,"cop_offroad",true] call life_fnc_vehicleAnimate;
	};
};

[[_vehicle,_color],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;

_vehicle lock 2;
if((life_veh_shop == "civ_air_1" OR life_veh_shop == "civ_air_2") && (typeOf _vehicle == "B_Heli_Light_01_F")) then
{
	[_vehicle,"civ_littlebird",true] call life_fnc_vehicleAnimate;
};

[_vehicle] call life_fnc_vehicleAfterSpawn; //Cleanups, ...

[1,false] call life_fnc_sessionHandle;

//Add notation
titleText ["Note: You have just rented the vehicle and can not Park it in the garage.", "PLAIN"];
