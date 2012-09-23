	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// WARCONTEXT - Serialize object classname
	// -----------------------------------------------

	private ["_array", "_object", "_result"];
	_object = _this select 0;
	_copy = false;
	_array2 = [];

	_array = toArray(format["%1", _object]);

	{
		scopeName "loop"; 
		if (_x == 32) then {
			_copy = true;
		};
		if (_x == 46) then {
			_copy = false;
		};
		if(_copy) then {
			_array2 = _array2 + [_x];
		};
		sleep 0.001;
	}foreach _array;

	_result = tostring _array2;
	_result;