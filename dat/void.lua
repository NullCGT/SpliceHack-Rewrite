-- NetHack 3.6	void.des
-- Edited on 2/15/18 by NullCGT
-- NetHack may be freely redistributed.  See license for details.
--
--
-- This level contains the void. It has items scattered around, but
-- is extremely dangerous. The level design itself is rather boring,
-- but what would you expect from a plane of nonexistence?

des.level_flags("noteleport")
des.message("Alien stars wheel above you in the sky, and a chill wind blows over you.")
des.message("You are in the void, a place many extremely deadly monsters call home.")
des.message("This place contains many doors, but the same door may not lead to the same place every time...")

des.map([[
........
........
........
........
........
]]);
des.mazewalk(00,00,"west")

-- The void is bright for some reason.
des.region(selection.area(00,00,75,19), "lit")
-- Random portals to Other Levels
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="oracle" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="castle" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="medusa" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="blkmar" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="rogue" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="minetn" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="minend" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="soko1" });
des.levregion({ region = {01,01,78,19}, region_islev=1, type="portal", name="juiblex" });
-- Portal home
des.levregion({ region = {01,01,78,19}, exclude = {0,0,0,0}, region_islev = 1, type="branch" })

-- Nasty Monsters
des.monster("void dragon")
des.monster("energy vortex")
des.monster("memory hound")
des.monster("yuki-onna")
des.monster("nightgaunt")
des.monster("nightgaunt")
des.monster("nightgaunt")
des.monster("nightgaunt")
des.monster("nightgaunt")
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()