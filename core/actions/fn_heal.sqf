/*
	Will be revised later
*/
if((damage player) < 0.25) exitWith {}; //Damage = 75
if(!("FirstAidKit" in (items player))) exitWith {};
player removeItem "FirstAidKit";
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;
player setDamage 0.9; //Heal to 90