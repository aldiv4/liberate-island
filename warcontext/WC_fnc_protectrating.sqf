	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - ANTI TK SCRIPT
	// Context: server side
	// -----------------------------------------------


	if (!isServer) exitWith{};

	private ["_allunits", "_rating", "_delta"];

	while { !wcgameend } do {
		_allunits = [west1,west2,west3,west4,west5,west6,west7,west8,west9,west10,west11,west12,west13,west14,west15,west16,west17,west18,west19,west20,west21,west22,west23,west24,west25,west26,west27,west28,west29,west30];
		{
			if (isplayer _x) then {
				_rating = rating _x;
				if (_rating < 0) then {
					_delta = 0 - _rating;
					_x addrating _delta;
				};
				sleep 0.5;
			};
		}foreach _allunits;
		sleep 4;
	};

	true;