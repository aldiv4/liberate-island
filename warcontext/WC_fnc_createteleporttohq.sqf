	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description:
	// Attach a marker to an object
	// -----------------------------------------------

	private ["_leader", "_player", "_position"];
	
	_hq = (_this select 3) select 0;

	hint format["%1", _this select 3];

	player moveincargo _hq;