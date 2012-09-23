	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Client Side logic
	// -----------------------------------------------
	if (!local player) exitWith {};

	waituntil {format["%1", name player] != "Error: No unit"};
	waituntil {format ["%1",typeof player] != ''}; 
	waituntil {!isnull player};

	wcfriendlist = [
	            "=[A*C]= Snake Shit_^",
	            "=[A*C]= DonovaN",
	            "=[A*C]= Papy",
	            "=[A*C]= Nereflo",
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

	if!((local player) and (isserver)) then {
		player execVM "intro.sqf";
	};

	execVM "R3F_revive\revive_init.sqf";

	private [
		"_position", 
		"_magazines",
		"_weapons",
		"_primw",
		"_muzzles",
		"_arrayplayers"
		];

	//Init variables
	wclientinitialised = false;
	wcside = west;
	wcenemyside = east;
	wcplayerside = west;
	wcmypersonnalmissionlist = [];
	wcmypersonnalmainmissionlist = [];
	wcammoboxindex = 0;
	wcmainmissionindex = 0;
	wcatvindex = 0;
	wcconstructionkitindex = 0;
	wcammoused = 1;
	wcnumberofkill = 0;
	wcgameend = false;
	wcmissionokW = "";
	wcenemyradiohacked = false;
	wcadaptative = false;
	wchealingprotected = false;

	WC_fnc_attachmarkerlocal	= compile preprocessFile "warcontext\WC_fnc_attachmarkerlocal.sqf";
	WC_fnc_checkcoverage 		= compile preprocessFile "warcontext\WC_fnc_checkcoverage.sqf";
	WC_fnc_createbonusevent		= compile preprocessFile "warcontext\WC_fnc_createbonusevent.sqf";
	WC_fnc_createconstructionkit	= compile preprocessFile "warcontext\WC_fnc_createconstructionkit.sqf";
	WC_fnc_createatv		= compile preprocessFile "warcontext\WC_fnc_createatv.sqf";
	WC_fnc_createammobox		= compile preprocessFile "warcontext\WC_fnc_createammobox.sqf";
	WC_fnc_createparadropammobox		= compile preprocessFile "warcontext\WC_fnc_createparadropammobox.sqf";
	WC_fnc_createmarker 		= compile preprocessFile "warcontext\WC_fnc_createmarker.sqf";
	WC_fnc_createmarkerlocal	= compile preprocessFile "warcontext\WC_fnc_createmarkerlocal.sqf";
	WC_fnc_createmarkerlocalanddelete= compile preprocessFile "warcontext\WC_fnc_createmarkerlocalanddelete.sqf";
	WC_fnc_createmortar 		= compile preprocessFile "warcontext\WC_fnc_createmortar.sqf";
	WC_fnc_createradio 		= compile preprocessFile "warcontext\WC_fnc_createradio.sqf";
	WC_fnc_createradar 		= compile preprocessFile "warcontext\WC_fnc_createradar.sqf";
	WC_fnc_createtrench 		= compile preprocessFile "warcontext\WC_fnc_createtrench.sqf";
	WC_fnc_hideingrass		= compile preprocessFile "warcontext\WC_fnc_hideingrass.sqf";
	WC_fnc_paradropsmoke		= compile preprocessFile "warcontext\WC_fnc_paradropsmoke.sqf";
	WC_fnc_repairvehicle 		= compile preprocessFile "warcontext\WC_fnc_repairvehicle.sqf";
	WC_fnc_getobject		= compile preprocessFile "warcontext\WC_fnc_getobject.sqf";
	WC_fnc_followvehicle		= compile preprocessFile "warcontext\WC_fnc_followvehicle.sqf";
	WC_fnc_newfollowplayer		= compile preprocessFile "warcontext\WC_fnc_newfollowplayer.sqf";
	WC_fnc_followradar		= compile preprocessFile "warcontext\WC_fnc_followradar.sqf";
	WC_fnc_followhospital		= compile preprocessFile "warcontext\WC_fnc_followhospital.sqf";
	WC_fnc_markerhintlocal		= compile preprocessFile "warcontext\WC_fnc_markerhintlocal.sqf";
	WC_fnc_lifeslider		= compile preprocessFile "warcontext\WC_fnc_lifeslider.sqf";
	WC_fnc_paradropcargoclientside	= compile preprocessFile "warcontext\WC_fnc_paradropcargoclientside.sqf";
	call compile preprocessFile "warcontext\WC_fnc_checkspotter.sqf";

	// Trigger for menu options
	_trgmenuoption = createTrigger["EmptyDetector" , position player];
	_trgmenuoption setTriggerArea [0, 0, 0, false];
	_trgmenuoption setTriggerActivation ["NONE", "PRESENT", true];
	_trgmenuoption setTriggerTimeout [5, 5, 5, false];
	_trgmenuoption setTriggerStatements[
	"vehicle player != player", 
	"wcvehicle = vehicle player; 
	wcactionmenuoption = wcvehicle addAction ['<t color=''#dddd00''>Liberate Island</t>', 'dialog\GUI\Mainmenu.sqf',[],-1,false];", 
	"wcvehicle removeAction wcactionmenuoption;"];


	_trgparadropcrate = createTrigger["EmptyDetector" , position player];
	_trgparadropcrate setTriggerArea [0, 0, 0, false];
	_trgparadropcrate setTriggerActivation ["NONE", "PRESENT", true];
	_trgparadropcrate setTriggerStatements[
	"vehicle player != player && (vehicle player) isKindOf 'Air' && (driver (vehicle player)) == player", 
	"
	wcvehicle = vehicle player; 
	wcactionparadropsmoke = wcvehicle addAction ['<t color=''#dddd00''>Paradrop smoke</t>', 'warcontext\WC_fnc_paradropsmoke.sqf',[],0,false];
	wcactionparadrop = wcvehicle addAction ['<t color=''#dddd00''>Paradrop an Ammo crate</t>', 'warcontext\WC_fnc_paradropcrate.sqf',[],-1,false];
	", 
	"
	wcvehicle removeAction wcactionparadrop;
	wcvehicle removeAction wcactionparadropsmoke;
	"];

	sleep 10;

	// Init GUI
	player addaction ["Liberate Island","dialog\GUI\Mainmenu.sqf",[],-1,false];
	player addAction ["<t color='#dddd00'>Create Trench</t>", "warcontext\WC_fnc_createtrench.sqf",[],-1,false];

	if (typeOf player == "ACE_USMC_SoldierS_Engineer_D") then {
		player addaction ["<t color='#dddd00'>Repair Vehicle</t>","warcontext\WC_fnc_repairvehicle.sqf",[],-1,false];
	};

	player addEventHandler ['Fired', '
		wcammoused = wcammoused + 1;
	'];

	wccrate1 = [(getmarkerpos "crate1")] spawn WC_fnc_createammobox;

	"wcammoboxpositionW" addPublicVariableEventHandler {
		wcgarbage = [wcammoboxpositionW] spawn WC_fnc_createammobox;
	};

	"wcmessageW" addPublicVariableEventHandler {
		PAPABEAR=[West,"HQ"]; PAPABEAR SideChat wcmessageW;
	};

	"wcweather" addPublicVariableEventHandler {
		120 setRain (wcweather select 0);
		120 setfog (wcweather select 1);
		120 setOvercast (wcweather select 2);
	};

	"wcdate" addPublicVariableEventHandler {
		setDate wcdate;
		if (date select 4 < 9) then {
			playSound "imam";
		};
	};

	"wcbamboo" addPublicVariableEventHandler {
		playsound "bamboo";
	};

	"wcmusic" addPublicVariableEventHandler {
		playsound "mission";
		player setmimic "smile";
	};

	"wctk" addPublicVariableEventHandler {
		hintsilent format["%1 is a teamkiller !", wctk];
		playsound "clairon";
	};

	"wcrespawntobase" addPublicVariableEventHandler {
		hintsilent format["%1 has respawned to base !", wcrespawntobase];
	};

	

	// add GPS
	player addweapon "ITEMGPS";
	player addweapon "Binocular";
	player addWeapon "ACE_Earplugs";

	wcgarbage = [] spawn WC_fnc_newfollowplayer;
	wcgarbage = [] spawn WC_fnc_followvehicle;

	if(wcwithgrass) then {
		wcterraingrid = 48;
		setTerrainGrid wcterraingrid;
		wcgarbage = [] spawn WC_fnc_hideingrass;
	};

	// creation du journal sur la carte
	_diary = player createDiaryRecord ["Diary", ["External Addons credits", "
			Urban patrol script <br/>
			Mando Missile <br/>
			R3F Revive <br/>
			R3F Artillery <br/>
			SATCOM <br/>
			Domination <br/>
			Atot <br/>
			House patrol <br/>
			Create composition <br/>
			Compact USMC FOB <br/>
			And all others that i can forgot <br/>
			Thanks you for your nice work!
	"]];

	_diary = player createDiaryRecord ["Diary", ["Credits", "The main mission was developped by =[A*C]= code34"]];
	_diary = player createDiaryRecord ["Diary", ["Repair vehicles", "Only engineers can repair vehicles."]];
	_diary = player createDiaryRecord ["Diary", ["RTO", "RTO slots can call differents kind of air supports."]];
	_diary = player createDiaryRecord ["Diary", ["Objects in vehicle", "You can bring objects with you in vehicles. You can take fuel in chopper to refuel others vehicles."]];
	_diary = player createDiaryRecord ["Diary", ["Satelitte View", "You can use the satelitte view near the choppers to localize enemy positions."]];
	_diary = player createDiaryRecord ["Diary", ["Insertion in Enemy zone", "Enemy is clever, and will attack you hardly when you will be detected. Play coop, land far from the enemy zone and attack silenty."]];
	_diary = player createDiaryRecord ["Diary", ["Friendly vehicles respawn", "Friendly vehicle respawn when they are damage, or far of the base since a long time, and there is no one inside."]];
	_diary = player createDiaryRecord ["Diary", ["Players revives", "When you are die, only medics or corpsman can heal you. If nobody come to heal, you have to respawn to base. You can be heal 3 times, before to have to return to base."]];
	_diary = player createDiaryRecord ["Diary", ["Rebels armies", "Some rebels armies walk through the island outside of enemy zone. It's not your main mission to kill them but if you have to do it, do it."]];
	_diary = player createDiaryRecord ["Diary", ["Weapons storage", "You can find a lot of kind of weapons at base. Find the officer, he stands near the weapons box."]];
	_diary = player createDiaryRecord ["Diary", ["Level difficulty", "Level 1 is the easiest level. Level 15 is the hardier. Foreach level up, there will be more enemies, enemies clever, and bigger zone. At the end of the level 15, the game is ended."]];
	_diary = player createDiaryRecord ["Diary", ["Clearing a level", "You have to go to the red enemy zone, and destroy all enemies. When you have sucess, you will receive a message that say that level is complete."]];
	_diary = player createDiaryRecord ["Diary", ["Enemies Force", "There is tow kind of enemies: Russian Force, and chinese force (bamboo song at the begining of the level)"]];
	_diary = player createDiaryRecord ["Diary", ["Main campaign", "You have to liberate the island by clearing the 15 levels. Good luck!"]];

	hint "Mission Initialized";

	wclientinitialised = true;


	while { ((getposatl player) select 2) > 1 } do {
		if (((getposatl demo) select 2) < 2) then {
			player action ["eject", demo];
		};
		sleep 0.5;
	};

	if (wcstamina) then {
		[] spawn {
			while { true } do {
				player setVariable ["ACE_SYS_Stamina_Fatigue", 0];
				sleep 1;
			};
		};
	};

	[] spawn {
		while { !wcgameend } do {
			if (side player == sideEnemy) then {
				titleText ["Team Killing is not permit", "black"];
				sleep 2;
				player setdamage 1;
				wctk = name player;
				publicvariable "wctk";
			};
			sleep 1;
		};
	};
	
	//Mando_my_console_setup air support dialogue
	if ((name player in wcfriendlist) && ((typeOf vehicle player == "ACE_USMC_Soldier_D")||(typeOf vehicle player == "ACE_USMC_Soldier_D") ||(typeOf vehicle player == "ACE_usarmy_rto") || (typeOf vehicle player == "ACE_SF_FR_Assault_R")|| (typeOf vehicle player == "ACE_Seal4_AOR"))) then {
		[]execVM "extern\mando_my_console_setup.sqf";
	};