/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
If(life_cash < 450) exitWith {hint "you need $50!"};
titleText ["the really trustworthy doctor Mabuse will treat you...", "PLAIN"];
sleep 2;
titleText ["I goog cough... look in the medicine program...", "PLAIN"];
sleep 5;
titleText ["it worked! [I'm not incapable yet!","PLAIN"];
sleep 2;
If(player distance (_this select 0) > 5) exitWith {titleText ["you need to stay close to the doctor.", "PLAIN"]};
titleText ["you are healed now!", "PLAIN"];
Player setdamage 0;
life_cash = life_cash - 450;