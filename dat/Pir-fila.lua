--	SCCS Id: @(#)Pirate.des	3.4	2002/04/08
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport", "shortsighted")
des.level_init({ style="mines", fg=".", bg="}", smoothed=false, joined=false, lit=1, walled=false })

-- TODO: Check this
des.stair("down", 75,20)

des.monster("ghost")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")

des.monster("soldier")
des.monster("soldier")
des.monster("soldier")

des.monster("parrot")
des.monster("parrot")
des.monster("parrot")
des.monster("parrot")

des.monster("monkey")
des.monster("monkey")

des.region(selection.area(00,00,75,20), "lit")
des.map({ halign = "left", valign = "bottom", map = [[
}.}}
....
}.}.
]] });
des.stair("up", 01,01)
des.region(selection.area(00,00,03,02), "lit")
