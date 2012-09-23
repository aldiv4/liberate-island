	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - scoring players
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private ["_player", "_killer", "_side", "_score"];

	_player	= wckilledby select 0;
	_killer	= wckilledby select 1;

	_killer addrating 200;

	if (rating _killer > 7500) then {
		_killer setunitrank "COLONEL";
	} else {
		if (rating _killer > 5000) then {
			_killer setunitrank "MAJOR";		
		} else {
			if (rating _killer > 3500) then {
				_killer setunitrank "CAPTAIN";
			} else {
				if (rating _killer > 2500) then {
					_killer setunitrank "LIEUTENANT";
				} else {
					if (rating _killer > 1500) then {
						_killer setunitrank "SERGEANT";
					} else {
						if (rating _killer > 500) then {
							_killer setunitrank "CORPORAL";
						} else {
							_killer setunitrank "PRIVATE";
						};
					};
				};
			};
		};
	};

	true;