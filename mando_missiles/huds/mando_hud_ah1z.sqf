// Hud modes setup
   mando_hud_init_code = {[west, 1, 1.2, 1.0] ExecVM "mando_missiles\huds\custom\custom_hud_helmet.sqf"};

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   8,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - AIM9", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   2000,	// Sensor length / 2 in meters
   5            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   12,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - AIM9", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   2,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   2000,	// Sensor length / 2 in meters
   5            // Normal time to lock
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
   200, 	// Sensor width / 2 in meters
   2000,	// Sensor length / 2 in meters
   5            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   13,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   2,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Hellfire",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   23,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   2,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Hellfire",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   24,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   2,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Hellfire",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   34,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   3,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], ["LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.,	// Aim circle diameter
   "TOW", // HUD Text
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   3,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,		// Sensor length / 2 in meters
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
