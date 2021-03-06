/*
	File: fn_gatherPeaches.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_sum"];
_sum = ["peach",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Collect peaches...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"peach",_sum] call life_fnc_handleInv)) then
	{
		//player say3D "take"; //##87
		[player,"take"] call life_fnc_globalSound;
		titleText[format["You collected %1 peaches.",_sum],"PLAIN"];
	};
}
	else
{
	hint "Inventory full.";
};

life_action_inUse = false;