	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	if (!isServer) exitWith{};
	
	private [
		"_markername",
		"_markersize",
		"_position", 
		"_object",
		"_objindex",
		"_locations",
		"_i",
		"_fuelstations",
		"_vehicles",
		"_currentlocation",
		"_distance",
		"_location",
		"_locations",
		"_list"
		];


	 // GET CITIES
	wctownlocations = nearestLocations [[7000,7000], ["NameCityCapital", "NameCity","NameVillage", "Name"], 20000];

	// Wait result of nearestlocations
	sleep 10;

	// CALL MAIN TARGET
	wcgarbage = [] spawn WC_fnc_liberateisland;

	// CREATE AIRPATROL
	{
		wcgarbage = [_x]  spawn WC_fnc_createairpatrol;
		sleep 0.5;
	}foreach wcenemyair;

	wcgarbage = [] spawn WC_fnc_weather;
	sleep 1;

	true;