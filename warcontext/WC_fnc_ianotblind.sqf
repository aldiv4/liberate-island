		// -----------------------------------------------
		// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
		// warcontext 
		// Deployed an radio
		// -----------------------------------------------

		private ["_unit", "_position", "_distance", "_mydir", "_enemy", "_azimuth", "_distance", "_range", "_targets", "_player", "_side", "_positionme"];

		if (wcplayerside == wcenemyside) exitwith {};

		_distance = 70;
		_mydir = getdir player;
		_position =  [(getposasl player select 0), (getposasl player select 1)];

		while {_distance < 1000} do {
			_positionme =  [(_position select 0) + (sin _mydir * _distance), (_position select 1) + (cos _mydir * _distance)];
			_enemy = (_positionme nearObjects ["SoldierEB", 10]) select 0;
			if(!isnull _enemy) then {
				_enemy doTarget _player;
				_enemy dofire _player;
				_enemy domove (position _player);
				_distance = 1100;
			};
			_distance = _distance + 10;
			sleep 0.01;
		};

		true;