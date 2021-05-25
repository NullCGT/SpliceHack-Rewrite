-- NetHack 3.6	Drag.des
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
-- Based on Barb.des
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noflip")
des.level_init({ style="mines", fg=".", bg=" ", smoothed=true, joined=true, lit=0, walled=false })

--
des.stair("up")
des.stair("down")
--
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
--
des.trap()
des.trap()
des.trap()
des.trap()
--
des.monster({ id="zombie dragon",peaceful=0})
des.monster({ id="zombie dragon",peaceful=0})
des.monster({ class="Z",peaceful=0})
des.monster({ class="Z",peaceful=0})
des.monster({ class="V",peaceful=0})
