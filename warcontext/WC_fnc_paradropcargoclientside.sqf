	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext  - paragroup
	// -----------------------------------------------
	if (!local player) exitWith {};

	private ["_vehicle"];

	_vehicle = _this select 0;

	WC_fnc_paradropthem = {
		private ["_vehicle"];
		_vehicle = _this select 0;
	
		{
			if (driver _vehicle != _x) then {
				_x action["EJECT", _vehicle];
				sleep 2;		
			};
		}foreach (crew _vehicle);
		hint 'Paradrop is done';
	};
	

	if (!surfaceIsWater (position _vehicle)) then {
		if ((getposatl _vehicle) select 2 > 70) then {
			[_vehicle] call WC_fnc_paradropthem;
		} else {
			hint 'altitude is too low';
		};
	} else {
		hint "Cannot paradrop over sea !";
	};

	true;