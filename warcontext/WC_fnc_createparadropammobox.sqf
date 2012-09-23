	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// create an US ammobox on local client side
	// -----------------------------------------------
	 private [
		"_crate",
		"_position"
	];
	 
	_position = _this select 0;
	if (count _this > 1) then {_crate = _this select 1;_position = getposatl _crate;};
	 
	if(isnil "_crate") then {
		if (wcplayerside == wcside) then {
			_crate = "USVehicleBox" createVehiclelocal _position;
			_crate setpos _position;
		} else {
			_crate = "RUVehicleBox" createVehiclelocal _position;
			_crate setpos _position;
		};
		wcammoboxindex = wcammoboxindex  + 1;
		wcgarbage = [format['wcammobox%1', wcammoboxindex], 0.5, _position, 'ColorYellow', 'ICON', 'FDIAGONAL', 'Select', 0, 'Ammobox', true] call WC_fnc_createmarkerlocal;
	};

	ClearMagazineCargo _crate;
	ClearWeaponCargo _crate;

	if(wcplayerside == wcside) then {

		_crate addWeaponCargo ["ACE_Wirecutter",5];




		_crate addmagazinecargo ["ACE_C4_M",10];
		_crate addmagazinecargo ["ACE_Battery_Rangefinder",5];
		_crate addmagazinecargo ["HandGrenade_West",10];
		_crate addmagazinecargo ["Smokeshell",10];
		_crate addWeaponCargo ["ACE_Earplugs",10]; 

		_crate addmagazinecargo ["ACE_M86PDM",50];
		_crate addmagazinecargo ["ACE_M2SLAM_M",50];
		
		_crate addmagazinecargo ["ACE_20Rnd_762x51_B_G3",50];
		_crate addmagazinecargo ["30Rnd_9x19_MP5",50];
		_crate addmagazinecargo ["30Rnd_9x19_MP5SD",50];
		_crate addmagazinecargo ["ACE_25Rnd_1143x23_B_UMP45",50];
		_crate addmagazinecargo ["7Rnd_45ACP_1911",50];
		_crate addmagazinecargo ["15Rnd_9x19_M9",50];
		_crate addmagazinecargo ["15Rnd_9x19_M9SD",50];
		_crate addmagazinecargo ["ACE_12RND_45ACP_USP",50];
		_crate addmagazinecargo ["ACE_12RND_45ACP_USPSD",50];
		_crate addmagazinecargo ["ACE_15RND_9X19_P226",50];
		_crate addmagazinecargo ["ACE_33Rnd_9x19_G18",50];
		_crate addmagazinecargo ["ACE_17Rnd_9x19_G17",50];
		_crate addmagazinecargo ["20Rnd_556x45_Stanag",50];
		_crate addmagazinecargo ["30Rnd_556x45_Stanag",50];
		_crate addmagazinecargo ["ACE_30Rnd_556x45_T_Stanag",50];
		_crate addmagazinecargo ["30Rnd_556x45_StanagSD",50];
		_crate addmagazinecargo ["ACE_30Rnd_556x45_SB_Stanag",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_B_FAL",50];
		_crate addmagazinecargo ["ACE_30Rnd_762x51_B_FAL",50];
		_crate addmagazinecargo ["30Rnd_556x45_G36",50];
		_crate addmagazinecargo ["200Rnd_556x45_M249",50];
		_crate addmagazinecargo ["ACE_200Rnd_556x45_T_M249",50];
		_crate addmagazinecargo ["100Rnd_556x45_BetaCMag",50];
		_crate addmagazinecargo ["8Rnd_B_Beneli_74Slug",50];
		_crate addmagazinecargo ["ACE_8Rnd_12Ga_Slug",50];
		_crate addmagazinecargo ["ACE_8Rnd_12Ga_Buck00",50];
		_crate addmagazinecargo ["ACE_9Rnd_12Ga_Slug",50];
		_crate addmagazinecargo ["ACE_9Rnd_12Ga_Buck00",50];
		_crate addmagazinecargo ["5Rnd_762x51_M24",50];
		_crate addmagazinecargo ["ACE_5Rnd_762x51_T_M24",50];
		_crate addmagazinecargo ["20Rnd_762x51_DMR",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_T_DMR",50];
		_crate addmagazinecargo ["10Rnd_127x99_M107",50];
		_crate addmagazinecargo ["ACE_10Rnd_127x99_T_m107",50];
		_crate addmagazinecargo ["ACE_10Rnd_127x99_Raufoss_m107",50];
		_crate addmagazinecargo ["ACE_5Rnd_25x59_HEDP_Barrett",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_SB_M110",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_S_M110",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_T_M110",50];
		_crate addmagazinecargo ["ACE_5Rnd_127x99_B_TAC50",50];
		_crate addmagazinecargo ["ACE_5Rnd_127x99_S_TAC50",50];
		_crate addmagazinecargo ["ACE_5Rnd_127x99_T_TAC50",50];
		_crate addmagazinecargo ["100Rnd_762x51_M240",50];
		
		_crate addmagazinecargo ["1Rnd_HE_M203",50];
		_crate addmagazinecargo ["ace_1rnd_cs_m203",50];
		_crate addmagazinecargo ["ACE_6Rnd_40mm_M32",50];

		_crate addweaponcargo ["ACE_M72",2];
		_crate addweaponcargo ["ACE_M72A2",2];
		_crate addmagazinecargo ["SMAW_HEAA",10];
		_crate addmagazinecargo ["SMAW_HEDP",10];
		_crate addmagazinecargo ["ACE_SMAW_Spotting",5];
		_crate addmagazinecargo ["Pipebomb",5];
		_crate addmagazinecargo ["ACE_Claymore_M",30];
		_crate addmagazinecargo ["Laserbatteries",20];
		_crate addmagazinecargo ["JAVELIN",10];
		_crate addmagazinecargo ["STINGER",10];
		_crate addmagazinecargo ["ACE_Knicklicht_R",10];
		_crate addmagazinecargo ["ACE_Knicklicht_W",10];
		_crate addmagazinecargo ["ACE_Knicklicht_Y",10];
		_crate addmagazinecargo ["ACE_Knicklicht_B",10];
		_crate addmagazinecargo ["ACE_Knicklicht_IR",10];
	} ;
	_crate;
	
		/*
		_crate addMagazineCargo ["ACE_Sandbag_Magazine",100];
		_crate addMagazineCargo ["ACE_Rope_M_50",10];
		_crate addMagazineCargo ["ACE_Rope_M_60",10];
		_crate addMagazineCargo ["ACE_Rope_M_90",10]; 
		_crate addMagazineCargo ["ACE_Rope_M_120",10];
		_crate addMagazineCargo ["ACE_Rope_M5",10];
		_crate addweaponCargo ["ACE_Map_Tools",40];
 		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Green",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_WMARPAT",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Green_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_ACU_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_WMARPAT_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT_Medic",20];
	 	_crate addWeaponCargo ["ACE_GlassesSpectacles",40];
		_crate addWeaponCargo ["ACE_GlassesRoundGlasses",40]; 
		_crate addWeaponCargo ["ACE_GlassesSunglasses",40];
		_crate addWeaponCargo ["ACE_GlassesBlackSun",40];
		_crate addWeaponCargo ["ACE_GlassesBlueSun",40]; 
		_crate addWeaponCargo ["ACE_GlassesRedSun",40];
		_crate addWeaponCargo ["ACE_GlassesGreenSun",40];
		_crate addWeaponCargo ["ACE_GlassesLHD_glasses",40]; 
		_crate addWeaponCargo ["ACE_GlassesTactical",40];
		_crate addWeaponCargo ["ACE_Earplugs",40]; 
		_crate addWeaponCargo ["ACE_GlassesGasMask_US",40];
		_crate addWeaponCargo ["ACE_GlassesBalaklava",40];
	 	_crate addMagazineCargo ["ACE_Bandage",40];
		_crate addMagazineCargo ["ACE_LargeBandage",40];
		_crate addMagazineCargo ["ACE_Tourniquet",40];
		_crate addMagazineCargo ["ACE_Morphine",40]; 
		_crate addMagazineCargo ["ACE_Epinephrine",40];
		_crate addMagazineCargo ["ACE_Splint",40];
		_crate addMagazineCargo ["ACE_IV",40];
		_crate addMagazineCargo ["ACE_Plasma",40]; 

		_crate addMagazineCargo ["ACE_Knicklicht_R",100];
		_crate addMagazineCargo ["ACE_Knicklicht_W",100];
		_crate addMagazineCargo ["ACE_Knicklicht_G",100];
		_crate addMagazineCargo ["ACE_Knicklicht_Y",100];
		_crate addMagazineCargo ["ACE_Knicklicht_B",100];
		_crate addMagazineCargo ["ACE_Knicklicht_IR",100];
		_crate addMagazineCargo ["ACE_VS17Panel_M",100];
		_crate addMagazineCargo ["ACE_IRStrobe",100];
		_crate addWeaponCargo ["ACE_HuntIR_monitor",20];
		_crate addMagazineCargo ["ACE_Battery_Rangefinder",20];
		_crate addWeaponCargo ["ACE_Kestrel4500",20];
		_crate addWeaponCargo ["ACE_Spottingscope",20];
		
		_crate addWeaponCargo ["ACE_ParachuteRoundPack",40];
		_crate addWeaponCargo ["ACE_ParachutePack",40];

		_crate addweaponcargo ["ACE_ParachutePack",50];
		_crate addweaponcargo ["ACE_Map_Tools",5];
		_crate addweaponcargo ["ACE_AS50",20];
		_crate addweaponcargo ["ACE_WIRECUTTER",20];
		_crate addweaponcargo ["ACE_SpottingScope",20];
		_crate addweaponcargo ["M9",20];
		_crate addweaponcargo ["M9SD",20];
		_crate addweaponcargo ["Colt1911",20];
		_crate addweaponcargo ["ACE_USP",20];
		_crate addweaponcargo ["ACE_USPSD",20];
		_crate addweaponcargo ["ACE_P226",20];
		_crate addweaponcargo ["ACE_Glock17",20];
		_crate addweaponcargo ["ACE_Glock18",20];
		_crate addweaponcargo ["ACE_Flaregun",20];
		_crate addweaponcargo ["M16A2",20];
		_crate addweaponcargo ["M16A2GL",20];
		_crate addweaponcargo ["M16A4",20];
		_crate addweaponcargo ["M16A4_GL",20];
		_crate addweaponcargo ["M16A4_ACG",20];
		_crate addweaponcargo ["M16A4_ACG_GL",20];
		_crate addweaponcargo ["ACE_M16A4_Iron",20];
		_crate addweaponcargo ["M4A1",20];
		_crate addweaponcargo ["ACE_M4A1_GL",20];
		_crate addweaponcargo ["ACE_M4A1_GL_SD",20];
		_crate addweaponcargo ["M4A1_HWS_GL",20];
		_crate addweaponcargo ["M4A1_HWS_GL_camo",20];
		_crate addweaponcargo ["M4A1_HWS_GL_SD_Camo",20];
		_crate addweaponcargo ["M4A1_RCO_GL",20];
		_crate addweaponcargo ["M4A1_Aim",20];
		_crate addweaponcargo ["M4A1_Aim_camo",20];
		_crate addweaponcargo ["M4A1_AIM_SD_camo",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_Aim",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_AIM_SD",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_GL",20];
		_crate addweaponcargo ["ACE_SOC_M4A1",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_GL_SD",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_Eotech",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_GL_13",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_GL_EOTECH",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_SD_9",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_SHORTDOT",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_SHORTDOT_SD",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_RCO_GL",20];
		_crate addweaponcargo ["ACE_SOC_M4A1_GL_AIMPOINT",20];
		
		_crate addweaponcargo ["ACE_M4A1_ACOG",20];
		_crate addweaponcargo ["ACE_M4A1_ACOG_SD",20];
		_crate addweaponcargo ["ACE_M4A1_Aim_SD",20];
		_crate addweaponcargo ["ACE_M4A1_Eotech",20];
		
		_crate addWeaponCargo ["ACE_HK416_D10",20];
		_crate addWeaponCargo ["ACE_HK416_D10_SD",20];
		_crate addWeaponCargo ["ACE_HK416_D10_AIM",20];
		_crate addWeaponCargo ["ACE_HK416_D10_M320",20];
		_crate addWeaponCargo ["ACE_HK416_D14",20];
		_crate addWeaponCargo ["ACE_HK416_D14_SD",20];
		_crate addWeaponCargo ["ACE_HK416_D10_COMPM3",20];
		_crate addWeaponCargo ["ACE_HK416_D10_COMPM3_SD",20];
		_crate addWeaponCargo ["ACE_HK416_D14_COMPM3",20];
		_crate addWeaponCargo ["ACE_HK416_D14_COMPM3_M320",20];
		
		_crate addweaponcargo ["ACE_FAL_Para",20];
		_crate addweaponcargo ["ACE_SA58",20];
		
		_crate addweaponcargo ["G36a",20];
		_crate addweaponcargo ["G36c",20];
		_crate addweaponcargo ["G36_C_SD_eotech",20];
		_crate addweaponcargo ["G36k",20];
		_crate addweaponcargo ["M1014",20];
		_crate addweaponcargo ["MP5A5",20];
		_crate addweaponcargo ["MP5SD",20];
		_crate addweaponcargo ["ACE_MP5A4",20];
		_crate addweaponcargo ["ACE_UMP45",20];
		_crate addweaponcargo ["ACE_UMP45_SD",20];
		_crate addweaponcargo ["M8_carbine",20];
		_crate addweaponcargo ["M8_carbineGL",20];
		_crate addweaponcargo ["M8_compact",20];
		_crate addweaponcargo ["MG36",20];
		_crate addweaponcargo ["Mk_48",20];
		_crate addweaponcargo ["M240",20];
		_crate addweaponcargo ["ACE_M240G_M145",20];
		_crate addweaponcargo ["ACE_M60",20];
		_crate addweaponcargo ["M249",20];
		_crate addweaponcargo ["ACE_M249Para",20];
		_crate addweaponcargo ["ACE_M249Para_M145",20];
		_crate addweaponcargo ["M8_SAW",20];
		_crate addweaponcargo ["M24",20];
		_crate addweaponcargo ["DMR",20];
		_crate addweaponcargo ["M107",20];
		_crate addweaponcargo ["M40A3",20];
		_crate addweaponcargo ["M4SPR",20];
		_crate addweaponcargo ["ACE_M4SPR_SD",20];
		_crate addweaponcargo ["M8_sharpshooter",20];
		_crate addweaponcargo ["ACE_M109",20];
		_crate addweaponcargo ["ACE_M110",20];
		_crate addweaponcargo ["ACE_M110_SD",20];
		_crate addweaponcargo ["ACE_TAC50",20];
		_crate addweaponcargo ["ACE_TAC50_SD",20];
		_crate addweaponcargo ["M136",20];
		_crate addweaponcargo ["SMAW",20];
		_crate addweaponcargo ["ACE_M32",20];
		_crate addweaponcargo ["ACE_GlassesSpectacles",20];
		_crate addweaponcargo ["ACE_GlassesRoundGlasses",20];
		_crate addweaponcargo ["ACE_GlassesSunglasses",20];
		_crate addweaponcargo ["ACE_GlassesBlackSun",20];
		_crate addweaponcargo ["ACE_GlassesBlueSun",20];
		_crate addweaponcargo ["ACE_GlassesRedSun",20];
		_crate addweaponcargo ["ACE_GlassesGreenSun",20];
		_crate addweaponcargo ["ACE_GlassesLHD_glasses",20];
		_crate addweaponcargo ["ACE_GlassesLHD_glasses",20];
		_crate addweaponcargo ["ACE_GlassesTactical",20];
		_crate addweaponcargo ["ACE_GlassesGasMask_US",20];
		_crate addweaponcargo ["ACE_GlassesBalaklava",20];
		_crate addweaponcargo ["ACE_Earplugs",20];
		_crate addweaponcargo ["ACE_Kestrel4500",5];
		_crate addweaponcargo ["Laserdesignator",20];
		_crate addweaponcargo ["ACE_Rangefinder_OD",20];
		_crate addweaponcargo ["Binocular",20];
		_crate addweaponcargo ["NVGoggles",10];
		_crate addweaponcargo ["JAVELIN",20];
		_crate addweaponcargo ["STINGER",20];
		*/