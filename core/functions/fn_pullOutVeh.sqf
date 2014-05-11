/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
*/
if((vehicle player == player)) exitWith {};
if(player getVariable ["restrained", false]) then
{
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
};

Player action ["eject", vehicle player];
titleText ["you were pulled out of the car!", "PLAIN"];
titleFadeOut 4;