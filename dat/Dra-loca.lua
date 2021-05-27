-- NetHack 3.6	Drag.des
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
-- Based on Barb.des
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "hardfloor", "noflip")
des.level_init({ style="mines", fg=".", bg="P", smoothed=true, joined=true, lit=0, walled=false })

-- Dungeon Description
des.region(selection.area(00,00,75,19), "unlit")
-- Stairs
des.stair("up")
des.stair("down")
-- Objects
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
des.object()
des.object()
des.object()
-- Random traps (Heavily trapped)
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
-- Random monsters.
des.monster({class="Z",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({id="zombie dragon",peaceful=0})
des.monster({class="V",peaceful=0})
des.monster({id="caveman",peaceful=0})

--
--	The "goal" level for the quest.
--
--	You must battle the betrayer and his pet dragon.
--
