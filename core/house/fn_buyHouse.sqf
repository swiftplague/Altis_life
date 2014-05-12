/*
*
* buyHouse [house_name]
*/

private["_name", "_exdata", "_setarr", "_price", "_canbuy"];

_exdata = missionNamespace getVariable "house_current_exdata";

if(isNil "_exdata") exitWith
{
	hint "Error: exdata is NULL. Cancelling.";
};

_name = [_exdata, "name"] call life_fnc_houseExtractDataVal;
_price = [_exdata, "price"] call life_fnc_houseExtractDataVal;

//Check license
if (!license_civ_home && !license_cop_home) exitWith
{
	hint "You can buy still no House. Get a title deed for you!";
};

//Check money
_canbuy = true;
if ((life_cash - _price) < 0) then //Not enough money
{
	_canbuy = false;
	if ((life_atmcash - _price) >= 0) then //not enough money in atmcash
	{
		hint "You have not enough money!";
		_canbuy = true;
	};
};

if(_canbuy) then
{
	hint "Question database... House purchase";

	//call command
	[ [_name, player, _price] , "HOUSE_fnc_DBbuyHouse" ,false, false] call life_fnc_MP;

	//Remove money
	if (life_cash - _price < 0) then
	{
		life_atmcash = life_atmcash - _price;
	}
	else
	{
		life_cash = life_cash - _price;
	};

	[1,false] call life_fnc_sessionHandle; //update money
}
else
{
	hint "You have not enough money!";
};
