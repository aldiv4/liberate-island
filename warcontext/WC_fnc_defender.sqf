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
		"_base",
		"_trg"
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
	};

	_building = (nearestObjects [getmarkerpos _marker, ["Land_dum_istan3_hromada2", "Land_dum_istan2b", "land_dum_istan3_hromada"], (getmarkersize _marker) select 0]) call BIS_fnc_selectRandom;
	if!(isnull _building) then {
			_position = (_building buildingPos 0);

			_trg = createTrigger["EmptyDetector", _position]; 
			_trg setTriggerArea[ 75, 75, 0, false];
			_trg setTriggerActivation["WEST","PRESENT", true];
			_trg setTriggerStatements["this", "", ""];

			_list = list _trg;

			sleep 5;

			if (count _list == 0) then {
				_group = createGroup wcenemyside;
			
				{
					_soldier = _group createUnit [_x, _position, [], 0, 'FORM'];
					_soldier setpos _position;
	
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
			
				if (random 1 > 0.5) then {
					_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker'] execVM 'extern\upsmon.sqf';", _marker];
				} else {
					_scriptinit = format["wcgarbage = [this, '%1', 'noslow', 'showmarker', 'fortify'] execVM 'extern\upsmon.sqf';", _marker];
				};
			
				_leader setVehicleInit _scriptinit;
				processInitCommands;
			
				{
					wceunits = wceunits + [_x];
				}foreach (units _group);
			};
			deletevehicle _trg;
	};