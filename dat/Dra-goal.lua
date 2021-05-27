-- NetHack 3.6	Drag.des
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
-- Based on Barb.des
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.map([[
...............................................................
..........................................     ................
............................................     ..............
.......  ................    ..................  ..............
.......  .................  ...........  ......................
....   ..........   ......  ........... .......................
...  ............   ...........................................
...  ............   ..................................   ......
.................   ..................  ..............   ......
.....................................   ............   ........
........    .......................................... ........
..........  ..............  .......................    ........
.......... ..............   ...................................
......... ..............     ..................................
......... ...............     .........   .....................
.........  ............................ . .....................
.......................................  ...........   ........
....................................................     ......
.............   .....................  .............      .....
..............  ....................... ..............   ......
]]);
-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("up")
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
-- Objects
des.object({ id = "ornate mace", x=25, y=08,buc="blessed",name="Sharur" })
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
-- monsters.
des.monster({id="Slipscale the Betrayer", x=25, y=08})
des.monster("zombie dragon")
des.monster("zombie dragon")
des.monster("zombie dragon")
des.monster("zombie dragon")
des.monster("zombie dragon")
des.monster({id="cave dweller",peaceful=0})
des.monster({id="cave dweller",peaceful=0})
des.monster()
des.monster()
des.monster()
des.monster()
-- traps
des.trap()
des.trap()
des.trap()
des.trap()