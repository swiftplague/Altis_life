/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;

if(_val == _total) then
{
	titleText[format["you've got the bounty ($%1) for the arrest of the criminals get.",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format["You've got the bounty ($%1) get for killing the criminals. If you should have arrested him, you'd have got $%2",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};

life_atmcash = life_atmcash + _val;