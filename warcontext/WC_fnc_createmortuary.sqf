	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	private ["_position", "_position2", "_rip", "_typeof"];

	_position = [5000,7100];

	for "_x" from 0 to 150 step 1 do {
		_position = [(_position select 0) + 5, _position select 1];
		_position2 = _position;
		for "_y" from 0 to 150 step 1 do {
			_position2 = [_position2 select 0, (_position2 select 1) + 5];
			_typeof = [ "gravecross2", "gravecross", "GraveCrossHelmet", "Grave"] call BIS_fnc_selectRandom;
			_vehicle =  _typeof createVehicle _position2;
		};
	};


	true;