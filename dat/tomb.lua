-- Lost Tomb
-- Copyright (c) 1989 by Jean-Christophe Collet
-- Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed. See license for details.

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.map({ halign = "center", valign = "center", map = [[
             --------                     
             |......|                     
             |......|                     
             |---.--|                     
                 #                        
                 #                        
            |----S---|           --------|
|------|    |........|           |.......|
|......------........|------------.......|
|......+.............+...........+.......|
|......+.............+...........+.......|
|......------........|------------.......|
|------|    |........|           |.......|
            |---S----|           --------|
                #                         
                #                         
             |--.---|                     
             |......|                     
             |......|                     
             --------                     
]]});
--
des.levregion({ region = {01,09,01,09}, exclude = {0,0,0,0}, type = "branch" })
des.stair("up", 01, 09)
des.door("locked", 7, 09)
des.door("locked", 7, 10)
des.door("locked", 21, 09)
des.door("locked", 21, 10)
des.door("locked", 33, 09)
des.door("locked", 33, 10)
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.object()
des.object("chest", 16, 01)
des.object({x = 16, y = 01})
des.object({x = 16, y = 01})
des.object({x = 16, y = 01})
des.object("chest", 17, 18)
des.object({x = 17, y = 18})
des.object({x = 17, y = 18})
des.object({x = 17, y = 18})
-- The Lich and her earthly possessions.
des.monster("L", 40, 9)
des.object({"chest", coord={40, 09},
    contents = function()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.object("?")
        des.object("?")
        des.object("?")
        des.object("?")
        des.object({ class = "!", id = "water", buc = "not-uncursed", quantity = 2 })
        des.object()
        des.object()
        des.object()
    end
});
des.object({"chest", coord={40, 10},
    contents = function()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.gold()
        des.object("?")
        des.object("?")
        des.object("?")
        des.object("?")
        des.object("+")
        des.object("+")
        des.object("+")
        des.object("+")
        des.object()
        des.object()
        des.object()
        des.object()
        des.object()
    end
});

des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("shadow")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")