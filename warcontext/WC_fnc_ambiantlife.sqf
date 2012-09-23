	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// units & vehicles class
	// http://community.bistudio.com/wiki/ArmA:_CfgVehicles
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private [
		"_size",
		"_location", 
		"_unitsofgroup", 
		"_marker", 
		"_unitsoftype",
		"_group"
		];


	_location = _this select 0;
	_size = _this select 1;
	_unitsofgroup = [];

	wcambiantindex = wcambiantindex + 1;

	switch (ceil(random 4)) do {
		case 0: {
			_marker = [format["ambiant%1", wcambiantindex], _size, position _location, 'ColorRED', 'ELLIPSE', 'FDIAGONAL', 'EMPTY', 0, '', false] call WC_fnc_createmarkerlocal;
			_group = createGroup wcenemyside;
			_unitsoftype = [
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
				"ibr_rebel145"
			];
		};
		
		case 1: {
			_marker = [format["ambiant%1", wcambiantindex], _size, position _location, 'ColorBLUE', 'ELLIPSE', 'FDIAGONAL', 'EMPTY', 0, '', false] call WC_fnc_createmarkerlocal;
			_group = createGroup wcside;
			_unitsoftype = [
				"AFR_Guard_M9",
				"AFR_Guard_M1014",
				"AFR_Guard_M16",
				"AFR_Officer",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Rifleman",
				"AFR_Soldier_AT",
				"AFR_Soldier_Igla",
				"AFR_Soldier_Stinger",
				"AFR_Soldier_MG",
				"AFR_Soldier_MG",
				"AFR_Soldier_MG",
				"AFR_Soldier_MG",
				"AFR_Medic"
			];
		};

		case 2: {
				_marker = [format["ambiant%1", wcambiantindex], _size, position _location, 'ColorRED', 'ELLIPSE', 'FDIAGONAL', 'EMPTY', 0, '', false] call WC_fnc_createmarkerlocal;
				_group = createGroup wcenemyside;
				_unitsoftype = [
					"MOL_officer",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Rifleman",
					"MOL_Medic",
					"MOL_Soldeir_AA",
					"MOL_Soldier_AT",
					"MOL_Soldier_MG",
					"MOL_Soldier_MG"
				];	
		};

		case 3: {
			_marker = [format["ambiant%1", wcambiantindex], _size, position _location, 'ColorRED', 'ELLIPSE', 'FDIAGONAL', 'EMPTY', 0, '', false] call WC_fnc_createmarkerlocal;
			_group = createGroup wcenemyside;
			_unitsoftype = [
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
	};

	wcambiantmarker = wcambiantmarker + [_marker];

	_position = [_marker, "onground"] call WC_fnc_createpositioninmarker;

	for "_x" from 1 to 7 do {
		_unitsofgroup = [(_unitsoftype call BIS_fnc_selectRandom)] + _unitsofgroup;
	};

	{
		call compile format["_soldier = _group createUnit ['%1', _position, [], 0, 'FORM'];", _x];
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
	}foreach _unitsofgroup;

	// initialisation script for units
	_leader = leader _group;
	_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker'] execVM 'extern\upsmon.sqf';", _marker];
	_leader setVehicleInit _scriptinit;

	processInitCommands;

	{
		wcambiantlife = wcambiantlife + [_x];
	}foreach (units _group);

	