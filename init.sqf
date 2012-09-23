	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description: init
	// -----------------------------------------------
	
	#include "R3F_ARTY_AND_LOG\init.sqf"
	
	//Mando
	[false] execVM "mando_missiles\mando_missileinit.sqf";

	// Wait for Mando Missile addon initialization 
	waitUntil {!isNil "mando_missile_init_done"};
	waitUntil {mando_missile_init_done};

	[]execVM"mando_missiles\mando_setup_full.sqf";
	//[]execVM"mando_missiles\mando_setup_ffaa.sqf";
	[]execVM"mando_missiles\mando_setup_ace.sqf";

	//if (isServer) then {
	// SAMs antimissile-capable for t1
	//[t1, 3, ["Air"], 6, 500, 2000, 12, [0,0,3], 360, 0, [west,sideEnemy], true, false, true, false, 85]exec"mando_missiles\units\attackers\mando_arma2.sqs";
	//};
	//Mando end
	
	wcterraingrid = 50;
	wcviewDist = 1500;
	setViewDistance wcviewDist;
	setTerrainGrid wcterraingrid;
	enableEnvironment false;

	if (!isServer) exitWith{};

	call compile preprocessFileLineNumbers "extern\Init_UPSMON.sqf";
	// external scripts
	EXT_fnc_atot 			= compile preprocessFile "extern\EXT_fnc_atot.sqf";
	EXT_fnc_createcomposition	= compile preprocessFile "extern\EXT_fnc_createcomposition.sqf";
	EXT_BIS_fnc_supplydrop		= compile preprocessFile "extern\EXT_BIS_fnc_supplydrop.sqf";
	EXT_fnc_HousePatrol		= compile preprocessFile "extern\HousePatrol.sqf";EXT_fnc_HousePatrol		= compile preprocessFile "extern\HousePatrol.sqf";
	
	// warcontext scripts
	WC_fnc_ambiantlife 		= compile preprocessFile "warcontext\WC_fnc_ambiantlife.sqf";
	WC_fnc_attachmarker 		= compile preprocessFile "warcontext\WC_fnc_attachmarker.sqf";
	WC_fnc_attachmarkerinzone	= compile preprocessFile "warcontext\WC_fnc_attachmarkerinzone.sqf";
	WC_fnc_attachtrigger 		= compile preprocessFile "warcontext\WC_fnc_attachtrigger.sqf";
	WC_fnc_buildradiofromserver	= compile preprocessFile "warcontext\WC_fnc_buildradiofromserver.sqf";
	WC_fnc_backupbuilding		= compile preprocessFile "warcontext\WC_fnc_backupbuilding.sqf";
	WC_fnc_checkairweapons 		= compile preprocessFile "warcontext\WC_fnc_checkairweapons.sqf";
	WC_fnc_checkcoverage 		= compile preprocessFile "warcontext\WC_fnc_checkcoverage.sqf";
	WC_fnc_checkradioalive 		= compile preprocessFile "warcontext\WC_fnc_checkradioalive.sqf";
	WC_fnc_checkradaralive 		= compile preprocessFile "warcontext\WC_fnc_checkradaralive.sqf";
	WC_fnc_checkhospitalalive 	= compile preprocessFile "warcontext\WC_fnc_checkhospitalalive.sqf";
	WC_fnc_checkzoneclear 		= compile preprocessFile "warcontext\WC_fnc_checkzoneclear.sqf";
	WC_fnc_climbchopper 		= compile preprocessFile "warcontext\WC_fnc_climbchopper.sqf";
	WC_fnc_createarmy 		= compile preprocessFile "warcontext\WC_fnc_createarmy.sqf";
	WC_fnc_createammobox 		= compile preprocessFile "warcontext\WC_fnc_createammobox.sqf";
	WC_fnc_createparadropammobox	= compile preprocessFile "warcontext\WC_fnc_createparadropammobox.sqf";
	WC_fnc_createbonusvehicle 	= compile preprocessFile "warcontext\WC_fnc_createbonusvehicle.sqf";
	WC_fnc_createconvoy 		= compile preprocessFile "warcontext\WC_fnc_createconvoy.sqf";
	WC_fnc_createflag	 	= compile preprocessFile "warcontext\WC_fnc_createflag.sqf";
	WC_fnc_createmortuary		= compile preprocessFile "warcontext\WC_fnc_createmortuary.sqf";
	WC_fnc_createtracer	 	= compile preprocessFile "warcontext\WC_fnc_createtracer.sqf";
	WC_fnc_cleantrigger	 	= compile preprocessFile "warcontext\WC_fnc_cleantrigger.sqf";
	WC_fnc_createtimer		= compile preprocessFile "warcontext\WC_fnc_createtimer.sqf";
	WC_fnc_creategroup 		= compile preprocessFile "warcontext\WC_fnc_creategroup.sqf";
	WC_fnc_creategridofposition	= compile preprocessFile "warcontext\WC_fnc_creategridofposition.sqf";
	WC_fnc_createhousepatrol	= compile preprocessFile "warcontext\WC_fnc_createhousepatrol.sqf";
	WC_fnc_createmarker 		= compile preprocessFile "warcontext\WC_fnc_createmarker.sqf";
	WC_fnc_createmarkerlocal	= compile preprocessFile "warcontext\WC_fnc_createmarkerlocal.sqf";
	WC_fnc_createairpatrol 		= compile preprocessFile "warcontext\WC_fnc_createairpatrol.sqf";
	WC_fnc_createparadrop 		= compile preprocessFile "warcontext\WC_fnc_createparadrop.sqf";
	WC_fnc_createposition 		= compile preprocessFile "warcontext\WC_fnc_createposition.sqf";
	WC_fnc_createpositioninmarker 	= compile preprocessFile "warcontext\WC_fnc_createpositioninmarker.sqf";
	WC_fnc_createtownpatrol		= compile preprocessFile "warcontext\WC_fnc_createtownpatrol.sqf";
	WC_fnc_createtrigger	 	= compile preprocessFile "warcontext\WC_fnc_createtrigger.sqf";
	WC_fnc_createwarcontext	 	= compile preprocessFile "warcontext\WC_fnc_createwarcontext.sqf";
	WC_fnc_createwarzone	 	= compile preprocessFile "warcontext\WC_fnc_createwarzone.sqf";
	WC_fnc_debug			= compile preprocessFile "warcontext\WC_fnc_debug.sqf";
	WC_fnc_defender			= compile preprocessFile "warcontext\WC_fnc_defender.sqf";
	WC_fnc_deletemarker		= compile preprocessFile "warcontext\WC_fnc_deletemarker.sqf";
	WC_fnc_getobject 		= compile preprocessFile "warcontext\WC_fnc_getobject.sqf";
	WC_fnc_getterraformvariance	= compile preprocessFile "warcontext\WC_fnc_getterraformvariance.sqf";
	WC_fnc_initconfig 		= compile preprocessFile "warcontext\WC_fnc_initconfig.sqf";
	WC_fnc_isinforest		= compile preprocessFile "warcontext\WC_fnc_isinforest.sqf";
	WC_fnc_isonmountain		= compile preprocessFile "warcontext\WC_fnc_isonmountain.sqf";
	WC_fnc_killedby			= compile preprocessFile "warcontext\WC_fnc_killedby.sqf";
	WC_fnc_liberateisland 		= compile preprocessFile "warcontext\WC_fnc_liberateisland.sqf";
	WC_fnc_loadmission		= compile preprocessFile "warcontext\WC_fnc_loadmission.sqf";
	WC_fnc_loadcampaign		= compile preprocessFile "warcontext\WC_fnc_loadcampaign.sqf";
	WC_fnc_markerhint		= compile preprocessFile "warcontext\WC_fnc_markerhint.sqf";
	WC_fnc_protectrating		= compile preprocessFile "warcontext\WC_fnc_protectrating.sqf";
	WC_fnc_protectvehicle		= compile preprocessFile "warcontext\WC_fnc_protectvehicle.sqf";
	WC_fnc_publishmission		= compile preprocessFile "warcontext\WC_fnc_publishmission.sqf";
	WC_fnc_publishmarkers		= compile preprocessFile "warcontext\WC_fnc_publishmarkers.sqf";
	WC_fnc_randomizegroup 		= compile preprocessFile "warcontext\WC_fnc_randomizegroup.sqf";
	WC_fnc_garbagecollector		= compile preprocessFile "warcontext\WC_fnc_garbagecollector.sqf";
	WC_fnc_createradiotower		= compile preprocessFile "warcontext\WC_fnc_createradiotower.sqf";
	WC_fnc_returnclassname		= compile preprocessFile "warcontext\WC_fnc_returnclassname.sqf";
	WC_fnc_respawnvehicle		= compile preprocessFile "warcontext\WC_fnc_respawnvehicle.sqf";
	WC_fnc_restorebuilding		= compile preprocessFile "warcontext\WC_fnc_restorebuilding.sqf";
	WC_fnc_restorebuildingfrommerlin= compile preprocessFile "warcontext\WC_fnc_restorebuildingfrommerlin.sqf";
	WC_fnc_sanitymap 		= compile preprocessFile "warcontext\WC_fnc_sanitymap.sqf";
	WC_fnc_setskill 		= compile preprocessFile "warcontext\WC_fnc_setskill.sqf";
	WC_fnc_serverside 		= compile preprocessFile "warcontext\WC_fnc_serverside.sqf";
	WC_fnc_supplygroup 		= compile preprocessFile "warcontext\WC_fnc_supplygroup.sqf";
	WC_fnc_score	 		= compile preprocessFile "warcontext\WC_fnc_score.sqf";
	WC_fnc_ups	 		= compile preprocessFile "warcontext\WC_fnc_ups.sqf";
	WC_fnc_respawnkit	 	= compile preprocessFile "warcontext\WC_fnc_respawnkit.sqf";
	WC_fnc_weather		 	= compile preprocessFile "warcontext\WC_fnc_weather.sqf";
	call compile preprocessFile "warcontext\WC_fnc_checkspotter.sqf";

	sleep 5;
	
	// Init global variables
	wcgarbage = [] call WC_fnc_initconfig;

	// Init Debugger
	wcgarbage = [] spawn WC_fnc_debug;

	// Init Warcontext
	wcgarbage = [] spawn WC_fnc_createwarcontext;

	// Server SIDE
	wcgarbage = [] spawn WC_fnc_serverside;