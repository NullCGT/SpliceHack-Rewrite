--	SCCS Id: @(#)Pirate.des	3.4	2002/04/08
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport")
des.level_init({ style="mines", fg="#", bg=" ", smoothed=true, joined=true, lit=0, walled=false })

--
des.stair("up")
des.stair("down")
--

des.object()
des.trap()

des.object()
des.trap()

des.object()
des.trap()

des.object()
des.trap()

des.object()
des.trap()

des.object()
des.trap()

des.object()
des.trap()

des.monster("ghost")
des.monster("ghost")
des.monster("ghost")

des.monster("sergeant")

des.monster("damned pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
