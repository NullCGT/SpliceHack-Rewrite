--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "hardfloor")
--123456789012345678901234567890123456789012345678901234567890123456789012345
des.map({ halign = "left", valign = "top", map = [[
---------------------------------------------------------
|...|        |............................|             |
|...|       --............................|             |
|...|       |.............................|             |
|...|      --.............................|             |
|...|      |..............................|             |
|...|     --...................L..........|             |
|...|     |....................L..........|             |
|...|    --...................L.L.........|             |
|...|    |..............L.L.L.L.L.L.L.L...|             |
|...|-----................L..L...L..L.....|             |
|...........................L.L.L.L.......|             |
|...........................L.L.L.L.......|             |
|..........................L.L...L.L......|             |
|.........................................|-------------|
|.........................................|.............|
|.........................................S.............|
|.........................................|.............|
|.........................................|.............|
---------------------------------------------------------
]] });
-- Dungeon Description
des.region({region = {00,00,56,19}, lit=1})
-- Stairs
des.stair("up", 02,02)
-- Non diggable walls
des.non_diggable(selection.area(00,00,56,19))
-- Random traps
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
-- Lava demons
des.monster({id="lava demon", x=30, y=05,peaceful=0,asleep=0})
des.monster({id="lava demon", x=23, y=09,peaceful=0,asleep=0})
des.monster({id="lava demon", x=39, y=09,peaceful=0,asleep=0})
des.monster({id="lava demon", x=36, y=14,peaceful=0,asleep=0})
des.monster({id="lava demon", x=26, y=14,peaceful=0,asleep=0})
-- Elite guard
des.monster({id="iron golem", x=04, y=13,peaceful=0})
-- Objects
des.object({ id = "heavy iron ball", x=31, y=10,buc="blessed",name="The Iron Ball of Liberation" })
des.object({ id = "chest", x=55, y=18, buc="blessed"})
-- Warden Arianna
des.monster({id="Warden Arianna", x=31, y=10,peaceful=0})

--
--       The "fill" levels for the quest.
--
--       These levels are used to fill out any levels not occupied by specific
--       levels as defined above. "filla" is the upper filler, between the
--       start and locate levels, and "fillb" the lower between the locate
--       and goal levels.
--
