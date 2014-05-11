private["_uid","_name","_time","_reason","_msg"];

_uid = _this select 0;
_name = _this select 1;
_time = _this select 2;
_reason = _this select 3;

if((getPlayerUID player) != _uid) exitWith
{
	[[0,format["DBBAN >>> Some players '%1' tried to ban! Hack! <<<", name player]],"life_fnc_broadcast" ] call life_fnc_MP;
};

_msg = format["You have been banned from this server (reason: %1). Complaints TS: 198.204.226.98", _reason];

[[0,format["DBBAN >>> Player banned %1 (%2). <<<", name player, _reason]],"life_fnc_broadcast" ] call life_fnc_MP;

while { true } do 
{
	life_action_inUse = true;
	disableUserInput true;
	
	
	cutText[_msg,"BLACK FADED"];0 cutFadeOut 9999999;

	sleep 4;
};