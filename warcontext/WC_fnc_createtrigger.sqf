	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// wcsanity(true) if zone have to be clean, false if zone is currently being monitoring to be clear
	// wczoneready(true) if zone trigger side to pop enemy , false if zone is currently poping enemy
	// markernameclear(false)
	// -----------------------------------------------
	if (!isServer) exitWith{};
	
	private [
		"_location",
		"_marker",
		"_markername",
		"_markersize",
		"_position",
		"_object",
		"_x", 
		"_y", 
		"_z", 
		"_xtemp",
		"_objindex",
		"_ytemp",
		"_statement",
		"_handling"
		];

	_location	= _this select 0;
	_markername	= _this select 1;
	_object		= _this select 2;
	_objindex	= _this select 3;
	_position	= position _location;
	_markersize 	= ((size _location) select 0) + 100;
	wctownisfree = false;

	if (isnil "_object") then { _object = "Land_Fire"; };

	_marker = [_markername, _markersize, _position, 'ColorBLUE', 'ICON', 'FDIAGONAL', 'EMPTY', 0, '', true] call WC_fnc_createmarker;

	// CREATE AN OBJECT
	call compile format ["%1object = [%2] call WC_fnc_createradiotower;", _markername, _position];
	wcflag = [_position] call WC_fnc_createflag;
	wcgarbage = [_marker] spawn WC_fnc_createwarzone;

	// INIT VARIABLES
	call compile format ["wczoneready%1 = true; %1clear = false; wcsanity%1 = true;", _markername];

	// DETECTOR TRIGGER
	call compile format ["%1trg = createTrigger[""EmptyDetector"",%2];",_markername,_position]; 
	call compile format ["%1trg setTriggerArea[%2,%2,0,false];",_markername, wctriggersize];
	call compile format ["%1trg setTriggerActivation[""%2"",""PRESENT"", TRUE];",_markername, wcside];
	call compile format ["%1trg setTriggerStatements[""this && wczoneready%1 && !%1clear;"", ""
		wczoneready%1=false;
		wcgarbage = ['%1', true] spawn WC_fnc_randomizegroup;
	"", """"];", _markername];

	// PARADROP TRIGGER
	call compile format ["%1trgparadrop = createTrigger[""EmptyDetector"",%2];",_markername,_position]; 
	call compile format ["%1trgparadrop setTriggerArea[%2,%2,0,false];",_markername, wctriggersize];
	call compile format ["%1trgparadrop setTriggerActivation[""%2"",""EAST D"", TRUE];",_markername, wcside];
	call compile format ["%1trgparadrop setTriggerStatements[""this"", ""
		wcmessageW = 'Enemy has spotted you near the main target. Call reinforcement';
		publicvariable 'wcmessageW';
		wcgarbage = ['%1'] spawn WC_fnc_createparadrop;
	"", """"];", _markername];

	// CLEAN TRIGGER
	//call compile format ["%1trgsanity = createTrigger[""EmptyDetector"",%2];",_markername, _position]; 
	//call compile format ["%1trgsanity setTriggerArea[%2,%2,0,false];",_markername, wctriggersize];
	//call compile format ["%1trgsanity setTriggerActivation[""ANY"",""PRESENT"", TRUE];",_markername];
	//call compile format ["%1trgsanity setTriggerStatements[""this && wcsanity%1 && !%1clear;"", "" 
	//wcgarbage = [%1trgsanity, '%1', %2] spawn WC_fnc_cleantrigger;
	//wcsanity%1=false;
	//"", """"];", _markername, _markersize];

	// ZONE TAKEN
	_trgend = createTrigger["EmptyDetector", _position];
	_trgend setTriggerArea[_markersize,_markersize,0,false];
	_trgend setTriggerActivation["ANY","NOT PRESENT", TRUE];

	// Check if town is clear or not
	wcgarbage= [_trgend, _markername, _location] spawn WC_fnc_checkzoneclear;