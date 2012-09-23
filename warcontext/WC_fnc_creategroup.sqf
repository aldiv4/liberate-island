	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// units & vehicles class
	// http://community.bistudio.com/wiki/ArmA:_CfgVehicles
	// -----------------------------------------------
	if (!isServer) exitWith{};
	
	private [
		"_arrayofvehicle",
		"_arrayofpilot",
		"_indexparameters",
		"_group",
		"_leader",
		"_nbparameters",
		"_parameters",
		"_marker",
		"_togarbage",
		"_scriptinit",
		"_typeofgroup", 
		"_typeofvehicle",
		"_position", 
		"_motorized",
		"_vehicle", 
		"_soldier",
		"_unitsofgroup",
		"_base"
		];

	_parameters = [
		"_marker",
		"_typeofgroup",
		"_togarbage"
		];

	_indexparameters = 0;
	_nbparameters = count _this;
	{
		if (_indexparameters <= _nbparameters) then {
		call compile format["%1 = _this select %2;", _x, _indexparameters];
		};
		_indexparameters = _indexparameters + 1;
	}foreach _parameters;


switch (_typeofgroup) do {

	case "uazags30":
			{
				_motorized = true;
				_typeofvehicle = "UAZ_AGS30_INS";
			};

	case "uazmg":
			{
				_motorized = true;
				_typeofvehicle = "UAZ_MG_INS";
			};

	case "uralrepair":
			{
				_motorized = true;
				_typeofvehicle = "UralRepair_INS";
			};

	case "uralrefuel":
			{
				_motorized = true;
				_typeofvehicle = "uralrefuel_INS";
			};

	case "uralreammo":
			{
				_motorized = true;
				_typeofvehicle = "uralreammo_INS";
			};

	case "bmd1":
			{
				_motorized = true;
				_typeofvehicle = "ACE_BMD_1_RU";
			};

	case "bmp":
			{
				_motorized = true;
				_typeofvehicle = "BMP2_INS";
			};

	case "bmp2":
			{
				_motorized = true;
				_typeofvehicle = "ACE_BMP2_RU";
			};

	case "bmp3":
			{
				_motorized = true;
				_typeofvehicle = "ACE_BMP3_RU";
			};

	case "tunguska":
			{
				_motorized = true;
				_typeofvehicle = "2S6M_Tunguska";
			};

	case "shilka":
			{
				_motorized = true;
				_typeofvehicle = "ACE_ZSU_RU";
			};

	case "uralzu23":
			{
				_motorized = true;
				_typeofvehicle = "Ural_ZU23_INS";
			};

	case "t72":
			{
				_motorized = true;
				_typeofvehicle = "ACE_T72B_RU";
			};

	case "t90":
			{
				_motorized = true;
				_typeofvehicle = "T90";
			};

	case "btr90":
			{
				_motorized = true;
				_typeofvehicle = "BTR90";
			};

	case "brdm2":
			{
				_motorized = true;
				_typeofvehicle = "BRDM2_INS";
			};

	case "vodnik":
			{
				_motorized = true;
				_typeofvehicle = "GAZ_Vodnik";
			};

	case "grad":
			{
				_motorized = true;
				_typeofvehicle = "GRAD_RU";
			};

	case "ztz99":
			{
				_motorized = true;
				_typeofvehicle = "fromz_ztz99";
			};

	case "zsl92":
			{
				_motorized = true;
				_typeofvehicle = "ZSL92";
			};

	case "zsl92c":
			{
				_motorized = true;
				_typeofvehicle = "ZSL92C";
			};

	case "zsl92g":
			{
				_motorized = true;
				_typeofvehicle = "ZSL92G";
			};

	case "bwmg":
			{
				_motorized = true;
				_typeofvehicle = "BW_MG";
			};

	case "sa9":
			{
				_motorized = true;
				_typeofvehicle = "ACE_BRDM2_SA9_RU";
			};


	case "army1":
			{
				_motorized = false;
				_unitsofgroup = [
					"RU_Soldier_Officer",
					"RU_Soldier",
					"RU_Soldier2",
					"RU_Soldier_Medic",
					"RU_Commander",
					"RU_Soldier_AR",
					"RU_Soldier_AR",
					"RU_Soldier_AT",
					"RU_Soldier_AT",
					"RU_Soldier_GL",
					"RU_Soldier_HAT",
					"RU_Soldier_MG",
					"RU_Soldier_Marksman",
					"RU_Soldier_AA",
					"RU_Soldier_AA",
					"RU_Soldier_LAT"
				];
			};

	case "army2":
			{
				_motorized = false;
				_unitsofgroup = [
					"PLA_Soldier_Officer",
					"PLA_Soldier",
					"PLA_Soldier2",
					"PLA_Soldier_Medic",
					"PLA_SoldierS_Engineer",
					"PLA_Soldier_AR",
					"PLA_Soldier_AR",
					"PLA_Soldier_AT",
					"PLA_Soldier_AT",
					"PLA_Soldier_GL",
					"PLA_Soldier_HAT",
					"PLA_Soldier_MG",
					"PLA_Soldier_AA",
					"PLA_Soldier_AA",
					"PLA_Soldier_LAT",
					"PLA_SoldierS_Spotter"
				];
			};

	case "army3":
			{
				_motorized = false;
				_unitsofgroup = [
					"ibr_rebel11",
					"ibr_rebel22",
					"ibr_rebel33",
					"ibr_rebel44",
					"ibr_rebel55",
					"ibr_rebel66",
					"ibr_rebel77",
					"ibr_rebel83",
					"ibr_rebel95",
					"ibr_rebel102",
					"ibr_rebel111",
					"ibr_rebel125",
					"ibr_rebel132",
					"ibr_rebel145",
					"ibr_rebel151",
					"ibr_rebel217",
					"ibr_rebel173",
					"ibr_rebel184",
					"ibr_rebel195",
					"ibr_rebel206"
				];
			};

	case "special1":
			{
				_motorized = false;
				_unitsofgroup = [
				"RUS_Soldier_Marksman",
				"RUS_Soldier_Marksman",
				"RUS_Soldier_Sab",
				"RUS_Soldier_Sab",
				"RUS_Soldier_Sab",
				"RUS_Soldier_Sab",
				"RU_Soldier_AA",
				"RU_Soldier_AT",
				"RU_Soldier_SniperH"
				];
			};

	case "special2":
			{
				_motorized = false;
				_unitsofgroup = [
				"PLA_SoldierS",
				"PLA_SoldierS2",
				"PLA_SoldierS3",
				"PLA_SoldierS_Engineer",
				"PLA_Soldier_AA",
				"PLA_Soldier_AT",
				"PLA_Soldier_SniperH"
				];
			};

	case "ins":
			{
				_motorized = false;
				_unitsofgroup = [
					"ACE_Ins_1_1",
					"ACE_Ins_1_2",
					"ACE_Ins_1_3",
					"ACE_Ins_1_4",
					"ACE_Ins_1_5",
					"ACE_Ins_2_1",
					"ACE_Ins_2_2",
					"ACE_Ins_2_3",
					"ACE_Ins_2_4",
					"ACE_Ins_2_5",
					"ACE_Ins_2_6",
					"ACE_Ins_2_7",
					"ACE_Ins_2_8",
					"ACE_Ins_2_9",
					"ACE_Ins_2_10",
					"ACE_Ins_3_1",
					"ACE_Ins_3_2",
					"ACE_Ins_3_3",
					"ACE_Ins_3_4",
					"ACE_Ins_3_5",
					"ACE_Ins_3_6",
					"ACE_Ins_3_7",
					"ACE_Ins_3_8",
					"ACE_Ins_3_9",
					"ACE_Ins_3_10"
				];
			};

	case "civil":
			{
			_motorized = false;
			_unitsofgroup = ["Assistant", "Citizen1", "Citizen2", "Citizen3", "Citizen4", "Doctor", "Functionary1", "Functionary2", "Pilot", "Policeman", "Priest", "Profiteer1", "Profiteer2", "Profiteer3", "Profiteer4", "RU_Assistant", "RU_Citizen1", "RU_Citizen2", "RU_Citizen3", "RU_Citizen4", "RU_Doctor", "RU_Functionary1", "RU_Functionary2", "RU_Pilot", "RU_Policeman", "RU_Priest", "RU_Profiteer1", "RU_Profiteer2", "RU_Profiteer3", "RU_Profiteer4","Damsel1","Damsel2","Damsel3","Damsel4","Damsel5","Farmwife1","Farmwife2","Farmwife3","Farmwife4","Farmwife5","Hooker1","Hooker2","Hooker3","Hooker4","Hooker5","HouseWife1","HouseWife2","HouseWife3","HouseWife4","HouseWife5","Madam1","Madam2","Madam3","Madam4","Madam5","RU_Damsel1","RU_Damsel2","RU_Damsel3","RU_Damsel4","RU_Damsel5"];
			};
	
	default 
		{
			_motorized = false;
			_unitsofgroup = [
				"RU_Commander",
				"RU_Soldier",
				"RU_Soldier",
				"RU_Soldier2",
				"RU_Soldier2",
				"RU_Soldier_AA",
				"RU_Soldier_AR",
				"RU_Soldier_AR",
				"RU_Soldier_AA",
				"RU_Soldier_AT",
				"RU_Soldier_GL",
				"RU_Soldier_HAT",
				"RU_Soldier_Medic",
				"RU_Soldier_MG",
				"RU_Soldier_Marksman",
				"RU_Soldier_SniperH"
			];
		};
	};

	_group = createGroup wcenemyside;

	if (_motorized) then {
		_position = [_marker, "onground", "onflat"] call WC_fnc_createpositioninmarker;
		_arrayofvehicle =[_position, 0, _typeofvehicle, east] call BIS_fnc_spawnVehicle;
		_vehicle = _arrayofvehicle select 0;
		_arrayofpilot = _arrayofvehicle select 1;
		_vehicle setVariable ['togarbage', true, true];
		_vehicle lock true;
		{
			_x setVariable ['togarbage', true, true];
			_group = group _x;
			_x addeventhandler ['killed', {
				wckilledby = [_this select 0, _this select 1]; 
				wcgarbage = [] spawn WC_fnc_killedby;
				_this spawn WC_fnc_garbagecollector;
				 wccivilkilled =  wccivilkilled + 1;
				publicvariable 'wccivilkilled';
			}];
			_x addEventHandler ['Hit', '
				(_this select 0) doTarget (_this select 1);
				(_this select 0) doFire (_this select 1);
			'];
		}foreach _arrayofpilot;
		_vehicle setVehicleInit "[this] spawn EXT_fnc_atot";
		_vehicle addeventhandler ['killed', {_this spawn WC_fnc_garbagecollector}];

		if(wcplastic) then {
			for  "_i" from  0 to 5 step  1 do {
				_vehicle setObjectTexture [_i,'#(argb,1,1,1)color(0,0.1,0,0.8)'];
			};
		};
		wcvehicles = wcvehicles + [_vehicle];
	} else {
		_position = [_marker, "onground"] call WC_fnc_createpositioninmarker;
		{
			_soldier = _group createUnit [_x, _position, [], 0, 'FORM'];
			if(!isnil "_togarbage") then {
				_soldier setVariable ['togarbage', true, true];
			};
			wcgarbage = [_soldier, wcskill] spawn WC_fnc_setskill;
			_soldier addeventhandler ['killed', {
				wckilledby = [_this select 0, _this select 1]; 
				wcgarbage = [] spawn WC_fnc_killedby;
				_this spawn WC_fnc_garbagecollector;
				 wccivilkilled =  wccivilkilled + 1;
				publicvariable 'wccivilkilled';
			}];
			_soldier addEventHandler ['Hit', '
				(_this select 0) doTarget (_this select 1);
				(_this select 0) doFire (_this select 1);
			'];
			sleep 0.15;
			_soldier setmimic "Agresive";
		}foreach _unitsofgroup;
	};

	// initialisation script for units
	_leader = leader _group;

	if (_motorized) then {
		_scriptinit = format["wcgarbage = [this, '%1', 'showmarker', 'NOWAIT'] execVM 'extern\ups.sqf';", _marker];
	} else {
		if (random 1 > 0.5) then {
			_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker'] execVM 'extern\upsmon.sqf';", _marker];
		} else {
			_list = nearestObjects [_position, ["house","building"] , 150];
			if (count _list > 0) then {
				_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker', 'fortify'] execVM 'extern\upsmon.sqf';", _marker];
			} else {
				_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker'] execVM 'extern\upsmon.sqf';", _marker];
			};
		};
	};

	_leader setVehicleInit _scriptinit;
	processInitCommands;

	if (count (units _group) < 1) then {
		if (_motorized) then {
			deletevehicle _vehicle;
		};
	};

	{
		wceunits = wceunits + [_x];
	}foreach (units _group);