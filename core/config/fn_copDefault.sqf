/*
	File: fn_copDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default cop configuration.
*/
//Strip the player down
systemChat "Loading cop default gear.";

	RemoveAllWeapons player;
	{player removeMagazine _x;} foreach (magazines player);
	removeallweapons player;
	removeallassigneditems player;
	Removeuniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
	{
	player unassignItem _x;
	player removeItem _x;
	} foreach (assignedItems player);


//Load player with default cop gear.
player addUniform "U_Rangemaster";
player addVest "V_Rangemaster_belt";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addWeapon "hgun_P07_snds_F";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";

hintC "default gear opened";

[] call life_fnc_sessionHandle; //save gear into file