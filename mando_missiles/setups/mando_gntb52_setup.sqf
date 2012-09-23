// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

// BIS AV8B2
   [["GNTB52"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_gntb52.sqf", 0, 0, [[-1, "GNTMK82BombRail"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";
};
