/*


	Konfig. für virtuelle Items


*/

private["_shortname", "_longname", "_price"];

hint "Configuring VITEMS ...";

///////////////Main Config
life_vitems = [

	//*****************************************************************
	////VIEL SPASS, MAX!!!! :D Danke Arschloch xD
	//*****************************************************************

	//Schema: CLASSNAME, VITEMNAME (wird zu vitem_<name> umgwewandelt), Echter Name, Gewicht, <true/false> illegal?, buyprice*, sellprice*, illegaler wert
	// * -1 = nicht def.
	
	//HINWEIS: VITEMNAME (2. Wert) KLEIN schreiben, keine LEERZEICHEN, möglichst kurz
	
	//Stuff

	["Range finder", "rangefinder", "Rangefinder (wrapped)", 10, false, 2000, 1000, 0],
	["ToolKit", "repairkit", "Repair Kit (packed)", 15, false, 250, 150, 0],
	["FirstAidKit", "firstaidkit", "First aid kit (packed)", 10, false, 150, 80, 0],
	['Medikit', 'medikit', "Medikit (wrapped)", 15, false, 2000, 1000, 0],
	["ItemGPS", "itemgps", 'GPS (wrapped)', 5, false, 100, 50, 0],
	["Itemwatch", "Itemwatch", "clock (wrapped)", 2, false, 100, 50, 0],
	["ItemCompass", "itemcompass", "Compass (wrapped)", 2, false, 50, 25, 0],
	["ItemMap", "itemmap", "Map (wrapped)", 2, false, 50, 25, 0],
	["Binocular", "binocular", "Binoculars (wrapped)", 10, false, 150, 80, 0],
	["NVGoggles", "nvgoggles", "Night vision device (wrapped)", 10, false, 2000, 1000, 0],
	
	//Uniformen/Kleidung
	["U_C_Poloshirt_blue", "poloshirt_blue", "Polo Shirt Blue (Wrapped)", 5, false, -1, -1, 0],
	["U_C_Poloshirt_burgundy", "poloshirt_burgundy", "Poloshirt Burgundy (Wrapped)", 5, false, -1, -1, 0],
	["U_C_Poloshirt_redwhite", "poloshirt_redwhite", "Poloshirt Red/White (Wrapped)", 5, false, -1, -1, 0],
	["U_C_Poloshirt_salmon", "poloshirt_salmon", "Poloshirt Salmon (Wrapped)", 5, false, -1, -1, 0],
	["U_C_Poloshirt_stripped", "poloshirt_stripped", "Poloshirt Striped (Wrapped)", 5, false, -1, -1, 0],
	["U_C_Poloshirt_tricolour", "poloshirt_tricolour", "Poloshirt Tri-color (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_Guerilla2_2", "guerilla2_2", "Green shirt & white pants (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_Guerilla2_1", "guerilla2_1", "Black shirt & Yellow pants (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_Guerilla3_1", "guerilla3_1", "Brown jacket & Jeans (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_Guerilla2_3", "guerilla2_3", "Grey shirt & Green pants (Wrapped)", 5, false, -1, -1, 0],
	["U_C_HunterBody_grn", "hunterbody", "Yellow Jacket & Jeans (Wrapped)", 5, false, -1, -1, 0],
	["U_OrestesBody", "orestesbody", "Gay Outfit (Wrapped)", 5, false, -1, -1, 0],
	["U_C_WorkerCoveralls", "workercoveralls", "Mechanic outfit (Wrapped)", 5, false, -1, -1, 0],
	["U_Rangemaster", "rangemaster", "Rangemaster Suit (Wrapped)", 5, false, -1, -1, 0],
	["U_B_CombatUniform_mcam_tshirt", "combatuniform", "Combat Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_B_survival_uniform", "survival_uniform", "Survival Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_B_SpecopsUniform_sgg", "specopsuniform", "Specop Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_B_Wetsuit", "Wetsuit", "Wetsuit (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_Guerilla1_1", "guerilla1_1", "Guerilla Smocks 1 (Wrapped)", 5, false, -1, -1, 0],
	["U_I_G_resistanceLeader_F", "resistanceleader", "Combat Fatigues Stavrou(Wrapped)", 5, false, -1, -1, 0],
	["U_O_SpecopsUniform_ocamo", "specopsuniform", "Recon Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_O_CombatUniform_oucamo", "combatuniform", "Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_O_PilotCoveralls", "o_pilotcoveralls", "Pilot Coveralls (Wrapped)", 5, false, -1, -1, 0],
	["U_B_PilotCoveralls", "b_pilotcoveralls", "Pilot Coveralls (Wrapped)", 5, false, -1, -1, 0],
	["U_IG_leader", "leader", "Guerilla Smocks 2 (Wrapped)", 5, false, -1, -1, 0],
	["U_I_OfficerUniform", "officeruniform", "Combat Fatigues Tee (Wrapped)", 5, false, -1, -1, 0],
	["U_O_OfficerUniform_ocamo", "officeruniform_ocamo", "Officer Fatigues (Wrapped)", 5, false, -1, -1, 0],
	["U_O_GhillieSuit", "o_ghilliesuit", "Ghillie Suit (Wrapped)", 5, false, -1, -1, 0],
	["U_B_GhillieSuit", "b_ghilliesuit", "Ghillie Suit (Wrapped)", 5, false, -1, -1, 0],
	
	//Westen
	["V_Rangemaster_belt", "rangemaster_belt", "Rangemaster Belt Green (Wrapped)", 10, false, -1, -1, 0],
	["V_PlateCarrier1_rgr", "plateCarrier1", "Carrier Lite (Wrapped)", 10, false, -1, -1, 0],
	["V_PlateCarrier3_rgr", "plateCarrier3", "Carrier Rig (Wrapped)", 10, false, -1, -1, 0],
	["V_TacVest_blk_POLICE", "tacvest_blk_police", "Tactical Vest Police (Wrapped)", 10, false, -1, -1, 0],
	["V_BandollierB_khk", "bandollierb_khk", "Slash Bandolier Khaki (Wrapped)", 10, false, -1, -1, 0],
	["V_BandollierB_cbr", "bandollierb_cbr", "Slash Bandolier Coyote (Wrapped)", 10, false, -1, -1, 0],
	["V_BandollierB_rgr", "bandollierb_rgr", "Slash Bandolier Green (Wrapped)", 10, false, -1, -1, 0],
	["V_BandollierB_blk", "bandollierb_blk", "Slash Bandolier Black (Wrapped)", 10, false, -1, -1, 0],
	["V_Chestrig_khk", "chestrig_khk", "Chest Rig Khaki (Wrapped)", 10, false, -1, -1, 0],
	["V_Chestrig_rgr", "chestrig_rgr", "Chest Rig Grün (Wrapped)", 10, false, -1, -1, 0],
	["V_Chestrig_blk", "chestrig_blk", "Chest Rig Black (Wrapped)", 10, false, -1, -1, 0],
	["V_TacVest_khk", "tacvest_khk", "Tactical Vest Khaki (Wrapped)", 10, false, -1, -1, 0],
	["V_TacVest_brn", "tacvest_brn", "Tactical Vest Brown (Wrapped)", 10, false, -1, -1, 0],
	["V_TacVest_oli", "tacvest_oli", "Tactical Vest Grün (Wrapped)", 10, false, -1, -1, 0],
	["V_TacVest_blk", "tacvest_blk", "Tactical Vest Black (Wrapped)", 10, false, -1, -1, 0],
	["V_HarnessO_brn", "harnesso", "LBV Harness (Wrapped)", 10, false, -1, -1, 0],
	["V_HarnessOGL_brn", "harnessogl", "LBV Grenadier Harness (Wrapped)", 10, false, -1, -1, 0],
	["V_PlateCarrierIA1_dgtl", "platecarrieria1", "GA Carrier Lite (Wrapped)", 10, false, -1, -1, 0],
	["V_PlateCarrierIA2_dgtl", "platecarrieria2", "GA Carrier Rig (Wrapped)", 10, false, -1, -1, 0],
	["V_PlateCarrierIAGL_dgtl", "platecarrieriagl", "GA Carrier GL Rig (Wrapped)", 10, false, -1, -1, 0],
	
	//Rucksäcke
	["B_AssaultPack_cbr", "backpack_assaultpack", "Assault Pack Coyote (Wrapped)", 15, false, -1, -1, 0],
	["B_TacticalPack_oli", "tacticalpack", "Tactical Pack Olive (Wrapped)", 15, false, -1, -1, 0],
	["B_FieldPack_ocamo", "fieldpack_ocamo", "Field Pack Hex (Wrapped)", 15, false, -1, -1, 0],
	["B_Bergen_sgg", "bergen_sgg", "Bergen MTP (Wrapped)", 15, false, -1, -1, 0],
	["B_Kitbag_cbr", "kitbag_cbr", "Kitbag Coyote (Wrapped)", 15, false, -1, -1, 0],
	["B_Kitbag_mcamo", "kitbag_mcamo", "Kitbag MTP (Wrapped)", 15, false, -1, -1, 0],
	["B_Carryall_oli", "carryall_oli", "Carryall Olive (Wrapped)", 15, false, -1, -1, 0],
	["B_Carryall_khk", "carryall_khk", "Carryall Khaki (Wrapped)", 15, false, -1, -1, 0],
	["B_Parachute", "parachute", "Parachute (Wrapped)", 15, false, -1, -1, 0],
	["B_FieldPack_cbr", "fieldpack_cbr", "Field Pack Coyote (Wrapped)", 15, false, -1, -1, 0],
	["B_Carryall_cbr", "carryall_cbr", "Carryall Coyote (Wrapped)", 15, false, -1, -1, 0],
	//Goggles
	["G_Shades_Black", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Shades_Blue", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Sport_Blackred", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Sport_Checkered", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Sport_Blackyellow", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Sport_BlackWhite", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Squares", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Aviator", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Lowprofile", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	["G_Combat", "backpack_assaultpack", "B_AssaultPack_cbr (Wrapped)", 2, false, -1, -1, 0],
	//Headgear
	
	//Keine Preise für Waffen! Sonst => BALANCE-ISSUES
	//Legale Waffen (Kein illegaler Wert)	
	["hgun_Pistol_heavy_02_F", "pistol_heavy_02_f", "Zubr .45 (Wrapped)", 20, false, -1, -1, 0],
	["hgun_P07_F", "p07", "P07 9 mm (Wrapped)", 20, false, -1, -1, 0],
	["hgun_Rook40_F", "rook40", "Rook-40 9 mm (Wrapped)", 20, false, -1, -1, 0],
	["hgun_ACPC2_F", "acpc2", "ACP-C2 .45 (Wrapped)", 20, false, -1, -1, 0],
	["hgun_PDW2000_F", "pdw2000", "PDW2000 9 mm (Wrapped)", 20, false, -1, -1, 0],
	["SMG_01_F", "smg_01", "Vermin SMG .45 ACP (Wrapped)", 20, false, -1, -1, 0],
	["SMG_02_F", "smg_02", "Sting 9 mm (Wrapped)", 20, false, -1, -1, 0],
	//Granaten (Legal)

	["Chemlight_red", "chemlight_red", "Red Chemlight (Wrapped)", 2, false, -1, -1, 0],
	["Chemlight_yellow", "chemlight_yellow", "Yellow Chemlight (Wrapped)", 2, false, -1, -1, 0],
	["Chemlight_green", "chemlight_green", "Green Chemlight (Wrapped)", 2, false, -1, -1, 0],
	["Chemlight_blue", "chemlight_blue", "Blue Chemlight (Wrapped)", 2, false, -1, -1, 0],
	
	//Illegale Waffen (Illegal true, Illegaler Wert!)
	["arifle_sdar_F", "sdar_taser", "SDAR 5.56 mm Taser (Wrapped)", 25, true, -1, -1, 15000],
	["arifle_MXC_Black_F", "mxc", "MXC 6.5 mm (Wrapped)", 30, true, -1, -1, 25000],
	["hgun_Pistol_heavy_01_F", "pistol_heavy_01_f", "4-five .45 (Wrapped)", 20, true, -1, -1, 5000],
	["arifle_MX_Black_F", "mx", "MX 6.5 mm (Wrapped)", 40, true, -1, -1, 30000],
	["arifle_MX_SW_Black_F", "mx_sw", "MX SW 6.5 mm (Wrapped)", 40, true, -1, -1, 50000],
	["arifle_MXM_Black_F", "mxm", "MXM 6.5 mm (Wrapped)", 40, true, -1, -1, 50000],
	["srifle_EBR_F", "ebr", "Mk18 ABR 7.62 mm (Wrapped)", 40, true, -1, -1, 50000],
	["launch_B_Titan_F", "titan", "Titan MPRL Launcher (Wrapped)", 50, true, -1, -1, 500000],
	["arifle_SDAR_F", "sdar_f", "SDAR 5.56 mm (Wrapped)", 25, true, -1, -1, 15000],
	["arifle_Katiba_C_F", "katiba_c", "Katiba Carbine 6.5 mm (Wrapped)", 30, true, -1, -1, 25000],
	["arifle_Katiba_F", "katiba", "Katiba 6.5 mm (Wrapped)", 40, true, -1, -1, 30000],
	["arifle_Mk20C_F", "mk20c", "Mk20C 5.56 mm (Wrapped)", 30, true, -1, -1, 25000],
	["arifle_Mk20C_plain_F", "mk20c_plain", "Mk20C 5.56 mm Camo (Wrapped)", 30, true, -1, -1, 25000],
	["arifle_Mk20_F", "mk20", "Mk20 5.56 mm (Wrapped)", 40, true, -1, -1, 30000],
	["arifle_Mk20_plain_F", "mk20_plain", "Mk20 5.56 mm Camo (Wrapped)", 40, true, -1, -1, 30000],
	["hgun_P07_snds_F", "p07_snds", "P07 9 mm snds (Wrapped)", 20, true, -1, -1, 2500],
	["srifle_DMR_01_F", "dmr", "Rahim 7.62 mm (Wrapped)", 40, true, -1, -1, 40000],
	
	//Granaten (Illegal)
	["MiniGrenade", "minigrenade", "Mini-Grenade (Wrapped)", 10, true, -1, -1, 5000],
	["HandGrenade", "handgrenade", "Hand Grenade (Wrapped)", 10, true, -1, -1, 7500],
	["SatchelCharge_Remote_Mag", "satchelcharge", "Satchel Charge (Wrapped)", 50, true, -1, -1, 25000]
];


///////////////Generated Config (WIRD GENERIERT)

life_vitems_weights = []; //[SHORTNAME, WEIGHT] ...
life_vitems_varHandle = [];
life_vitems_varToStr = [];
life_vitems_shrtToClass = [];
life_vitems_validClassNames = []; //Classnames, used in this system

///////////////Logik
{
	_longname = "life_vinv_" + (_x select 1); //Schema: life_vinv_<VITEMNAME>
	_shortname = "vitem_" + (_x select 1); //Schema: vitem_<VITEMNAME>

	//Create MAIN Items in configuration.sqf
	life_inv_items = life_inv_items + [_longname];
	//Init this var
	missionNamespace setVariable[_longname,0];
	
	//Create weight
	life_vitems_weights set [count life_vitems_weights, [_shortname, _x select 3] ];
	
	//Create varHandle shortname <-> longname
	life_vitems_varHandle set [count life_vitems_varHandle, [_shortname, _longname] ];
	
	//Create varToStr longname <-> Name
	life_vitems_varToStr set [count life_vitems_varToStr, [_longname, _x select 2] ];
	
	//Create shrtToClass shortname <-> class
	life_vitems_shrtToClass set [count life_vitems_shrtToClass, [_shortname, _x select 0] ];
	
	//Add className
	life_vitems_validClassNames set [count life_vitems_validClassNames, _x select 0];
	
	//Buy array
	_price = _x select 5;
	if(_price != -1) then
	{
		buy_array set [ count buy_array, [_shortname, _price] ];
	};
	
	//Sell array
	_price = _x select 6;
	if(_price != -1) then
	{
		sell_array set [ count sell_array, [_shortname, _price] ];
	};
	
	//Illegal value stuff
	if(_x select 4) then
	{
		_price = _x select 7;
		life_illegal_items set [count life_illegal_items, [_shortname, _price] ];
		life_illegal_item_shortnames set [ count life_illegal_item_shortnames, _shortname ];
		
		//Dont set it as cleared!!
	};
}
foreach life_vitems;

hint "Configuring VITEMS ... DONE";
