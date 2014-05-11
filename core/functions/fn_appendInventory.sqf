/*




	Append inventory of life_inventory variable



*/

private ["_item", "_count","_longname","_life_inventory"];

hintSilent "Loading inventory ...";

{
	_item = _x select 0;
	_count = _x select 1;
	_longname = [_item, 0] call life_fnc_varHandle;
	
	//missionNamespace setVariable [_longname, _count];
	
	//Use internal function of ALTIS Life
	[true, _item, _count] call life_fnc_handleInv;
}
foreach life_inventory;

hintSilent "Inventory loaded";