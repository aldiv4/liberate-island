// Hud modes setup
   mando_hud_init_code = {};

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   8,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual, 4 CCIP, 5 LOAL
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - AIM9", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   4            // Normal time to lock  
   ]];

   mando_hud_modes = mando_hud_modes + [[
   20,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - AIM9", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   4            // Normal time to lock  
   ]];

   mando_hud_modes = mando_hud_modes + [[
   10,
   false,
   1,
   ["LandVehicle"],
   0.1,
   "AGM65",
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   4            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   10,
   false,
   1,
   ["GROUND"],
   0,
   "AGM65 (Ground)",
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   4            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   5,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   4,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual, 4 CCIP
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.025,	// Aim circle diameter
   "CCIP/NAV", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];


   mando_hud_modes = mando_hud_modes + [[
   9,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   4,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual, 4 CCIP
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.025,	// Aim circle diameter
   "CCIP/NAV", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   -1,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0,	// Aim circle diameter
   "Navigation", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];


   mando_hud_num_modes = count mando_hud_modes; // Number of available modes


// Missile parameters setup
   call compile (preprocessFileLineNumbers (mando_missile_path+"huds\mando_hud_miss_params.sqf"));