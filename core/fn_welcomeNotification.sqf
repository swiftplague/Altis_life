/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
/*format["Willkommen %1, lies unbedingt folgende Hinweise!",name player] hintC
[
	"Manche Aktionen kannst du nur mit einem Druck auf die Action-Taste aktivieren.",
	"Mit der Zeit werden möglichst viele Aktionen mit Maus-Scrollen und Klick dadurch ersetzt!",
	"",
	"",
	"!!! Setze daher UNBEDINGT die 'Action 10'-Taste in der Konfiguration !!!",
	"Konfigurieren > Steuerung > Indiv. Steuerung > Aktionstaste 10",
	"Am besten Strg links",
	"",
	"",
	"",
	"Beispiele für Aktionen mit Action-Taste:",
	"Fischen",
	"Sachen aufheben",
	"Mit Spieler interagieren",
	"Mit Fahrzeugen interagieren"
];*/

"" hintC parseText "<t><t size='1.5'>Welcome to The Killing Streets Altis life server!</t><br/><t color='#EE0000'>Important note:</t><br/><t>Set the Action10 key in the ARMA 3 configuration be sure to for example CTRL.</t></br><t>You can find the setting in </t><t color='#00FF00'>Configure - control - custom. Control - action button 10</t></t>";


sleep 6;

hintSilent "Note: Press H to display a small button Guide.";