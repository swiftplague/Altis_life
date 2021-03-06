class jail_time
{
	idd = 26500;
	name = "jail_time";
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground 
	{
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;
			text = "<t align='center' size='1.2'>Prison</t>"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 3 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 4 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = 2201;
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;
			text = "Time indicating how many minutes should be the person in jail."; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 4 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Time:"; //--- ToDo: Localize;
			x = 14 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 3 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Minutes"; //--- ToDo: Localize;
			x = 22.5 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};  
	};
	
	class controls 
	{
		class bClose: RscButtonMenu
		{
			idc = 2400;
			text = "Cancel"; //--- ToDo: Localize;
			x = 13 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick="closeDialog 0;";
		};
		class editTime: RscEdit
		{
			idc = 1400;
			text = "15"; //--- ToDo: Localize;
			x = 17 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class bOK: RscButtonMenu
		{
			idc = 2402;
			text = "OK"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 7.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick="[] spawn life_fnc_arrestDialog_Arrest;";
		};
	};
};