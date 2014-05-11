/*
	Copyright © 2013 Bryan "Tonic" Boardwine, All rights reserved
	See http://armafiles.info/life/list.txt for servers that are permitted to use this code.
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
_fnc_scriptName = "Player Synchronization";
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {hint "You have already used the sync option, you can all just 5 minutes.";};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint "Because some cheaters that until MP manipulate framework, have stopped them you ATLIS life thereby to genießen.\n\nDu it can try again in a minute, if you think it is a mistake.";};

[] call life_fnc_sessionUpdate;
hint "Sync Player data.\n\nPlease wait 20 seconds before separating the connection.";
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};
	