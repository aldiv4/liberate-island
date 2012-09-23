	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - check coverage
	// -----------------------------------------------
	private ["_height", "_size"];

	_height = _this select 0;


	if (_height < 100) then {
		_size = 500;
	} else {	
		_size = _height * 5;
	};

	_size;