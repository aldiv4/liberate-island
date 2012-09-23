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
		
		
		//--------------------------------------------------
		//-------------------mod ACE------------------------
		//--------------------------------------------------	
		
		// http://browser.dev-heaven.net/cfg_weapons/classlist?=ACE+with+ACEX%3A+1.2+Update+1&version=6&commit=Change&options[group_by]=weap_type&options[custom_type]=Launcher&options[faction]=
		
		//--- Rifle ---
		_crate addweaponcargo ["ACE_G3SG1",20];
		_crate addweaponcargo ["ACE_G3A3",20];
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
		_crate addweaponcargo ["ACE_SPAS12",20];
		
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
		
		_crate addweaponcargo ["ACE_G36",20];
		_crate addweaponcargo ["ACE_G36_CQB",20];
		_crate addweaponcargo ["ACE_G36A1",20];
		_crate addweaponcargo ["ACE_G36A1_AG36A1",20];
		_crate addweaponcargo ["ACE_G36A1_AG36A1_CQB",20];
		_crate addweaponcargo ["ACE_G36A1_AG36A1_D",20];
		_crate addweaponcargo ["ACE_G36A1_AG36A1_D_CQB",20];
		_crate addweaponcargo ["ACE_G36A1_CQB",20];
		_crate addweaponcargo ["ACE_G36A1_D",20];
		_crate addweaponcargo ["ACE_G36A1_D_CQB",20];
		_crate addweaponcargo ["ACE_G36A2",20];
		_crate addweaponcargo ["ACE_G36A2_Bipod",20];
		_crate addweaponcargo ["ACE_G36A2_Bipod_CQB",20];
		_crate addweaponcargo ["ACE_G36A2_Bipod_D",20];
		_crate addweaponcargo ["ACE_G36A2_Bipod_D_CQB",20];
		_crate addweaponcargo ["ACE_G36A2_CQB",20];
		_crate addweaponcargo ["ACE_G36K",20];
		_crate addweaponcargo ["ACE_G36K_CQB",20];
		_crate addweaponcargo ["ACE_G36K_D",20];
		_crate addweaponcargo ["ACE_G36K_D_CQB",20];
		_crate addweaponcargo ["ACE_G36K_EOTech",20];
		_crate addweaponcargo ["ACE_G36K_EOTech_D",20];
		_crate addweaponcargo ["ACE_G36K_iron",20];
		_crate addweaponcargo ["ACE_G36K_iron_D",20];
			
			
		_crate addmagazinecargo ["100Rnd_556x45_BetaCMag",50];
		_crate addmagazinecargo ["30Rnd_556x45_G36",50];
		_crate addmagazinecargo ["30Rnd_556x45_G36SD",50];
		_crate addmagazinecargo ["ACE_100Rnd_556x45_S_BetaCMag",50];
		_crate addmagazinecargo ["ACE_30Rnd_556x45_S_G36",50];
		_crate addmagazinecargo ["ACE_30Rnd_556x45_T_G36",50];	
		
		
		_crate addweaponcargo ["ACE_M1014_Eotech",20];
			_crate addmagazinecargo ["8Rnd_B_Beneli_74Slug",50];
			_crate addmagazinecargo ["ACE_8Rnd_12Ga_Buck00",50];	
		
		
		_crate addweaponcargo ["ACE_SCAR_L_ACOG",20];
		_crate addweaponcargo ["ACE_SCAR_L_ACOG_CQB",20];
		_crate addweaponcargo ["ACE_SCAR_L_CQC_Eotech",20];
		_crate addweaponcargo ["ACE_SCAR_L_CQC_Eotech_EGLM",20];
		_crate addweaponcargo ["ACE_SCAR_L_SNIPER",20];
		_crate addweaponcargo ["ACE_SCAR_L_SPECTER",20];
		_crate addweaponcargo ["ACE_SCAR_L_SPECTER_CQB",20];
		
		//--- Pistol ---
		
		
		_crate addweaponcargo ["M9",20];
		_crate addweaponcargo ["M9SD",20];
		_crate addweaponcargo ["Colt1911",20];
		_crate addweaponcargo ["ACE_USP",20];
		_crate addweaponcargo ["ACE_USPSD",20];
		_crate addweaponcargo ["ACE_P226",20];
		_crate addweaponcargo ["ACE_Glock17",20];
		_crate addweaponcargo ["ACE_Glock18",20];
		_crate addweaponcargo ["ACE_Flaregun",20];
		
		//--- Sniper ---

		//--- Launcher
		_crate addWeaponCargo ["ACE_6T7TripodProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addWeaponCargo ["ACE_AGS30Proxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addWeaponCargo ["ACE_AGS30TripodProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addweaponcargo ["ACE_CarlGustav_M3",20];	
			_crate addmagazinecargo ["ACE_CarlGustav_HE",50];
			_crate addmagazinecargo ["ACE_CarlGustav_HEAT",50];
			_crate addmagazinecargo ["ACE_CarlGustav_HEAT_2",50];
			_crate addmagazinecargo ["ACE_CarlGustav_HEDP",50];
						
		_crate addWeaponCargo ["ACE_DSHKMProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addWeaponCargo ["ACE_DSHKMTripodProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addWeaponCargo ["ACE_KonkursTripodProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addWeaponCargo ["ACE_KORDProxy",20];			
			//_crate addMagazineCargo ["",100];
			
		_crate addweaponcargo ["ACE_M136_CSRS",20];
			_crate addMagazineCargo ["ACE_M136_CSRS",100];
			
		_crate addWeaponCargo ["ACE_M2HBProxy",20];			
			//_crate addMagazineCargo ["",100];	
			
		_crate addWeaponCargo ["ACE_M3TripodProxy",20];			
			//_crate addMagazineCargo ["",100];
						
		_crate addweaponcargo ["ACE_M72",20];
			_crate addMagazineCargo ["ACE_M72A2",100];
			
		_crate addweaponcargo ["ACE_M72A2",20];
			_crate addMagazineCargo ["ACE_M72A2",100];
			
		_crate addWeaponCargo ["ACE_MK19MOD3Proxy",20];			
			//_crate addMagazineCargo ["",100];
				
		_crate addWeaponCargo ["ACE_RPG22",20];			
			_crate addMagazineCargo ["ACE_RPG22",100];	
			
			
		_crate addWeaponCargo ["ACE_RPG27",20];			
			_crate addMagazineCargo ["ACE_RPG27",100];
		_crate addWeaponCargo ["ACE_RPG29",20];			
			_crate addMagazineCargo ["ACE_RPG29_PG29",100];
			_crate addMagazineCargo ["ACE_RPG29_TBG29",100];
		_crate addWeaponCargo ["ACE_RPG7V_PGO7",20];			
			_crate addMagazineCargo ["ACE_OG7_PGO7",100];
			_crate addMagazineCargo ["ACE_PG7V_PGO7",100];
			_crate addMagazineCargo ["ACE_PG7VL_PGO7",100];
			_crate addMagazineCargo ["ACE_PG7VR_PGO7",100];
			_crate addMagazineCargo ["OG7",100];
			_crate addMagazineCargo ["PG7V",100];
			_crate addMagazineCargo ["PG7VL",100];
			_crate addMagazineCargo ["PG7VR",100];
			
		_crate addWeaponCargo ["ACE_Stretcher",20];	
			
		_crate addWeaponCargo ["HN5B",20];			
			_crate addMagazineCargo ["Strela",100];
			
		_crate addWeaponCargo ["Igla",20];			
			_crate addMagazineCargo ["Igla",100];
			
		_crate addWeaponCargo ["Javelin",20];			
			_crate addMagazineCargo ["Javelin",100];
		
		_crate addWeaponCargo ["M136",20];			
			_crate addMagazineCargo ["M136",100];	
			
		_crate addWeaponCargo ["MetisLauncher",20];			
			_crate addMagazineCargo ["AT13",100];
		
		_crate addWeaponCargo ["RPG18",20];			
			_crate addMagazineCargo ["RPG18",100];	
			
		_crate addWeaponCargo ["RPG7V",20];			
			_crate addMagazineCargo ["ACE_OG7_PGO7",100];			
			_crate addMagazineCargo ["ACE_PG7V_PGO7",100];
			_crate addMagazineCargo ["ACE_PG7VL_PGO7",100];
			_crate addMagazineCargo ["ACE_PG7VR_PGO7",100];
			_crate addMagazineCargo ["OG7",100];
			_crate addMagazineCargo ["PG7V",100];
			_crate addMagazineCargo ["PG7VL",100];
			_crate addMagazineCargo ["PG7VR",100];			
			
		_crate addweaponcargo ["SMAW",20];
			_crate addmagazinecargo ["SMAW_HEAA",50];
			_crate addmagazinecargo ["SMAW_HEDP",50];
			_crate addmagazinecargo ["ACE_SMAW_Spotting",50];
				
		_crate addWeaponCargo ["Stinger",20];			
			_crate addMagazineCargo ["Stinger",100];
		
		_crate addWeaponCargo ["Strela",20];			
			_crate addMagazineCargo ["Strela",100];
							
			
		//--- MG ---
		_crate addWeaponCargo ["ACE_M240G_M145",20];			
			_crate addMagazineCargo ["100Rnd_762x51_M240",100];
			
		_crate addWeaponCargo ["ACE_M240G_M145_CQB",20];			
			_crate addMagazineCargo ["100Rnd_762x51_M240",100];
			
		_crate addWeaponCargo ["ACE_M60",20];			
			_crate addMagazineCargo ["100Rnd_762x51_M240",100];
			
		_crate addWeaponCargo ["M240",20];			
			_crate addMagazineCargo ["100Rnd_762x51_M240",100];
			
		_crate addWeaponCargo ["Mk_48",20];			
			_crate addMagazineCargo ["100Rnd_762x51_M240",100];
			
		_crate addWeaponCargo ["Pecheneg",20];			
			_crate addMagazineCargo ["100Rnd_762x54_PK",100];
		
		_crate addWeaponCargo ["PK",20];			
			_crate addMagazineCargo ["100Rnd_762x54_PK",100];			 
		
		// --- AR ---
		_crate addWeaponCargo ["ACE_M249Para",20];			
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["200Rnd_556x45_M249",100];			
			_crate addMagazineCargo ["20Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_StanagSD",100];
			_crate addMagazineCargo ["ACE_200Rnd_556x45_T_M249",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100];
		
		_crate addWeaponCargo ["ACE_M249Para_M145",20];
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["200Rnd_556x45_M249",100];			
			_crate addMagazineCargo ["20Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_StanagSD",100];
			_crate addMagazineCargo ["ACE_200Rnd_556x45_T_M249",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100];
		
		_crate addWeaponCargo ["ACE_M249Para_M145_CQB",20];
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["200Rnd_556x45_M249",100];			
			_crate addMagazineCargo ["20Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_StanagSD",100];
			_crate addMagazineCargo ["ACE_200Rnd_556x45_T_M249",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100];			
			
		_crate addWeaponCargo ["ACE_RPK74M",20];			
			_crate addMagazineCargo ["30Rnd_545x39_AK",100];
			_crate addMagazineCargo ["30Rnd_545x39_AKSD",100];
			_crate addMagazineCargo ["75Rnd_545x39_RPK",100];
			_crate addMagazineCargo ["ACE_30Rnd_545x39_S_AK",100];
			_crate addMagazineCargo ["ACE_30Rnd_545x39_T_AK",100];
			_crate addMagazineCargo ["ACE_45Rnd_545x39_B_AK",100];
			_crate addMagazineCargo ["ACE_45Rnd_545x39_S_AK",100];
			_crate addMagazineCargo ["ACE_75Rnd_545x39_S_RPK",100];
			_crate addMagazineCargo ["ACE_75Rnd_545x39_T_RPK",100];			
		
		_crate addWeaponCargo ["ACE_RPK74M_1P29",20];
			_crate addMagazineCargo ["30Rnd_545x39_AK",100];
			_crate addMagazineCargo ["30Rnd_545x39_AKSD",100];
			_crate addMagazineCargo ["75Rnd_545x39_RPK",100];
			_crate addMagazineCargo ["ACE_30Rnd_545x39_S_AK",100];
			_crate addMagazineCargo ["ACE_30Rnd_545x39_T_AK",100];
			_crate addMagazineCargo ["ACE_45Rnd_545x39_B_AK",100];
			_crate addMagazineCargo ["ACE_45Rnd_545x39_S_AK",100];
			_crate addMagazineCargo ["ACE_75Rnd_545x39_S_RPK",100];
			_crate addMagazineCargo ["ACE_75Rnd_545x39_T_RPK",100];			
					
		_crate addWeaponCargo ["M249",20];
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["200Rnd_556x45_M249",100];			
			_crate addMagazineCargo ["20Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_StanagSD",100];
			_crate addMagazineCargo ["ACE_200Rnd_556x45_T_M249",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100];	
			
		_crate addWeaponCargo ["m8_SAW",20];
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["20Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_G36",100];
			_crate addMagazineCargo ["30Rnd_556x45_G36SD",100];
			_crate addMagazineCargo ["30Rnd_556x45_Stanag",100];
			_crate addMagazineCargo ["30Rnd_556x45_StanagSD",100];
			_crate addMagazineCargo ["ACE_100Rnd_556x45_S_BetaCMag",100];
			_crate addMagazineCargo ["ACE_20Rnd_556x45_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_S_G36",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag",100];			
			_crate addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_G36",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",100]; 
					
		_crate addWeaponCargo ["MG36",20];
			_crate addMagazineCargo ["100Rnd_556x45_BetaCMag",100];
			_crate addMagazineCargo ["30Rnd_556x45_G36",100];	
			_crate addMagazineCargo ["30Rnd_556x45_G36SD",100];	
			_crate addMagazineCargo ["ACE_100Rnd_556x45_S_BetaCMag",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_S_G36",100];
			_crate addMagazineCargo ["ACE_30Rnd_556x45_T_G36",100];
		
		_crate addWeaponCargo ["RPK_74",20];			
			_crate addMagazineCargo ["30Rnd_545x39_AK",100];
			_crate addMagazineCargo ["30Rnd_545x39_AKSD",100];	
			_crate addMagazineCargo ["75Rnd_545x39_RPK",100];	
			_crate addMagazineCargo ["ACE_30Rnd_545x39_S_AK",100];	
			_crate addMagazineCargo ["ACE_30Rnd_545x39_T_AK",100];	
			_crate addMagazineCargo ["ACE_45Rnd_545x39_B_AK",100];	
			_crate addMagazineCargo ["ACE_45Rnd_545x39_S_AK",100];	
			_crate addMagazineCargo ["ACE_75Rnd_545x39_S_RPK",100];
			_crate addMagazineCargo ["ACE_75Rnd_545x39_T_RPK",100];			
		
		//----- ACE Ruck ----		
		_crate addWeaponCargo ["ACE_ANPRC77",20];
		_crate addWeaponCargo ["ACE_BackPack",20];
		_crate addWeaponCargo ["ACE_CharliePack",20];
		_crate addWeaponCargo ["ACE_CharliePack_ACU",20];
		_crate addWeaponCargo ["ACE_CharliePack_WMARPAT",20];
		_crate addWeaponCargo ["ACE_Combat_Pack",20];
		_crate addWeaponCargo ["ACE_FAST_PackEDC",20];
		_crate addWeaponCargo ["ACE_P159_RD54",20];
		_crate addWeaponCargo ["ACE_P159_RD90",20];
		_crate addWeaponCargo ["ACE_P159_RD99",20];
		_crate addWeaponCargo ["ACE_PRC119",20];
		_crate addWeaponCargo ["ACE_PRC119_ACU",20];
		_crate addWeaponCargo ["ACE_PRC119_MAR",20];
		_crate addWeaponCargo ["ACE_Rucksack_EAST",20];
		_crate addWeaponCargo ["ACE_Rucksack_EAST_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_ACU_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown_Medic",20];		
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Brown_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Green",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Green_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_WMARPAT",20];		
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_WMARPAT_Medic",20];
		_crate addWeaponCargo ["ACE_Rucksack_MOLLE_Wood",20];			
		_crate addWeaponCargo ["ACE_Rucksack_RD54",20];
		_crate addWeaponCargo ["ACE_Rucksack_RD90",20];
		_crate addWeaponCargo ["ACE_Rucksack_RD91",20];
		_crate addWeaponCargo ["ACE_Rucksack_RD92",20];
		_crate addWeaponCargo ["ACE_Rucksack_RD99",20];
		_crate addWeaponCargo ["ACE_VTAC_RUSH72",20];
		_crate addWeaponCargo ["ACE_VTAC_RUSH72_ACU",20];
		
		
		//--- Equip ---
		
		//--- Item ---
		
		
		
		//---------------------------------
		//---------------------------------
		
		_crate addMagazineCargo ["ACE_Sandbag_Magazine",100];
		_crate addMagazineCargo ["ACE_Rope_M_50",10];
		_crate addMagazineCargo ["ACE_Rope_M_60",10];
		_crate addMagazineCargo ["ACE_Rope_M_90",10]; 
		_crate addMagazineCargo ["ACE_Rope_M_120",10];
		_crate addMagazineCargo ["ACE_Rope_M5",10];
		_crate addweaponCargo ["ACE_Map_Tools",40];
		
		
		
					
					
					
		
		
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
		_crate addWeaponCargo ["ACE_Wirecutter",40];

		

		_crate addweaponcargo ["ACE_ParachutePack",50];
		_crate addweaponcargo ["ACE_Map_Tools",5];
		_crate addweaponcargo ["ACE_AS50",20];
		_crate addweaponcargo ["ACE_WIRECUTTER",20];
		_crate addweaponcargo ["ACE_SpottingScope",20];
		
		
		
		
			
			
		_crate addmagazinecargo ["100Rnd_556x45_BetaCMag",50];	
		_crate addmagazinecargo ["20Rnd_556x45_Stanag",50];	
		_crate addmagazinecargo ["30Rnd_556x45_Stanag",50];
		_crate addmagazinecargo ["30Rnd_556x45_StanagSD",50];	
		_crate addmagazinecargo ["ACE_100Rnd_556x45_S_BetaCMag",50];	
		_crate addmagazinecargo ["ACE_20Rnd_556x45_S_Stanag",50];	
		_crate addmagazinecargo ["ACE_30Rnd_556x45_S_Stanag",50];	
		_crate addmagazinecargo ["ACE_30Rnd_556x45_SB_S_Stanag",50];
		_crate addmagazinecargo ["ACE_30Rnd_556x45_SB_Stanag",50];	
		_crate addmagazinecargo ["ACE_30Rnd_556x45_T_Stanag",50];
		_crate addmagazinecargo ["1Rnd_HE_M203",50];	
		_crate addmagazinecargo ["1Rnd_Smoke_M203",50];
		_crate addmagazinecargo ["1Rnd_SmokeGreen_M203",50];	
		_crate addmagazinecargo ["1Rnd_SmokeRed_M203",50];
		_crate addmagazinecargo ["1Rnd_SmokeYellow_M203",50];	
		_crate addmagazinecargo ["ACE_1Rnd_CS_M203",50];
		_crate addmagazinecargo ["ACE_1Rnd_HE_M203",50];	
		_crate addmagazinecargo ["ACE_1Rnd_PR_M203",50];
		_crate addmagazinecargo ["ACE_HuntIR_M203",50];	
		_crate addmagazinecargo ["ACE_SSGreen_M203",50];
		_crate addmagazinecargo ["ACE_SSRed_M203",50];	
		_crate addmagazinecargo ["ACE_SSWhite_M203",50];
		_crate addmagazinecargo ["ACE_SSYellow_M203",50];	
		_crate addmagazinecargo ["FlareGreen_M203",50];
		_crate addmagazinecargo ["FlareRed_M203",50];	
		_crate addmagazinecargo ["FlareWhite_M203",50];
		_crate addmagazinecargo ["FlareYellow_M203",50];		
					
			
		
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

		_crate addmagazinecargo ["ACE_C4_M",50];
		_crate addmagazinecargo ["ACE_Battery_Rangefinder",5];
		_crate addmagazinecargo ["HandGrenade_West",50];
		_crate addmagazinecargo ["Smokeshell",50];
		_crate addmagazinecargo ["Smokeshellred",50];
		_crate addmagazinecargo ["Smokeshellgreen",50];
		_crate addmagazinecargo ["SmokeShellYellow",50];
		_crate addmagazinecargo ["SmokeShellOrange",50];
		_crate addmagazinecargo ["SmokeShellPurple",50];
		
		_crate addmagazinecargo ["ace_flashbang",50];
		_crate addmagazinecargo ["ace_m84",50];
		_crate addmagazinecargo ["ace_m7a3",50];
		_crate addmagazinecargo ["ace_m34",50];
		_crate addmagazinecargo ["ACE_IRStrobe",50];
		_crate addmagazinecargo ["ACE_M86PDM",50];
		_crate addmagazinecargo ["ACE_M2SLAM_M",50];
		
		_crate addmagazinecargo ["30Rnd_9x19_MP5",50];
		_crate addmagazinecargo ["ACE_20Rnd_762x51_B_G3",50];
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
		_crate addmagazinecargo ["FlareWhite_M203",50];
		_crate addmagazinecargo ["FlareGreen_M203",50];
		_crate addmagazinecargo ["FlareRed_M203",50];
		_crate addmagazinecargo ["ACE_SSWhite_M203",50];
		_crate addmagazinecargo ["ACE_SSGreen_M203",50];
		_crate addmagazinecargo ["ACE_SSRed_M203",50];
		_crate addmagazinecargo ["ACE_SSYellow_M203",50];
		_crate addmagazinecargo ["1Rnd_SmokeRed_M203",50];
		_crate addmagazinecargo ["1Rnd_SmokeGreen_M203",50];
		_crate addmagazinecargo ["1Rnd_SmokeYellow_M203",50];
		_crate addmagazinecargo ["1Rnd_Smoke_M203",50];
		_crate addMagazineCargo ["ACE_SSWhite_FG",50];
		_crate addMagazineCargo ["ACE_SSRed_FG",50];
		_crate addMagazineCargo ["ACE_SSGreen_FG",50];
		_crate addMagazineCargo ["ACE_SSYellow_FG",50];
		
		_crate addmagazinecargo ["Pipebomb",30];
		_crate addmagazinecargo ["Mine",30];
		_crate addmagazinecargo ["ACE_Claymore_M",30];
		_crate addmagazinecargo ["ACE_BBetty_M",30];
		_crate addmagazinecargo ["ACE_TripFlare_M",30];
		_crate addmagazinecargo ["Laserbatteries",20];
		_crate addmagazinecargo ["JAVELIN",50];
		_crate addmagazinecargo ["STINGER",50];
		_crate addmagazinecargo ["ACE_Knicklicht_R",50];
		_crate addmagazinecargo ["ACE_Knicklicht_W",50];
		_crate addmagazinecargo ["ACE_Knicklicht_Y",50];
		_crate addmagazinecargo ["ACE_Knicklicht_B",50];
		_crate addmagazinecargo ["ACE_Knicklicht_IR",50];
		_crate addmagazinecargo ["ACE_VS17Panel_M",50];
		_crate addmagazinecargo ["ACE_8Rnd_12Ga_Slug",50];
		_crate addmagazinecargo ["ACE_8Rnd_12Ga_Buck00",50];
		_crate addmagazinecargo ["8Rnd_B_Beneli_74Slug",50];
		
		//-----------------------------------------------------
		//------------------- FIN mod ACE ---------------------
		//-----------------------------------------------------
	} ;
	_crate;