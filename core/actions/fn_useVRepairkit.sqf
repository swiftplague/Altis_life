/*

Unpack a repairkit
	Gives back MAININV if no, place kit

*/

hint "Repair Kit is packed out ...";
sleep 2;

if(player canAdd "ToolKit") then
{
	//Add item
	["ToolKit",true,false,true,false] call life_fnc_handleItem;

	//Hotfix in for cop gear
	if(playerSide == west) then
	{
		[] call life_fnc_saveGear;
	};
	
	hint "Successfully unpacked.";
}
else
{

	[true,"vrepairkit",1] call life_fnc_handleInv;
	
	hint "Repair Kit could be not unwrapped.";
	sleep 3;
	hint "You got back the item.";
};