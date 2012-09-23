	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------

	private ["_missiles", "_vehicle"];

	if (wcwithairmissiles) exitwith {};

	_vehicle = _this select 0;

	_missiles = [
		"2RND_SIDEWINDER_AH1Z",
		"8RND_HELLFIRE",
		"2RND_MAVERICK_A10",
		"4RND_SIDEWINDER_AV8B",
		"2RND_SIDEWINDER_F35",
		"12RND_VIKHR_KA50",
		"4RND_AT9_MI24P",
		"2RND_FAB_250",
		"4RND_AT6_MI24V",
		"6RND_CH29",
		"4RND_CH29",
		"4RND_R73",
		"2RND_R73"
	];

	while { alive _vehicle } do {
		{
			_vehicle removemagazines _x;
		}foreach _missiles;
		sleep 4;
	};

	true;