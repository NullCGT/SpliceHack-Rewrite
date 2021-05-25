-- The Banquet Hall
--
--
-- It's a party for everyone...

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.message("The air is filled with the sound of boisterous laughter and the clanking of tankards!")
des.map({ halign = "center", valign = "center", map = [[
    ......................................................    
    ......................................................    
..............................................................
...............LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL.............\..
...............LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL................
..............................................................
    ......................................................    
    ......................................................    
]]});
des.region({ region={00,00,61,07},lit=1,type="throne", filled=2 })

-- Features
des.levregion({ region = {30,01,30,01}, exclude = {0,0,0,0}, type="branch" })
des.stair("down", 30,01)
des.object({id="statue", x=08, y=01,montype="H",historic=true})
des.object({id="statue", x=52, y=01,montype="H",historic=true})
des.object({id="statue", x=08, y=06,montype="H",historic=true})
des.object({id="statue", x=52, y=01,montype="H",historic=true})

-- Creatures
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf",peaceful=0})
des.monster({id="dwarf wrestler",peaceful=0})
des.monster({id="dwarf wrestler",peaceful=0})
des.monster({id="dwarf noble",peaceful=0})
des.monster({id="dwarf noble",peaceful=0})
des.monster("dwarf")
des.monster("dwarf")
des.monster("h")
des.monster("h")
des.monster("h")
des.monster("H")
des.monster("H")
des.monster({id="storm giant", x=61, y=03,name="Lord Belaphius",peaceful=0})
des.monster({id="storm giant", x=61, y=03,name="Vizier Dophomor",peaceful=0})

-- Treasure
des.object({id="chest", x=61, y=03})
des.object({id="chest", x=61, y=05})
des.object("keg")
des.object("keg")
des.object("keg")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object()
des.object()
des.object()
