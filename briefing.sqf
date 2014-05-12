waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};


player createDiarySubject ["Policejobs","Police jobs"];
player createDiarySubject ["NONPAYMENT","Failure to pay"];
player createDiarySubject ["Disagrements","Disagrements"];
player createDiarySubject ["Deputization","Deputization"];
player createDiarySubject ["Dick","No Dick Rule"];
player createDiarySubject ["provenguilty","Proven Guilty"];
player createDiarySubject ["Boarder","Boarder Crossing"];
player createDiarySubject ["requesting","coms between sides"];
player createDiarySubject ["bystander","Bystanders"];
player createDiarySubject ["birddown","New AA weapons"];
player createDiarySubject ["actionkey","Set action button"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Key rules"];
player createDiarySubject ["policerules","Police procedures"];
player createDiarySubject ["safezones","Safezones"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal activities"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["fine","Fine"];
player createDiarySubject ["controls","Control"];
player createDiarySubject ["saves","What is stored"];
player createDiarySubject ["house","House system"];

/*  Example
	player createDiaryRecord["", //Container
		[
			"", //Subsection
			"
				TEXT HERE<br/><br/>
			"
		]
	];
*/

	player createDiaryRecord["Policejobs",
		[
			"Police jobs",
			"
				Police raids can be done on drug storage facilities for a profit. These areas will allow for police to make money during slow times.<br/><br/>
						- police will have access to a union rep at the aac airfield.<br/><br/>
						- A polive evidence locker is available at the highway boarder patrol.<br/><br/> 
						- police can not sell or buy from criminals .<br/><br/>
			
				Citizens who find vehicles with illegal drugs in them can bring them to the boarder for a finders fee.<br/><br/>
					- finders fee will be equal to 25% of the legal reward value the police officer gets for confuscating the illegal items.<br/><br/>
					- The legal value is the final cost from the reward center.<br/><br/>
					- anyone found abusing this new feature can have there characters wiped.<br/><br/>
			
				please report any glitches or exploits to an admin asap.<br/><br/>
			"
		]
	];

	player createDiaryRecord["Disagrements",
		[
			"Disagrements: arguments",
			"
				If a Player has a dispute with another player please dispute it in a private teamspeak channel after the engagement and be civilized<br/><br/>
					-Admins between admins bring a non hostile admin to referee the situation..<br/><br/>
					-Players bring an admin or third party to referee the situation.<br/><br/>
					
				If the situation is unable to be resolved log out respectfully and go calm down and come back with a clean bill and try again later. Cooler minds prevail..<br/><br/>
			"
		]
	];


	player createDiaryRecord["requesting",
		[
			"Communicating with opposite team",
			"
				order a citizen to pull over should be done via teamspeak or global chat first<br/><br/>
				
				  - Opening fire on a citizen should be announced before hand and only as last resort.<br/><br/>
				  
				  - Use global or teamspeak to ask a citizen to pull over or raise hands first.<br/><br/>
				  
				  - Firing on a citizen without stating yourself and purpose is falls under dickhead move and abuse of power. unless one of the following happens any of following allow till new life rule.<br/><br/>
				  		  - fired upon first.<br/><br/>
						  - fires on civilian.<br/><br/>
						  - fires on another officer.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["requesting",
		[
			"Communicating with opposite team",
			"
				order a citizen to pull over should be done via teamspeak or global chat first<br/><br/>
				
				  - Opening fire on a citizen should be announced before hand and only as last resort.<br/><br/>
				  
				  - Use global or teamspeak to ask a citizen to pull over or raise hands first.<br/><br/>
				  
				  - Firing on a citizen without stating yourself and purpose is falls under dickhead move and abuse of power. unless one of the following happens any of following allow till new life rule.<br/><br/>
				  		  - fired upon first.<br/><br/>
						  - fires on civilian.<br/><br/>
						  - fires on another officer.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["Deputization",
		[
			"Deputization",
			"
				While assisting police a citizen is considered a deputy.<br/><br/>
				
				  - A deputy is given a get out of jail and fine free card while helping the police.<br/><br/>
				  
				  - While deputized a citizen can not kill or try to kill another player unless under police orders to kill the criminal or in self defense.<br/><br/>
				  
				  - The deputization of citizens can only be done under specific requirments.<br/><br/>
				  		  -I.E no cops in vicinity to help.<br/><br/>
						  - No vehicle or transport available.<br/><br/>
						  - If under duress.<br/><br/>
				  
				  - Deputization only lasts till one of the following happens.<br/><br/>
						- death
						- log Out
						- reason for deputization is finished
						- jail time.
						- first of any of these ends the deputization
				  - Any player with outstanding crimes can not be deputized.<br/><br/>
			"
		]
	];
	
	
	player createDiaryRecord["Dick",
		[
			"No Dick Rule",
			"
				No player police or citizen is allowed to be a dick.<br/><br/>
				
				  Any Player found being a dick will be banned or kicked depending on severity.<br/><br/>
				  
				  - No Harrassing people on the server this counts as being a dick.<br/><br/>
				  
				  - No Abuse of power.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["bystander",
		[
			"by-standers",
			"
				Any citizen caught in the cross fire of police and criminals should be compensated for damages to the best extent of the police.<br/><br/>
				
				  Bystanders and there vehicles are not to be shot at by cops unless no other means possible.<br/><br/>
				  
				  - Any damage to a civilian bystander is considered a violation and all damages to be compensated by the officer involved.<br/><br/>
				  
				  If the officer can not comply the (chief of police) and police department.<br/><br/>
				  
						- the officer will be demoted in rank if possible or kicked from the force i.e rank zero.<br/><br/>
						
						- The police chief and fellow officers will repay the fine if fellow officer can not pay it.<br/><br/>
			"
		]
	];	
	
	player createDiaryRecord["Boarder",
		[
			"Boarder Crossing",
			"
				Failure to adhere to police commands and requests is punishable by death while in this zone.<br/><br/>
				
				- Citizens are required to lay prone while being searched and questioned at the boarder until released.<br/><br/>
				
				  - Citizens are required to stay 10+ meters from a cop unless laying prone and being searched.<br/><br/>
				  
				  - Citizens are required to adhere to any commands by the police while in the boarder zone.<br/><br/>
				  
				  - If police have to leave to deal with an emergency you are required to sit still and wait for officers to return failure to do so is a 15 minute jail time or a $50,000 fine.<br/><br/>
				  
				  - if in a chopper or boat please follow the coast guard to the nearest police checkpoint and adhere to standard procedures.<br/><br/>
				  
				  - Players are required to announce when they enter or exit the boarder zone, failure to announce yourselfs presents yourself as hostile and can be shot on sight without warning.<br/><br/>
				  
				  -Any player killed by miscommunication is to be reconciled by police full extent and police officer who commited the offence is to donate $50,000 to the victim.<br/><br/>
						- failure to reconcile will result in a blacklisting of officer for 1 week.<br/><br/>
			"
		]
	];

	player createDiaryRecord["provenguilty",
		[
			"proven guilty",
			"
				Any citizen's crimes have to be proven before any sentence or can be given.<br/><br/>
				
				  - Proving a crime.<br/><br/>
						- Visually seeing a crime being commited.<br/><br/>
						- Information passed by informents has to be proven by factual evidence.<br/><br/>
						- No crime has been commited without proof.<br/><br/>
						- Issueing false sentences and or tickets will result in blacklist from police rank higher then recruit for 1 week.<br/><br/>
			"
		]
	];

	player createDiaryRecord["NONPAYMENT",
		[
			"Failure to pay",
			"
				officers can re-ticket offenders after jail time for non payment. These re-ticketed offenses can not carry the full fine's cost but a portion failure to pay will result in more jail time.<br/><br/>
				
				  - Failure to pay first time reticket for 80% of initial fine and add 10 minutes to jail time upto 60 minutes.<br/><br/>
				  
				  - Failure to pay first time reticket for 60% of initial fine and add 10 minutes to jail time upto 60 minutes.<br/><br/>
				  
				  - Failure to pay first time reticket for 40% of initial fine and add 10 minutes to jail time upto 60 minutes.<br/><br/>
				  
				  - Failure to pay first time reticket for 20% of initial fine and add 10 minutes to jail time upto 60 minutes.<br/><br/>
				  
				  -When rejailing a criminal include the initial time plus the added time for total rejail time to pay off the fine.<br/><br/>
			"
		]
	];

	player createDiaryRecord["birddown",
		[
			"BD MKI and MKII",
			"
				<img image='images\BLWC_small.paa' width='256' height='128'/><img image='images\police_gold.paa' width='256' height='256'/>.<br/><br/>
				
				The Altis police department proudly announces a partnership with the Altis Defense Corp..<br/><br/>
				
				(BLWC): our units are now state of the art weapons to combat crime, the aircraft involved, available!.<br/><br/>
				
				<t size='1.2'>--- BD 'Bird Down' Mark I 'Fuel Killer' ---<t/>.<br/><br/>
				
				This high precision gun works on the basis of high-performance curing materials transported with the help of a computer-aided and precise shot into the tank of the target aircraft.<br/><br/>
				
				These substances cause that most of the tank to turn into gelaten based mass and no longer be fuel. This method is usually not fatal.<br/><br/>
				
				Note: Because the weapon on the underside of the aircraft, accommodated to enable 360-degree all-round visibility on the horizontal, the attacking helicopter must be higher or at the same height as the destination!.<br/><br/>
				
				<t size='1.2'>--- BD 'Bird Down' Mark II 'Electrostatic' ---<t/><br/><br/>
				
				The BD MKII is the modified version of the BD MKI, optimized for immediate switching-off of the target aircraft.<br/><br/>
				
				Similar as with the BD MKI a State of the art special projectile on the target is fired, that however completely paralysing the goal with this weapon by a high-power micro EMP module, by all electronic components are permanently destroyed.<br/><br/>
				
				Due to the higher weight of the micro EMP missiles, the attacker must be significantly closer to the target vehicle and wait until the target calibration is completed.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["actionkey",
		[
			"Set action button",
			"
				For actions such as the need to lift up, players tie or tow vehicles, you now press the action button 10.<br/><br/>
				
				Set the key: Under configuration controls; Custom Controls  Set Action key 10.<br/><br/>
				
				Left CTRL is recommended, you can use another button too.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Changelog",
			"
				Our Server evolves all the time to improve your gaming experience:.<br/><br/>
				
				+ Added a shooting range where everyone can train.<br/><br/>
				
				+ Cops can buy cars now also in civilian colors.<br/><br/>
				
				+ More improvements in balancing.<br/><br/>
				
				+ You can buy packed a first-aid kit, you can safely store your home or car.<br/><br/>
				
				+ Is stored in your inventory (Y menu).<br/><br/>
				
				+ Improved balancing.<br/><br/>
				
				-Newly calculated all values.<br/><br/>
				
				+ Iron mine above left.<br/><br/>
				
				+ More prisons, where police officers can arrest people.<br/><br/>
				
				+ If you sell drugs, you get drug money you wash first have to leave..<br/><br/>
				
				-You will find the money launderer on the map.<br/><br/>
				
				-The money launderer there discount, depending on you wash makes more money from him.<br/><br/>
				
				+ Rebels can now respawn in rebel positions.<br/><br/>
				
				+ Civilians also weapons and equipment are stored.<br/><br/>
				
				+ You can buy wrapped repair kits that can be stored in the Y inventory and therefore safe in the car.<br/><br/>
				
				-Use the item to get a repair Kit/toolkit.<br/><br/>
				
				+ Newly converted from wage.<br/><br/>
				
				+ Port changes. Boats can be parked also.<br/><br/>
				
				+ Added lights and signs.<br/><br/>
				
				+ Makeover marketplace.<br/><br/>
				
				+ Improved positions of drug dealers, etc.<br/><br/>
				
				+ and much more such as bug fixes.<br/><br/>
			"
		]
	];

		player createDiaryRecord["serverrules",
		[
			"Exploits",
			"
				The following things are exploits and punished with ban:<br/><br/>
				
				1 get free on abnormal way out of jail.<br/><br/>
				
				2. suicide or disconnection during roleplay to avoid (for example: being tased, firefight, tied up, etc.) If the server log shows abnormalities you will be banned.<br/><br/>
				
				3. duplicate items or money. If someone sends you a strikingly high amount of money flag it, otherwise you are committing the danger even to be banned.<br/><br/>
				
				4. use of hacked items. If a hacker spawns items and you used it you can be banned. Log this promptly to an admin and stay away from the items.<br/><br/>
				
				5. the use of bugs that give you an advantage is prohibited.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safezones",
			"
				When blasting (also vehicle explode), Rob or kill in these zones, the player is punished with a kick/ban.<br/><br/>
				
				Vehicle spawns (shop and garage).<br/><br/>
				
				Gun shops.<br/><br/>
				
				Bank machines.<br/><br/>
				
				Police of HQs.<br/><br/>
				
				Firing range.<br/><br/>
				
				Donator shop.<br/><br/>
			"
		]
	];
				
	
	player createDiaryRecord["serverrules",
		[
			"Bannable activities",
			"
				List of things.<br/><br/>
				
				1. exploiting.<br/><br/>
				
				2. cheating.<br/><br/>
				
				3. Glitches (see exploit).<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Police interaction",
			"
				The following activities are criminal offences:.<br/><br/>
				
				1 civilians when they look in police vehicles and backpacks.<br/><br/>
				
				2. civilians may be punished if they keep track of police positions to assist criminals.<br/><br/>
				
				3. civilians or insurgents who kill police officers without RP is covered by RDM (see RDM section).<br/><br/>
				
				4. pursue or insult a police officers can have a long imprisonment.<br/><br/>
				
				5. the deliberate blocking of police officers going about their work will be punished.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Boats",
			"
				The following activities can be punished with kick/ban:.<br/><br/>
				
				1. the repeated push in boats without permission of the owner.<br/><br/>
				
				2. push in boats, where players die or are injured.<br/><br/>
				
				3. hit swimmers or divers.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Aviation",
			"
				The following activity can be punished with a kick/ban:.<br/><br/>
				
				1 intentional ramming with a helicopter in helicopters, cars, houses can be punished with a ban.<br/><br/>
				
			"
		]
	];
	
	Player createDiaryRecord ["serverrules",
		[
			"Vehicles",
			"
				The following activities can be punished with kick/ban.<br/><br/>
				
				1 hit the wanton by players(VRDM).<br/><br/>
				
				2. targeted before a vehicle have to be injured or killed.<br/><br/>
				
				3. the deliberate ramming of other vehicles to cause explosions.<br/><br/>
				
				4. steal a vehicle only to destroy it.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["serverrules",
		[
			"Communication rules",
			"
				The following activities can be punished with kick/ban.<br/><br/>
				
				1 play the music or spaming Side Chat.<br/><br/>
				
				2. the spaming in each chat channel even TeamSpeak.<br/><br/>
				
				3. police may just go in the TeamSpeak in civilian of channels. Civilians must stop only briefly in police of channels.<br/><br/>
				
				4. give police information while in police of channels.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)",
			"
				Random Deathmatching may be punished with kick/ban.<br/><br/>
				
				1 kill someone without background, RP is RDM.<br/><br/>
				
				2. to declare that you are a rebel, no RP killing is illegal.<br/><br/>
				
				3. If you are caught in the cross-fire is no RDM.<br/><br/>
				
				4 To protect yourself or other people is not, RDM is to kill someone while not in rp.<br/><br/>
				
			"
		]
	];
	
// Police Section
	player createDiaryRecord["policerules",
		["Overcoming Crises",
			"
				The overcoming of the crisis must be applied by the highest ranking police officer.(Bomb).<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"The State Bank",
			"
				1. the State Bank is an illegal area for civilians.<br/><br/>
				
				2. helicopter flying over the State Bank have to leave this prompt, otherwise they are incapacitated.<br/><br/>
				
				2. If the State Bank is raided, all available police forces must prevent the attack.<br/><br/>
				
				3. lethal force can be used, depending on the condition the robbers but should be arrested.<br/><br/>
				
				4. the police should not blindly shoot around, because innocent bystanders could be hurt.<br/><br/>
				
				5. each Zivlist that supports the predator in any white is regarded as an accomplice..<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Helicopter landings",
			"
				1 helicopters may land in cities only on these points.<br/><br/>
				
				Kavala: Port (old police station).<br/><br/>
				
				Athira: sports field.<br/><br/>
				
				Pyrgos: Fields on the outskirts of the city.<br/><br/>
				
				Sofia: Fields on the outskirts of the city.<br/><br/>
				
				Villages: any selection.<br/><br/>
				
				2. helicopter should not end up on the street.<br/><br/>
				
				3. the police may prohibit landings.<br/><br/>
				
				4. helicopters may not lower than 150 m flying over cities.<br/><br/>
				
				5. helicopter may not still hover above cities.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Illegal zones",
			"
				1 enter no illegal area without it, he is part of a RAID.<br/><br/>
				
				2. If you are following someone in an illegal area you should ask for reinforcements.<br/><br/>
				
				3. in special circumstances, police officers in illegal areas may camp.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Patroling",
			"
				1. the police should search the streets and towns/villages for abandoned vehicles and criminal activity.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Checkpoints",
			"
				Police officers should establish checkpoints in strategic areas to prevent illegal activities and to ensure the safety on the streets.<br/><br/>
				
				1. a checkpoint must be not less than 500 metres from an illegal area.<br/><br/>
				
				2. check points should be built only on roads.<br/><br/>
				
				3. check points may not be marked on the map.<br/><br/>
				
				
				Checkpoint procedure:.<br/><br/>
				
				1. the driver should stop the vehicle at a safe distance and turn off the engine.<br/><br/>
				
				2. ask the driver for other passengers and weapons.<br/><br/>
				
				3. tell the driver to get out and lower their weapons (if any), givethem here a reasonable time to the respond.<br/><br/>
				
				4. ask them where they come from and where they go..<br/><br/>5. ask them whether you can browse them.<br/><br/>
				
				6. If they allow fassel and explore them.<br/><br/>
				
				7. after the search is done, allow to get them back into the vehicle and drive away.<br/><br/>
				
				8. If something illegal is found tickets or imprisonment must be granted (depending on the offence).<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Vehicles",
			"
				1 vehicles which were parked In a parking lot and locked should be left alone.<br/><br/>
				
				2. Vehicles that are left destroyed and without a driver can be confiscated.<br/><br/>
				
				3. boats should be parked properly in the coast or in the port.<br/><br/>
				
				4. seizure is an essential part of a policeman and it keeps clean the server less laggy.<br/><br/>
				
				6. in case of doubt, you should notify the owner..<br/><br/>7 armed police vehicles should be used only in crisis situations.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Speeds",
			"
				The following speed regulations must be observed and monitored by the police.<br/><br/>
				
				Follow speed limit set by the signs They are whte with red rim circle with black text inside them.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"City Patroling",
			"
				1 police officers should patrol in Kavala, Athira, Pyrgos and Sofia.<br/><br/>
				
				2. police HQ are illegal for civilians, but not stay in the vicinity of police of HQ.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Prison and tickets",
			"
				Prison sentences should only be granted to criminals who endanger themselves or others or have incured a large amount of crimes.<br/><br/>
				
				1. If you pay your fine you are to be released.<br/><br/>
				
				2. Police are required to explain any ticket and prison sentence to the player before sentencing.<br/><br/>
				
				3. If a civilian is looking for you, you should not kill him but arrest unless there are circumstances in which the use of lethal force is due.<br/><br/>
				
				Tickets should only be granted to criminals who have violated a law.<br/><br/>
				
				1. the refusal to pay a ticket has a prison sentence resulted.<br/><br/>
				
				2. issue a ticket that does not fall within the norm of the fine catalog has the dismissal from the police service result.<br/><br/>
				
				The amount of the tickets can be looked up in the fine catalog.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Weapons",
			"
				A police officer can never provide a civilian with weapons. He does it, but he is dismissed from the police service or worse.<br/><br/>
				
				Legal weapons for civilians who have a permit are.<br/><br/>
				
				1 P07.<br/><br/>
				
				2. Rook.<br/><br/>
				
				3. ACP-C2.<br/><br/>
				
				4. Zubr.<br/><br/>
				
				5. PDW2000.<br/><br/>
				
				6 sting.<br/><br/>
				
				7 vermin.<br/><br/>
				
				All other weapons (also P07 + silencer (police weapon)) are illegal.<br/><br/>
				
				1 civilians should Holster its weapons within cities or take a pair of binoculars and rangefinder in the hand.<br/><br/>
				
				2. civilians should their weapons in hold (2 x CTRL) down outside cities nearby police officers.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"The use of non-lethal force",
			"
				The taser gun and the taser gun are the only forms of non-fatal violence.<br/><br/>
				
				1 Tasers should be used to put civilians out of action and arrest.<br/><br/>
				
				2. senseless mischievousness with the Taser can have a suspension for the episode.<br/><br/>
				
				3. use the Tasers not only to enforce their will, but observe the applicable laws.<br/><br/>
			"
		]
	];

	Player createDiaryRecord ["policerules",
		[
			"Raids/camping",
			"
				In raids, the police enter areas where suspected them of criminal activities.<br/><br/>
				
				1 raids must be conducted by a senior member of the police.<br/><br/>
				
				2. all civilians in the area of the RAID be handcuffed and searched. If anything illegal is found you have to release them.<br/><br/>
				
				3. If something illegal is found proceed with the usual procedure (prison sentence or ticket).<br/><br/>
				
				4. once the region is secure all officials must leave the place.<br/><br/>
				
				When camping, enters an area the police and waits there for criminals.<br/><br/>
				
				1 police officers may camp in the State Bank when they suspect a robbery.<br/><br/>
				
				2. police may camp in illegal areas.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"Chain of command",
			"
				The Chief of police is Sirhowah or Cybertech. The police officer with the highest rank which is online gives the commands. The refusal of a command can have a demotion, suspension or dismissal resulted.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["policerules",
		[
			"The use of lethal force",
			"
				1. the use of deadly force is allowed only when life is in danger.<br/><br/>
				
				2. senseless mischievousness with live ammunition can have a dismissal resulted.<br/><br/>
				
			"
		]
	];
	
	Player createDiaryRecord ["TeamSpeak",
		[
			"TeamSpeak rule",
			"
				1. all police officers have to be on our team peak in the police of channels. If this is not the case it may have a demotion, suspension or dismissal resulted.<br/><br/>
				
				2. Our teamspeak IP is 198.204.226.98.<br/><br/>
			"
		]
	];
	
// illegalitems section
	Player createDiaryRecord ["illegalitems",
		[
			"Rebel rules",
			"
				A rebel rises with force of arms against the Government, in this case against the police. Nevertheless, all other rules apply to them.<br/><br/>
				
				>1 resistance is no excuse for random Deathmatching.<br/><br/>
				
				2. a plausible RP should put action behind every attack.<br/><br/>
				
				3. Rebels must state an attack before hand
				   -they should announce the location within 5k meters
				   
			"
		]
	];
	
	Player createDiaryRecord ["illegalitems",
		[
			"Gang rules",
			"
				1. member of a gang is not illegal.<br/><br/>
				
				2. to be a gang area is not illegal, except when you practiced there illegal activities.<br/><br/>
				
				3. gangs can hold gang areas and control. Other gangs can this vehemence.<br/><br/>
				
				4. to declare war on a different gang of a leader must declare another global war which. In addition, the members of both gangs need to be called.<br/><br/>
				
				5. gangs may kill any bystanders or unarmed civilians.<br/><br/>
			"
		]
	];
	
Player createDiaryRecord ["illegalitems",
		[
			"Illegal vehicles",
			"
				Illegal vehicles are:.<br/><br/>
				
				1. all police vehicles.<br/><br/>
				
				2. all armored vehicles.<br/><br/>
				
				3. all armed vehicles.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["illegalitems",
		[
			"Illegal weapons",
			"
				Illegal weapons are:.<br/><br/>
				
				1. all police weapons (MX series, P07 + silencer).<br/><br/>
				
				2. K series.<br/><br/>
				
				3. TRG series.<br/><br/>
				
				4. MK 20 series.<br/><br/>
				
				5. Mk. 18 ABR.<br/><br/>
				
				6 FAHD.<br/><br/>
				
				7 Rahim.<br/><br/>
				
				8 shells.<br/><br/>
				
				9 backpack loads.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["illegalitems",
		[
			"illegalitems",
			"
				illegalitems are:.<br/><br/>
				
				1 turtles.<br/><br/>
				
				2. unprocessed cocaine and processed cocaine.<br/><br/>
				
				3. opium poppy and heroin.<br/><br/>
				
				4. marijuana and cannabis.<br/><br/>
				
				5. LSD.<br/><br/>
				
				6. handcuffs.<br/><br/>
				
				7 illegal money.<br/><br/>
				
				The possession of these items and the use is punishable by law.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Civilians:",
			"
				Weapons.<br/><br/>
				
				-With drawn weapons of the city run: $1000.<br/><br/>
				
				-Possession of prohibited weapons: seizure.<br/><br/>
				
				-Firearms within cities: $8000.<br/><br/>
				
				-Driving a stolen police vehicle: $80,000.<br/><br/>
				
				Person objects:.<br/><br/>
				
				-Causing property damage: $5000.<br/><br/>
				
				-Posing as a COP: $12,000.<br/><br/>
				
				-Shooting people: $50,000.<br/><br/>
				
				-Assault on people: $65,000.<br/><br/>
				
				-Torture of persons: 80,000 + imprisonment 8 min.<br/><br/>
				
				-The murder of a person: 100,000 + detention 30 min.<br/><br/>
				
				Serious offences:.<br/><br/>
				
				
				-The involvement of illegal roadblocks: $10,000.<br/><br/>
				
				-Trial of illegal vehicles: $50,000 + confiscation.<br/><br/>
				
				-Hostage-taking each participant: $125,000 per hostage.<br/><br/>
				
				-Bank robbery (unsuccessful): $250,000 per participant.<br/><br/>
				
				-Bank robbery (successfully) booty + $350,000.<br/><br/>
				
				Drugs:.<br/><br/>-Possession of hashish of each kind: imprisonment of 10 min.<br/><br/>
				
				-Possession of cocaine of each kind: detention 15 min.<br/><br/>
				
				-Possession of heroin each kind: detention 20 min.<br/><br/>
				
				-Possession of black money: half of the dirty money as penalty.<br/><br/>
				
				-Possession of turtles: imprisonment of 10 min.<br/><br/>
				
				-Possession of LSD: imprisonment of 10 min.<br/><br/>
				
				-rebel items.<br/><br/>
				    -Any rebel item is forfiet to state during a search.<br/><br/>
					- any rebel item is to be dismantled and a fine given.<br/><br/>
						- a fine for rebel items can not exceed 25% of the purchasable price of the item. Based on the better judgement of the officer at hand.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Water vehicles:",
			"
				-Slide boats for a reason: $3,000.<br/><br/>
				
				-Hinder floating people: $8000.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Air traffic regulations (LuftVO):",
			"
				-Tried landing in a no-fly zone: $75,000.<br/><br/>
				
				-Landing in a no-fly zone: $150,000 + confiscation.<br/><br/>
				
				-Land on a road (without prompting) $10,000.<br/><br/>
				
				-Flying without collision lights: $6000.<br/><br/>
				
				-Deliberate collision: $75,000.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Road traffic regulations (StVO):",
			"
				Offences:.<br/><br/>
				
				-Wrong turn with the vehicle: $250.<br/><br/>
				
				-Driving without a light in darkness or twilight: $550.<br/><br/>
				
				-Drive on the wrong side of the road: $1000.<br/><br/>
				
				-Drive off-road $1500.<br/><br/>
				
				-Disregard of road signs: $750.<br/><br/>
				
				-Disregard right before left: $750.<br/><br/>
				
				Offences:.<br/><br/>
				
				-Causing an accident: $5000.<br/><br/>
				
				-Accident flight: $10,000.<br/><br/>
				
				-Trial of persons: $2,500.<br/><br/>
				
				-Crossing of persons: $25,000.<br/><br/>
				
				speed transgression:.<br/><br/>
				
				-10 to 20 km/h too fast $1200).<br/><br/>
				
				-21 to 30 km/h too fast $2500.<br/><br/>
				
				-31 to 50 km/h too fast $15,000.<br/><br/>
				
				-51 or over $30,000.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Police officers:",
			"
				-Disregard police arrangement: $500.<br/><br/>
				
				-Repeated disregard for order: 2,000 + detention 3 min.<br/><br/>
				
				-Enter grounds by police: $2,000.<br/><br/>
				
				-Harassment of police officers: $2,500.<br/><br/>
				
				-Officials insult (playfully): $5000.<br/><br/>
				
				-Resistance against State power: $20,000.<br/><br/>
				
				-Attack of a police officer: $80,000.<br/><br/>
				
				-The killing of a police officer: 150,000 + detention 30 min.<br/><br/>
				
				-Carrying dirty money: confiscation.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Licenses; certificates:",
			"
				-CAR driving licence: $10,000.<br/><br/>
				
				-TRUCK driving licence: $45,000.<br/><br/>
				
				-Boat licence: $25,000.<br/><br/>
				
				-Ticket: 250.0000.<br/><br/>
				
				-Possession of weapons without a license: $100,000.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["fine",
		[
			"Theft:",
			"
				-Attempted pickpocketing: $1,500.<br/><br/>
				
				-Attempted theft of civilian vehicle: $3500 per attempt.<br/><br/>
				
				-Theft of civilian vehicle: $10,000.<br/><br/>
				
				-Attempted theft police vehicle: $10,000 per attempt.<br/><br/>
				
				-Theft police vehicle: $20,000.<br/><br/>
				
				-Driving stolen civilian: $35,000.<br/><br/>
				
				-Driving a stolen police vehicle: $80,000.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["controls",
		[
			"controls",
			"
				Y: opens player.<br/><br/>
				
				L: close up and close to cars.<br/><br/>
				
				Q: Police Siren (police only).<br/><br/>
				
				T: car trunk.<br/><br/>
				
				Left SHIFT + R: tie (police only).<br/><br/>
				
				Left SHIFT + G: turn (only civilian, to Rob).<br/><br/>
				
				Left SHIFT + L: activated blue (officer only).<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["saves",
		[
			"What exactly is stored:",
			"
				As a rule, all items are stored on our server. This means:.<br/><br/>
				
				Gear by policemen (usually works.<br/><br/>
				
				Gear by civilians (usually works.<br/><br/>
				
				Be sure to synchronize inventory (Y menu).<br/><br/>
				
				Home inventory (synchronized when you press close button).<br/><br/>
				
				Money, which was brought to the money launderer.<br/><br/>
				
				Vehicle inventory/trunk/trunk (no illegalitems because balancing!).<br/><br/>
				
				- synchronized, if you press close button.<br/><br/>
			"
		]
	];
	
	Player createDiaryRecord ["house",
		[
			"House system:",
			"
				Here, you can buy a House, if you previously bought a title deed from the license dealer friends.<br/><br/>
				
				Search for a tag with the House menu and open the home control in the scroll-down menu.<br/><br/>
				
				Owning a House has the following advantages:.<br/><br/>
				
				* You can respawn in your House.<br/><br/>
				
				* You can save any virtual items (from the Y inventory) in your House. It contains default 100 weight places.<br/><br/>
				
				* If you want more inventory space for your House, buy furniture in the furniture store and use it in the vicinity of your House.<br/><br/>
				
				* No one knows where you live, except if he is watching you or you are telling it to him.<br/><br/>
				
				* Direct access to the car garage on the home menu.<br/><br/>
				
				But be careful! The police can search through the House!.<br/><br/>
			"
		]
	];