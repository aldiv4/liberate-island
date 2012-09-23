	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext : Sanity, garbage map
	// Context: server side
	// -----------------------------------------------

	if (!isServer) exitWith{};

	private ["_list", "_centerx", "_centery", "_inventory", "_group", "_leader", "_flag", "_lastcount"];

	_centerx = 7000;
	_centery = 7000;

	_sanity = createTrigger["EmptyDetector", [4000,4000,0]];
	_sanity setTriggerArea[20000, 20000, 0, false];
	_sanity setTriggerActivation["EAST", "PRESENT", TRUE];
	_sanity setTriggerStatements["this", "", ""];

	_list = list wctrgsanity;

	{
		_x setdammage 1;
		deletevehicle _x;
		sleep 0,5;
	}foreach _list;