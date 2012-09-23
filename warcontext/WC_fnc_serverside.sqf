	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Enhancement with Xeno script x_playerweapons.sqf
	// Context: server Side logic
	// -----------------------------------------------
	if (!isServer) exitWith{};

	demo allowdammage false;

	"wcresetscore" addPublicVariableEventHandler {
			_player = wcresetscore;
			_score = score _player;
			_delta = 0 - _score;
			_player addscore _delta;
	};

	"wcnuclear" addPublicVariableEventHandler {
		['ACE_B61_15', wcnuclear] call ACE_fnc_NuclearGroundBurst;
	};

	"wcammoboxpositionW" addPublicVariableEventHandler {
		wcarrayammoboxpositionW = wcarrayammoboxpositionW + [wcammoboxpositionW];
	};

	"wcammoboxpositionE" addPublicVariableEventHandler {
		wcarrayammoboxpositionE = wcarrayammoboxpositionW + [wcammoboxpositionE];
	};

	"wckilledby" addPublicVariableEventHandler {
		wcgarbage = [] spawn WC_fnc_killedby;
	};

	"wcbuildradioW" addPublicVariableEventHandler {
		wcgarbage = [wcbuildradioW, wcside] spawn WC_fnc_buildradiofromserver;
	};

	"wcbuildradioE" addPublicVariableEventHandler {
		wcgarbage = [wcbuildradioE, wcenemyside] spawn WC_fnc_buildradiofromserver;
	};

	"wcradioW" addPublicVariableEventHandler {
		wcgarbage = [wcradioW, wcside] spawn WC_fnc_checkradioalive;
	};

	"wcradioE" addPublicVariableEventHandler {
		wcgarbage = [wcradioE, wcenemyside] spawn WC_fnc_checkradioalive;
	};

	"wcradarW" addPublicVariableEventHandler {
		wcgarbage = [wcradarW, wcside] spawn WC_fnc_checkradaralive;
	};

	"wcradarE" addPublicVariableEventHandler {
		wcgarbage = [wcradarE, wcenemyside] spawn WC_fnc_checkradaralive;
	};

	"wchospitalW" addPublicVariableEventHandler {
		wcgarbage = [wchospitalW, wcside] spawn WC_fnc_checkhospitalalive;
	};

	"wchospitalE" addPublicVariableEventHandler {
		wcgarbage = [wchospitalE, wcenemyside] spawn WC_fnc_checkhospitalalive;
	};

	[US1, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US2, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US3, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US4, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US5, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US6, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US7, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US8, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US9, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[HQ1, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[HQ2, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US10, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US11, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US12, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US13, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US14, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US15, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US16, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US17, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US18, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US19, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US20, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US21, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US22, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US23, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US24, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US25, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US26, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US27, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US28, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US29, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US30, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US31, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US32, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US33, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US34, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US35, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US36, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US37, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US38, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US42, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US43, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US44, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US45, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";
	[US46, 120] execVM "warcontext\WC_fnc_respawnvehicle.sqf";


	["US28"] execVM "warcontext\WC_fnc_protectvehicle.sqf";

	onPlayerConnected call WC_fnc_publishmission;

	//[] spawn {
	//	private ["_leader", "_player", "_max"];
	//	while { true } do {
	//		wcplayers = [];
	//		wcleaders = [];
	//		{
	//			if (isplayer _x) then { 
	//				wcplayers = wcplayers + [_x];
	//			} else {
	//				if (isFormationLeader _x && (side _x != wcside)) then {
	//					wcleaders = wcleaders + [_x];
	//				};
	//			};
	//			sleep 0.05;
	//		}foreach allunits;
	//
	//			{
	//				_player = _x;
	//			_max = -1;
	//			{
	//				if( _x knowsabout _player > _max) then { _max = _x knowsabout _player;};
	//			}foreach wcleaders;
	//			_player setvariable ["detected", _max, true];
	//			sleep 0.05;
	//		}foreach wcplayers;	
	//	};
	//};

	[] spawn {
		while { true } do {
			{
				_position = getmarkerpos (_x select 0);
				(_x select 0) setMarkerPos _position;
				sleep 1;
			}foreach wcarraymarker;
			sleep 120;
		};
	};


