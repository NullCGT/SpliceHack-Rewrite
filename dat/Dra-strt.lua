-- NetHack 3.6	Drag.des
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
-- Based on Barb.des
--
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport", "hardfloor")
des.map([[
.................PP..............PPPPPPPPPPPP...............................
................PP................PPPPPPPPPPP...............................
...............PP..................PPPPPPP.P................................
.............PPP....................PPPPPPPPP.P.............PPPPP.....P.....
...........PPP...................PP..PPPPP.PP.......P.........PPP.....PPP...
....PPPPPPPP................PPPPPPPPPPPPP...PP.........PPP............PPP...
.PPPPPP.....................PPPPPPPPPPPPP...PP....P.....PP..............P...
P............................PPPP...PPPPP..............PPP..................
..........................................................PP................
................................PPPPPPPP..........................PPPPPPPP..
..............................PPPPPPPPPPP.....PPPPPP......P....PPPPPPPPPPPPP
.....................PPP...........PPPPP.......PPPPPP.........PPPPPPPPPPPP..
.......................PPPP.......PPPPPPPP......PPPPPP...........PPPPPPPPP..
........................PPPPPP...PPPPPPPP......PPPPPPP.....P................
.........................PPPPPPPPPPPPPPPPP.P...PPPPPPP......................
........................PPPP...PPPPPPPPPPPPP....PPPPPPP..........PPPP.......
...............PPPPPP....PP...PPPPPPPPPPPPPPP......................PPPP.....
...........PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP........PPPPPP................
..........PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP........PPPP................
.........PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP........PPPPP..............
]]);

-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("down", 09,09)
-- Portal arrival point
des.levregion({ region = {68,02,68,02}, exclude = {0,19,0,19}, type="branch" })
-- Guardian
des.monster({id="Chromatic Dragon", x=10, y=07})
-- The Chromatic Dragon's hoard away from home
des.object("chest", 09, 06)
des.object("chest", 09, 07)
des.object("chest", 10, 06)
des.object("chest", 10, 07)
-- The Chromatic Dragon's minions
des.monster("bugbear caretaker")
des.monster("bugbear caretaker")
des.monster("bugbear caretaker")
des.monster("bugbear caretaker")
des.monster("bugbear caretaker")
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
-- Not very many traps
des.trap()
des.trap()
des.trap()
-- water monsters
des.monster({class=";", x=37, y=01,peaceful=0})
des.monster({class=";", x=37, y=04,peaceful=0})
des.monster({class=";", x=37, y=10,peaceful=0})
des.monster({class=";", x=37, y=12,peaceful=0})
des.monster({class=";", x=37, y=16,peaceful=0})
-- Other monsters
des.monster({id="wraith",peaceful=0})
des.monster({id="wraith",peaceful=0})
des.monster({id="caveman",peaceful=0})
des.monster({id="cavewoman",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})

