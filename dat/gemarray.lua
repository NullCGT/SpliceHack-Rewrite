-- The gemstone array is rocked by repeated earthquakes, making it very annoying
-- to navigate.
--
des.level_init({ style="mazegrid", bg ="-" });

des.level_flags("mazelevel", "hardfloor", "noteleport")
des.message("Walls of iridescent gemstone shift and reform around you!")

des.level_flags("mazelevel");

des.map([[
]]);
-- Mazewalk
des.mazewalk(00, 03,"east")

-- Portal
des.levregion({ region = {0,0,75,19}, region_islev=1, type="portal", name="air" });

-- Monsters
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("earth elemental")
des.monster("goristro")
des.monster("fusion elemental")