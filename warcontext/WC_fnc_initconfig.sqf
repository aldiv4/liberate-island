	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// WARCONTEXT - Description: init configuration file
	// -----------------------------------------------
	if (!isServer) exitWith{};
		
	// friendly side : resistance, east, west
	wcside 		= west;
	
	// enemy side
	wcenemyside	= east;

	// limit of playable map
	wcmaptopright 	= [9000, 7300];
	wcmapbottomleft = [1800, 1500];

	// INFANTERY OPPOSITION
	switch (paramsArray select 0) do {
		case 1: {wclevel = 1; };
		case 2: {wclevel = 2; };
		case 3: {wclevel = 3; };
		case 4: {wclevel = 4; };
		case 5: {wclevel = 5; };
		case 6: {wclevel = 6; };
		case 7: {wclevel = 7; };
		case 8: {wclevel = 8; };
		case 9: {wclevel = 9; };
		case 10: {wclevel = 10; };
		case 11: {wclevel = 11; };
		case 12: {wclevel = 12; };
		case 13: {wclevel = 13; };
		case 14: {wclevel = 14; };
		case 15: {wclevel = 15; };
		default {wclevel = 1; };
	};

	// IA skill
	wcskill = 0.38;
	wcskill = wcskill + (wclevel * 0.02);

	wcdistance = 200 + (wclevel * 50);

	// AIRFORCE OPPOSITION
	switch (paramsArray select 1) do {
		case 0: {
			wcenemyair = [];
			};
		case 1: {
			wcenemyair = ["Mi17_rockets_RU", "Mi24_V"];
			};
		case 2: {
			wcenemyair = ["Mi17_rockets_RU", "Ka52", "Mi24_V"];
			};
		case 3: {
			wcenemyair = ["Mi17_rockets_RU", "Mi17_rockets_RU", "Ka52", "Mi24_V", "Su34"];
			};
		case 4: {
			wcenemyair = ["Mi17_rockets_RU", "Mi17_rockets_RU", "Mi17_rockets_RU", "Ka52", "Ka52", "Mi24_V", "Mi24_V", "Su34", "Su39"];
			};
		case 5: {
			wcenemyair = ["Mi17_rockets_RU", "Mi17_rockets_RU", "Mi17_rockets_RU", "Mi17_rockets_RU", "Mi24_V", "Mi24_V", "Su34","Su34","Su34","Su34", "Su39","Su39"];
			};
		case 6: {
			wcenemyair = ["Mi17_rockets_RU", "Mi17_rockets_RU", "Mi17_rockets_RU", "Mi17_rockets_RU", "Su34","Su34","Su34","Su34","Su34","Su34","Su34","Su34","Su39","Su39","Su39","Su39"];
			};
		default {wcenemyair = ["Mi17_rockets_RU", "Ka52", "Mi24_V"];};
	};

	//  ILLIMITED ENEMY AIR
	switch (paramsArray select 2) do {
		case 0: { wcillimitedenemyair = false; };
		case 1: { wcillimitedenemyair = true; };
		default	{ wcillimitedenemyair = true; };
	};

	//  FAST TIME
	switch (paramsArray select 3) do {
		case 0: { wcfasttime = false; };
		case 1: { wcfasttime = true; };
		default	{ wcfasttime = true; };
	};

	//  GRASS LAYER
	switch (paramsArray select 4) do {
		case 0: { wcwithgrass = false; };
		case 1: { wcwithgrass = true; };
		default	{ wcwithgrass = false; };
	};

	//  PLASTIC TEXTURES
	switch (paramsArray select 5) do {
		case 0: { wcplastic = false; };
		case 1: { wcplastic = true; };
		default	{ wcplastic = false; };
	};

	// FRIEND LIST FOR PROTECT
	wcfriendlist = [
	            "=[A*C]= Snake Shit_^",
	            "=[A*C]= DonovaN",
	            "=[A*C]= Papy",
	            "=[A*C]= Néréflo",
	            "=[A*C]= Koss",
	            "=[A*C]= Schnitzer",
	            "=[A*C]= Zark",
	            "=[A*C]= code34",
	            "=[A*C]= Z",
	            "=[A*C]= Geb Green GG",
	            "=[A*C]= Bogdard",
	            "=[A*C]= G-KAR.71RG",
	            "=[A*C]= ToMaSi",
	            "=[A*C]= manukat",
	            "=[A*C]= Sunshine",
	            "=[A*C]= D-Styles",
	            "=[A*C]= Lueti",
	            "=[A*C]= D-joy",
	            "=[A*C]= HancocK",
	            "=[A*C]= M@T",
	            "=[A*C]= vautour",
	            "=[A*C]= JP"
	          
	];

	// debug for warcontext 
	wcdebug	= false;

	// copy debug to clipboard output
	wcdebugcopytoclipboard = true;	

	// if set start at this position
	// wcdebugstartposition	= [7000, 7000,0];

	// size of dynamic zone generation. At 1500 of zone IA will begin to generate 
	wctriggersize 	= 4000;

	// time in secondes before to garbage dead body
	wctimetogarbagedeadbody = 120;

	// maximun of enemy on map
	wcmaxenemyonmap = 1000;

	// number of civil killed
	wccivilkilled = 0;

	// initialise the group counter
	wcgroupcounteast = 0;
	wcgroupcountwest = 0;

	// initialise the index composition
	wccomposition = 0;

	// initialise index ambiant
	wcambiantindex = 0;

	// Index markeur merlin
	wcmerlinmrk = 0;

	// init hospital
	wchospitalW = objNull;
	wchospitalE = objNull;

	// init ammoboxindex
	wcammoboxindex = 0;

	// init radar
	wcradarW = objNull;
	wcradarE = objNull;

	// init radio
	wcradioW = objNull;
	wcradioE = objNull;

	// init ammox box position
	wcammoboxpositionE = objNull;
	wcammoboxpositionW = objNull;

	// initialize engine - dont edit
	//wcinitialised = false;

	// contains all the groups
	wcgroups = [];

	// contains all markers
	wcarraymarker = [];
	wcambiantmarker = [];

	// contains all town locations
	wctownlocations = [];
	wctownlocationsneartarget = [];

	// contains all markers position ammobox
	wcarrayammoboxpositionW = [];
	wcarrayammoboxpositionE = [];

	// contains all wrecks, fortifications
	wctownsalvation = [];

	// contains all units, and vehicles enemy
	wceunits = [];
	wcvehicles = [];
	wcambiantlife = [];

	// init paradrop
	wcparadropcurrently = 0;

	// ending game
	wcgameend = false;

	// score send to player
	wcscore = 0;
	wcscoreW = 0;
	wcscoreE = 0;

	// score initialisation
	wcscoreT = 0;
	wcglobalscore = 0;

	// publication
	publicvariable "wcgameend";
	publicvariable "wctimemax";
	publicvariable "wcscoreT";
	publicvariable "wcglobalscore";

	true;