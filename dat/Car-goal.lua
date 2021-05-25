-- NetHack 3.6	Cartomancer.des	$NHDT-Date: 1432512783 2015/05/25 00:13:03 $  $NHDT-Branch: master $:$NHDT-Revision: 1.8 $
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.map([[
LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
L.....................................L
LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
]]);
-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("up", 19,01)
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
-- Objects
des.object({ id = "credit card", x=32, y=10,buc="blessed",name="The Holographic Void Lily" })
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
-- traps
des.trap()
des.trap()
des.trap()
-- monsters.
des.monster({id="Dal Zethire", x=32, y=10})
des.monster({class="N",peaceful=0})
des.monster({class="N",peaceful=0})
des.wallify()

--
--	The "fill" levels for the quest.
--
--	These levels are used to fill out any levels not occupied by specific
--	levels as defined above. "filla" is the upper filler, between the
--	start and locate levels, and "fillb" the lower between the locate
--	and goal levels.
--
