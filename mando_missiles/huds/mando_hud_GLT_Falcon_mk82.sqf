// Hud modes setup
   mando_hud_init_code = {[0.67,0.89,0.20]execVm"mando_missiles\huds\custom\custom_radar.sqf"};

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   0,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - AIM9", // HUD Text
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   1000, 	// Sensor width / 2 in meters
   5000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   1,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   4,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual, 4 CCIP
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.025,	// Aim circle diameter
   "CCIP/NAV mk84", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   2,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   4,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual, 4 CCIP
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.025,	// Aim circle diameter
   "CCIP/NAV mk82", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_num_modes = count mando_hud_modes; // Number of available modes

// Missile parameters setup
   mando_hud_misp = [];

   // Missile parameters for AIM9 (mando_hud_missile = 0);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100, 	// speedini 
   600, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   10, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0, 		// delayinit 
   0.2, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   55, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   60, 		// scanarch 
   65,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   // Fake params for bombs (mando_hud_missile = 1)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0,		// speedini 
   0, 		// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   3000, 	// activerange
   1, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   55, 		// hagility
   55, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   75, 		// scanarch 
   75,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   // Fake params for bombs (mando_hud_missile = 2)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0,		// speedini 
   0, 		// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   3000, 	// activerange
   1, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   55, 		// hagility
   55, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   75, 		// scanarch 
   75,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];