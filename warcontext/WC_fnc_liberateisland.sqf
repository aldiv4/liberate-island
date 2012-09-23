	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Liberate Island
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private [
		"_locations",
		"_location", 
		"_distance", 
		"_lastposition", 
		"_marker", 
		"_markername",
		"_object",
		"_objindex",
		"_civils",
		"_typeofcivil",
		"_position",
		"_maxdistance",
		"_tmp",
		"_randomunit",
		"_eunits",
		"_vehicle",
		"_group", 
		"_freeposition", 
		"_arrayofobject",
		"_sanity",
		"_elite"
		];

	_arrayofobject = [];
	wcmissionfinished = false;

	_randomunit = [
		"army1",
		"special1"
	];

	_randomvehicle = [
		"uazags30",
		"uazmg",
		"grad",
		"vodnik",
		"brdm2",
		"btr90",
		"bmp",
		"shilka",
		"t72",
		"t90",
		"tunguska"
	];

	_objindex = 0;
	_position = getmarkerpos "WBASE";
	_lastposition = _position;

	_sanity = createTrigger["EmptyDetector", [4000,4000,0]];
	_sanity setTriggerArea[20000, 20000, 0, false];
	_sanity setTriggerActivation["EAST", "PRESENT", TRUE];
	_sanity setTriggerStatements["this", "", ""];

	while { wclevel < 16} do {
		_maxdistance = 30000;
		wcscoreT = 0;

		{
			if (random 1 < 0.1) then {
					[_x, 2000] spawn WC_fnc_ambiantlife;
			};
		}foreach wctownlocations;

		while { (_position distance _lastposition < 2100) } do {
			_location = wctownlocations call BIS_fnc_selectRandom;
			_position = position _location;
			sleep 1;
		};

		wctownlocations = wctownlocations - [_location];
		_lastposition = _position;

		wctownlocationsneartarget = nearestLocations [_position, ["NameCityCapital", "NameCity","NameVillage", "Name", "Mount", "Hill"], 2000];
		wctownlocationsneartarget = wctownlocationsneartarget - [_location];

		{
			if((position _x) distance _position > 1000) then {
				wcspawnluck = 1 - (wclevel / 100);
				if (random 1 > wcspawnluck) then {
					[_x, wcdistance] spawn WC_fnc_ambiantlife;
				};
			};
		}foreach wctownlocationsneartarget;

		_marker = ['rescuezone', wcdistance, position _location, 'ColorRED', 'ELLIPSE', 'FDIAGONAL', '', 0, '', false] call WC_fnc_createmarker;

		wcmessageW = format["Mission %1: Clear the location of %2", wclevel, text _location];
		publicvariable "wcmessageW";

		if (random 1 > 0.3) then {
			_randomunit = [ "army1", "special1"];
			_elite = "special1";
			_randomvehicle = ["bmd1", "brdm2", "bpm2", "btr90", "bmp", "shilka", "t72", "t90","tunguska","uazags30", "uazmg", "vodnik", "sa9", "bmp3", "uralzu23"];
			_marker2 = ['rescue', 3, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'Select', 0, 'Russian Zone', false] call WC_fnc_createmarker;
			wcgarbage = [_marker2] spawn WC_fnc_markerhint;
		} else {
			_randomunit = [ "army2", "special2"];
			_randomvehicle = ["ztz99", "zsl92", "zsl92c", "zsl92g", "bwmg"];
			_elite = "special2";
			wcbamboo = true;
			publicvariable "wcbamboo";
			_marker2 = ['rescue', 3, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'Select', 0, 'Chinese Zone', false] call WC_fnc_createmarker;
			wcgarbage = [_marker2] spawn WC_fnc_markerhint;
		};

		sleep 2;

		for "_x" from 1 to wclevel step 1 do {
			_handle = [_marker, _randomunit call BIS_fnc_selectRandom] spawn WC_fnc_creategroup;
			sleep 2;
		};

		for "_x" from 1 to ceil(wclevel/2) step 1 do {
			_handle = [_marker, _randomvehicle call BIS_fnc_selectRandom] spawn WC_fnc_creategroup;
			sleep 2;
		};

		sleep 30;

		while { count wceunits > 5} do {
			{
				if!(alive _x) then {wceunits = wceunits -[_x];};
				if(primaryWeapon _x == "") then { 
					_x addWeapon "ACE_gr1sp";  
					for "_i" from 1 to 12 step 1 do { 
						_x addMagazine "30Rnd_762x39_AK47";
					};
				}; 
				sleep 0.5;
			}foreach wceunits;
			{
				if!(alive _x) then {wcambiantlife = wcambiantlife -[_x];};
				if(primaryWeapon _x == "") then { 
					_x addWeapon "ACE_gr1sp";  
					for "_i" from 1 to 12 step 1 do { 
						_x addMagazine "30Rnd_762x39_AK47";
					};
				}; 
				sleep 0.5;
			}foreach wcambiantlife;
			sleep 30;
		};

		for "_x" from 1 to ceil(wclevel/2) step 1 do {
			_handle = [_marker, _elite] spawn WC_fnc_defender;
			sleep 2;
		};

		sleep 30;

		while { count wceunits > 5} do {
			{
				if!(alive _x) then {wceunits = wceunits -[_x];};
				if(primaryWeapon _x == "") then { 
					_x addWeapon "ACE_gr1sp";  
					for "_i" from 1 to 12 step 1 do { 
						_x addMagazine "30Rnd_762x39_AK47";
					};
				}; 
				sleep 0.5;
			}foreach wceunits;
			{
				if!(alive _x) then {wcambiantlife = wcambiantlife -[_x];};
				if(primaryWeapon _x == "") then { 
					_x addWeapon "ACE_gr1sp";  
					for "_i" from 1 to 12 step 1 do { 
						_x addMagazine "30Rnd_762x39_AK47";
					};
				}; 
				sleep 0.5;
			}foreach wcambiantlife;
			sleep 30;
		};

		deletemarker "rescue";
		deletemarker "rescuezone";

		wcmusic = true;
		publicvariable "wcmusic";

		wcmessageW = format["Mission %1 Complete. Next step in few seconds", wclevel];
		publicvariable "wcmessageW";

		sleep 60;

		{
			_vehicle = vehicle _x;
			_vehicle setdammage 1;
			_x setdammage 1; 
			deletevehicle _x;
			deletevehicle _vehicle;
			sleep 0.5;
		} foreach wceunits;

		{
			_x setdammage 1; 
			deletevehicle _x;
			sleep 0.5;
		} foreach wcvehicles;

		{
			_x setdammage 1; 
			deletevehicle _x;
			sleep 0.5;
		} foreach wcambiantlife;

		_list = list _sanity;
	
		{
			_x setdammage 1;
			deletevehicle _x;
			sleep 0,5;
		}foreach _list;

		for "_x" from 1 to wcambiantindex step 1 do {
			call compile format["deletemarkerlocal ambiant%1;", _x];
		};

		{
			deleteMarkerLocal _x;
		}foreach wcambiantmarker;
		
		wcambiantindex = 0;
		wclevel = wclevel + 1;
		wcskill = wcskill + 0.02;
		publicvariable 'wcskill';
		publicvariable 'wclevel';
		wcdistance = wcdistance + 50;
		
		sleep 5;
	};