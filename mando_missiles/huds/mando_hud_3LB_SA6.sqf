// Hud modes setup
   mando_hud_init_code = {};

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   0,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   2,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - SA6 SARH", // HUD Text
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   3,		// Number of simultaneously detected HUD targets (max is 6)
   100, 	// Sensor width / 2 in meters
   6000,	// Sensor length / 2 in meters
   4            // Normal time to lock
   ]];

   mando_hud_num_modes = count mando_hud_modes; // Number of available modes

// Missile parameters setup
   mando_hud_misp = [];

   // Missile parameters for Stinger (mando_hud_missile = 0);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 		// speedini 
   600, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   6000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   15, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0, 		// delayinit 
   0,    	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   60, 		// scanarch 
   65,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];