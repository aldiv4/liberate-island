// Missile parameters setup
   mando_hud_misp = [];
   mando_missileidxbase = [];

   // Missile parameters for AIM9X (mando_hud_missile = 0);
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
   10, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   5, 		// endurance
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_SidewinderXLauncher"]]; 

   // Missile parameters for AMRAAM (mando_hud_missile = 1)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   800, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   12000, 	// activerange
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM120Launcher"]];

   // Missile parameters for Sparrow (mando_hud_missile = 2)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   750, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   10000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   1, 		// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   35, 		// scanarch 
   35,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM7Launcher"]];


   // Missile parameters for AIM9 (mando_hud_missile = 3);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_SidewinderLauncher"]]; 


   // Missile parameters for Maverick (mando_hud_missile = 4)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   5,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   8000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   30, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1,		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   45, 		// scanarch 
   75,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_MaverickLauncher"]];


   // Missile parameters for fake bombs (mando_hud_missile = 5)
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
   0, 		// boomrange
   8000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   30, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1,		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   75, 		// scanarch 
   75,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_BombLauncher_Mk82"]];

   // Missile parameters for AGM84 Harpoon (mando_hud_missile = 6)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "GLT_Harpoon_LGM", 	// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10,		// speedini 
   237, 	// speedmax 
   100,		// acceleration
   objNull, 	// target (calculated by the firing action)
   2, 		// boomrange
   1000, 	// activerange
   0, 		// modeinit
   80, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   120,		// endurance
   true,	// terrainavoidance
   2, 		// updatefreq
   1, 		// delayinit 
   1,	 	// controltime
   true, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   40, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   0,		// Offset above target
   0	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM84Launcher"]];

   // Fake params for bombs (mando_hud_missile = 7)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_BombLauncher_Mk84"]];


   // Missile parameters for AIM9 (mando_hud_missile = 8);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_AH1Z"]];


   // Missile parameters for Mk82 (mando_hud_missile = 9);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
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

   mando_missileidxbase = mando_missileidxbase + [[-1, "Mk82BombLauncher_6"]];


   // Missile parameters for Maverick (mando_hud_missile = 10)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   5,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   8000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   30, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1,		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   45, 		// scanarch 
   75,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"MaverickLauncher"]];


   // Missile parameters for AIM9 F35 (mando_hud_missile = 11);
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
   55, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_F35"]];


   // Missile parameters for SidewinderLaucher_AH64 (mando_hud_missile = 12);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_AH64"]];


   // Missile parameters for HellfireLauncher (mando_hud_missile = 13);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 		// speedini 
   355, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   850, 	// activerange
   1, 		// modeinit
   350, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   15, 		// endurance
   false,	// terrainavoidance
   0.5, 	// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   75, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   -0.5,	// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"HellfireLauncher"]];

   // Missile parameters for R73 (mando_hud_missile = 14);
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
   0.5,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"R73Launcher_2"]];


   // Missile parameters for R73 Su34 (mando_hud_missile = 15);
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
   0.5,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"R73Launcher"]];


   // Missile parameters for Ch29 Su34 (mando_hud_missile = 16)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 	// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   2, 		// boomrange
   800, 	// activerange
   1, 		// modeinit
   300, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   10,		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1, 		// delayinit 
   1,	 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   40, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90,		// scanarch 
   90,		// scanarcv
   1,		// Offset above target
   0	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"Ch29Launcher_Su34"]];

   // Missile parameters for Ch29 (mando_hud_missile = 17)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 	// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   2, 		// boomrange
   800, 	// activerange
   1, 		// modeinit
   300, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   10,		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1, 		// delayinit 
   1,	 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   40, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90,		// scanarch 
   90,		// scanarcv
   1,		// Offset above target
   0	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"Ch29Launcher"]];


   // Missile parameters for AirBombLauncher (mando_hud_missile = 18)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"AirBombLauncher"]];

   // Missile parameters for AGM88 Harm (mando_hud_missile = 19)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   800, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   12000, 	// activerange
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM88Launcher"]];

   // Missile parameters for AIM9 SidewinderLauncher x 4 (mando_hud_missile = 20);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher"]]; 

   // Missile parameters for R73 ACE (mando_hud_missile = 21);
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
   0.5,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_R73Launcher"]];

   // Missile parameters for R27 ACE (mando_hud_missile = 22)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   700, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   10000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   1, 		// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   25, 		// scanarch 
   25,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];
   
   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_R27Launcher"]];


   // Missile parameters for ACE_Hellfire (mando_hud_missile = 23);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 		// speedini 
   355, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   850, 	// activerange
   1, 		// modeinit
   350, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   15, 		// endurance
   false,	// terrainavoidance
   0.5, 	// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   75, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   -0.5,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_HellfireLauncher"]];

   // Missile parameters for ACE_Hellfire_Apache (mando_hud_missile = 24);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 		// speedini 
   355, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   850, 	// activerange
   1, 		// modeinit
   350, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   15, 		// endurance
   false,	// terrainavoidance
   0.5, 	// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   75, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   0.5,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_HellfireLauncher_Apache"]];


   // Missile parameters for "ACE_B61BombLauncher" Nuke (mando_hud_missile = 25)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_B61BombLauncher"]];

   // Missile parameters for Eble's Sparrow (mando_hud_missile = 26)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   750, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   10000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   1, 		// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   35, 		// scanarch 
   35,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4SparrowRail"]];

   // Missile parameters for Eble's AGM88 Harm (mando_hud_missile = 27)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   800, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   12000, 	// activerange
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
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   25, 		// scanarch 
   25,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4HarmRail"]];

   // Missile parameters for MK82 Iron Bombs "RKTF4BombRail" (mando_hud_missile = 28)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4BombRail"]];

   // Missile parameters for Eble's BLU-1 Napalm Cannister "RKTF4BLURail" (mando_hud_missile = 29)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4BLURail"]];


   // Missile parameters for Eble's AIM9 (mando_hud_missile = 30)
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
   10, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   5, 		// endurance
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AIM9Launcher2_ir"]];

   // Missile parameters for Eble's AIM54 (mando_hud_missile = 31)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100, 	// speedini 
   900, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   10, 		// boomrange
   3000, 	// activerange
   1, 		// modeinit
   200, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   60, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   2, 		// delayinit 
   0, 		// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   65, 		// scanarch 
   65,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AIM54Launcher6_ir"]];


   // Missile parameters for Maverick (mando_hud_missile = 32)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   8000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   30, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   1,		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   45, 		// scanarch 
   75,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AGM65Launcher4_ir"]];


   // Missile parameters for IkaR_F14_GBU12Launcher5_ir (mando_hud_missile = 33)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   0, 	// speedini 
   0, 	// speedmax 
   0,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_GBU12Launcher5_ir"]];

   // Missile parameters for TOW (mando_hud_missile = 34);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "R_S8T_AT", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 		// speedini 
   278, 	// speedmax 
   80,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missileheadat2.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_towsmoke.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   6, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0, 		// delayinit 
   0.2, 	// controltime
   false, 	// detectable 
   true, 	// debug
   "", 		// launchscript
   7, 		// hagility
   7, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   20, 		// scanarch 
   20,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"TOWLauncher"]];


   // Missile parameters for FFAA EF2000 Maverick (mando_hud_missile = 35)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   -3, 		// vangle (calculated by the firing action)
   50,		// speedini 
   278, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   8000, 	// activerange
   2, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   30, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0,		// delayinit 
   0, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   45, 		// scanarch 
   75,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ffaa_MaverickLauncher_ef"]];

   // Missile parameters for FFAA EF2000 Sidewinder (mando_hud_missile = 36);
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
   55, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   90, 		// scanarch 
   90,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ffaa_SidewinderLaucher_ef"]];

   // Missile parameters for LGB Bombs (mando_hud_missile = 37);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10, 	        // speedini 
   200,		// speedmax 
   9.8,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   3500, 	// activerange
   2, 		// modeinit
   150, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",		// smokescript
   "", 		// soundrsc
   29, 		// sounddur 
   5, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   1, 		// delayinit 
   0,	 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   40, 		// hagility
   40, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   60, 		// scanarch 
   90,		// scanarcv
   0,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"BombLauncher"]];
