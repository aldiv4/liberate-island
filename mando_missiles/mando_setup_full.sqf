if (!isNil "mando_missile_setup_full") exitWith {};
mando_missile_setup_full = true;
waitUntil {!isNil "mando_missile_init_done"};
waitUntil {mando_missile_init_done};
Sleep 1;

// F35B added to the array of stealth planes
mando_missile_stealth = ["F35B"];

[] spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   []execVM mando_missile_path+"setups\mando_GLT_falcon_setup.sqf";
   []execVM mando_missile_path+"setups\mando_Su34_setup.sqf";
   []execVM mando_missile_path+"setups\mando_a10_setup.sqf";
   []execVM mando_missile_path+"setups\mando_f35b_setup.sqf";
   []execVM mando_missile_path+"setups\mando_av8b_setup.sqf";
   []execVM mando_missile_path+"setups\mando_c130j_setup.sqf";
   []execVM mando_missile_path+"setups\mando_mi24_p_setup.sqf";
   []execVM mando_missile_path+"setups\mando_mi24_v_setup.sqf";
   []execVM mando_missile_path+"setups\mando_mi24_d_setup.sqf";
   []execVM mando_missile_path+"setups\mando_ka52_setup.sqf";
   []execVM mando_missile_path+"setups\mando_ah1z_setup.sqf";
   []execVM mando_missile_path+"setups\mando_su25_setup.sqf";
   []execVM mando_missile_path+"setups\mando_gntb52_setup.sqf";
   []execVM mando_missile_path+"setups\mando_pmc_ah64_setup.sqf";
   []execVM mando_missile_path+"setups\mando_cma_mi28_setup.sqf";
   []execVM mando_missile_path+"setups\mando_ah64_setup.sqf";
   []execVM mando_missile_path+"setups\mando_eble_f4_setup.sqf";
   []execVM mando_missile_path+"setups\mando_eble_f14_setup.sqf";
   []execVM mando_missile_path+"setups\mando_eble_f15_setup.sqf";
   []execVM mando_missile_path+"setups\mando_GNT_Su33_setup.sqf";
   []execVM mando_missile_path+"setups\mando_hexa_mirage_setup.sqf";
   []execVM mando_missile_path+"setups\mando_hexa_tigre_setup.sqf";

   // HEXA Choppers and transports HUD setup (only flares and ECM)
   [["HEXA_Transall_A", "HEXA_Puma_CE","HEXA_Puma_RESCO"], 0, "", [], [], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_hexa_transports.sqf", 0, 0, [], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // GNT Coaler HUD setup (only flares and ECM)
   [["RKTCoalerS","RKTCoalerD","RKTCoalerI","RKTCoalerR"], 0, "", [], [], 20, 20, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_c130j.sqf", 0, 0, [], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


   [["CYBP_AH6_US","CYBP_AH6_RACS","CYBP_AH6_NAPA",
"CYBP_AH6_CHDKZ","CYBP_MH6_US","CYBP_MH6_RACS","CYBP_MH6_NAPA","CYBP_MH6_CHDKZ"], 0, "", [], [], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_locations.sqf", 0, 0, [], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   [["MV22", "UH1Y","Mi17_rockets_RU", "Mi17_Ins", "Mi17_CDF", "Mi17_Civilian", "Mi17_medevac_CDF"], 0, "", [], [], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_lift.sqf", 0, 0, [], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


   // BIS MH60S
   [["MH60S"], 0, "", [3,2], [3,2], 10, 10, 0, [3,3,-2.5], mando_missile_path+"huds\mando_hud_sono.sqf", 0, 0.0, [[0,""],[1,""]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


   // Avenger HUD, 8 AA missiles of a maximum of 8 ([8, 0], [8, 0])
   [["HMMWV_Avenger"], 1, "StingerLaucher", [8,0], [8,0], 0, 0, 0, [0,-1,0,2], mando_missile_path+"huds\mando_hud_avenger.sqf", 0, 0, [[-1,"StingerLaucher"]], 2] execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // 3LB_SA6 HUD, 2 AA missiles of a maximum of 3 ([3, 0], [3, 0])
   [["3LB_SA6"], 1, "3LB_2K21Launcher", [3,0], [3,0], 0, 0, 0, [0,-1,0,2], mando_missile_path+"huds\mando_hud_3LB_SA6.sqf", 0, 0, [[-1,"3LB_2K21Launcher"]], 2] execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // Tunguska HUD, 8 AA missiles of a maximum of 8 ([8, 0], [8, 0])
   [["2S6M_Tunguska"], 1, "9M311Laucher", [8,0], [8,0], 0, 0, 0, [0,-1,0,2], mando_missile_path+"huds\mando_hud_tunguska.sqf", 0, 0, [[-6,"9M311Laucher"]], 2] execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


   // Checks if you have a laser designator to provide corresponding actions
   []execVm"mando_missiles\units\mando_haveialaser.sqf";

   [[""], 0, "Javelin", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_javelin.sqf", 0, 0, [[-1,"Javelin"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "Stinger", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_stinger.sqf", 0, 0, [[-1,"Stinger"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "StingerLauncher_twice", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_stinger.sqf", 0, 0, [[-1,"StingerLauncher_twice"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";


   [[""], 0, "Igla", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_igla.sqf", 0, 0, [[-1,"Igla"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";
   [[""], 0, "Igla_twice", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_igla.sqf", 0, 0, [[-1,"Igla_twice"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";


   [[""], 0, "Strela", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_strela.sqf", 0, 0, [[-1,"Strela"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "MetisLauncher", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_metis.sqf", 0, 0, [[-1,"MetisLauncher"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "AT13LauncherSingle", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_metis.sqf", 0, 0, [[-1,"AT13LauncherSingle"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";


   [[""], 0, "TOWLauncherSingle", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_hmmwv_tow.sqf", 0, 0, [[-1,"TOWLauncherSingle"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "AT5LauncherSingle", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_at5.sqf", 0, 0, [[-1,"AT5LauncherSingle"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

   [[""], 0, "AT5Launcher", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_at5.sqf", 0, 0, [[-1,"AT5Launcher"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

[[""], 0, "2A46MRocket", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_refleks.sqf", 0, 0, [[-1,"2A46MRocket"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";

[[""], 0, "2A70Rocket", [1], [1], 0, 0, 0, [0,0,2], mando_missile_path+"huds\mando_hud_arkan.sqf", 0, 0, [[-1,"2A70Rocket"]], 0]execVm"mando_missiles\units\mando_assign_portable.sqf";


   [30]execVM"mando_missiles\units\mando_rearm_by_type.sqf";


};


if (isServer) then
{
   [] spawn
   {
      // Auto countermeasures for all the planes/choppers, not for manned ones
      [[], 1200, 1, 5, true, 3]execVM"mando_missiles\units\mando_missileecm_by_type.sqf";

      // All arma missiles replaced for all vehicle types
      [[]]execVM "mando_missiles\units\mando_onlymandoones_by_type.sqf";
   };
};
