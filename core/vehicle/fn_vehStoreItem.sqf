#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_vehStoreItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used in the vehicle trunk menu, stores the selected item and puts it in the vehicles virtual inventory
	if the vehicle has room for the item.
*/
private["_ctrl","_num","_totalWeight","_itemWeight","_veh_data","_inv","_index","_val"];
disableSerialization;

_ctrl = ctrlSelData(3503);
_num = ctrlText 3506;
if(!([_num] call fnc_isnumber)) exitWith {hint "Wrong number format!";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "You can enter anything under 1.";};

_totalWeight = [life_trunk_vehicle] call life_fnc_vehicleWeight;
_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
_veh_data = life_trunk_vehicle getVariable ["Trunk",[[],0]];
_inv = _veh_data select 0;

if(_ctrl == "money") then
{
	_index = [_ctrl,_inv] call fnc_index;
	if(life_cash < _num) exitWith {hint "You have not so much money with you to stow it in the vehicle."};
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	life_cash = life_cash - _num;
	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
}
	else
{
	if(((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint "The vehicle is either full or can bear not so much."};

	if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Items could not be removed from the inventory to store it in the car.";};
	_index = [_ctrl,_inv] call fnc_index;
	if(_index == -1) then
	{
		_inv set[count _inv,[_ctrl,_num]];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
};
