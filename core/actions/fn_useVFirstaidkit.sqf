/*

Unpack a repairkit
	Gives back MAININV if no, place kit

*/

hint "first-aid kit is packed out ...";
sleep 2;

if(player canAdd "FirstAidKit") then
{
	//Add item
	["FirstAidKit",true,false,true,false] call life_fnc_handleItem;

	//Hotfix in for cop gear
	if(playerSide == west) then
	{
		[] call life_fnc_saveGear;
	};
	
	hint "Successfully unpacked.";
}
else
{

	[true,"vfirstaidkit",1] call life_fnc_handleInv;
	
	hint "First-aid kit could be not unwrapped.";
	sleep 3;
	hint "You got back the item.";
};