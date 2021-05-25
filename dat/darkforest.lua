--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noflip")
des.message("A loud howl sounds in the distance, and it is answered by a chorus of howls all around you.")
des.level_init({ style="mines", fg=".", bg="T", smoothed=true, joined=true, lit=0, walled=true })

--
des.stair("up")
des.stair("down")
--
des.monster("s")
des.monster("s")
des.monster("d")
des.monster("d")
des.monster("d")
des.monster("d")
des.monster("d")
des.monster("r")
des.monster("r")
des.monster({id="alpha werewolf", peaceful=0})
des.monster("werewolf")
des.monster("werewolf")
des.monster({id="werewolf", peaceful=0})
des.monster("werejackal")
des.monster("werebear")
des.monster({id="wererat", peaceful=0})
des.monster("wererat")
des.monster({id="werecockatrice", peaceful=0})
des.monster({id="weretiger", peaceful=0})
des.monster("stalker")
des.monster()
des.monster()
-- The Boss
des.monster("Drauglir")
--
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object("amulet of danger")
des.object("sprig of wolfsbane")
des.object("clove of garlic")
des.object("clove of garlic")
des.object("clove of garlic")
-- The reward!
des.object("moonstone")