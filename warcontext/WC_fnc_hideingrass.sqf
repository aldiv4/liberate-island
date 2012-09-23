	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Liberate Island
	// -----------------------------------------------

	private ["_animation", "_protected", "_floor", "_trg", "_counter"];

	_floor = ["#ibrwoodsurface","#ibrgrasssurface"];
	_animation = ["amovppnemstpsraswrfldnon", "amovppnemsprslowwrfldl", "amovppnemsprslowwrfldr", "amovppnemsprslowwrfldf", "amovppnemsprslowwrfldb", "amovppnemsprslowwrfldfl", "amovppnemsprslowwrfldfr", "amovppnemsprslowwrfldbr", "amovppnemsprslowwrfldbl", "amovppnemstpsraswrfldnon_amovppnemevaslowwrfldr", "amovppnemstpsraswrfldnon_amovppnemevaslowwrfldl"];
	_protected = ["AmovPpneMstpSnonWnonDnon_healed", "AmovPpneMstpSnonWnonDnon_injured"];

	while { true } do {
		if ( format ["%1", animationState player] in _animation && (player distance (player findNearestEnemy player) > 10 )) then {
			if (toLower(format["%1", (surfaceType (position player))]) in _floor) then {
				player setcaptive true;
			} else {
				player setcaptive false;
			};
		} else {	
			if!(wchealingprotected) then {
				player setcaptive false;
			} else {
				player setcaptive true;
			};
		};
		sleep 1;
	};
