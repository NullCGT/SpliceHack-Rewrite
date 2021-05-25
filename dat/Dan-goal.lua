-- Dan.des
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "icedpools", "hardfloor")
des.replace_terrain({ region={00,00, 75,19}, fromterrain=".", toterrain="L", chance=10 })

des.map([[
xxxxx................L|--------------------------------|L..............xxxxx
xxxxx................L|................................|L..............xxxxx
xxxxx................L|................................|L..............xxxxx
xxxxx................L|................................|L..............xxxxx
xxxxx................L|................................|L..............xxxxx
xxxxx................L|................................|L..............xxxxx
xxxxx................L|------------..----..------------|L..............xxxxx
xxxxx................L|..............IIII..............|L..............xxxxx
xxxxx................L|..............IIII..............|L..............xxxxx
xxxxx................L|..............IIII..............|L..............xxxxx
xxxxxx...............L--..............II..............--L.............xxxxxx
xxxxxxx...............L|..............II..............|L.............xxxxxxx
xxxxxxxx..............L-----..........II..........-----L............xxxxxxxx
xxxxxxx...............LLLLL|..........II..........|LLLLL.............xxxxxxx
xxxxx.....................L___________II___________L...................xxxxx
..........................LLLLLLLLLLLL..LLLLLLLLLLLL........................
............................................................................
............................................................................
............................................................................
............................................................................
]]);
-- Setup
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("up", 6, 6)
-- Statues
des.object({id="statue", x=34, y=11,montype="E",historic=true})
des.object({id="statue", x=44, y=11,montype="E",historic=true})
des.object({id="statue", x=34, y=8,montype="E",historic=true})
des.object({id="statue", x=44, y=8,montype="E",historic=true})
des.object({id="statue", x=34, y=5,montype="E",historic=true})
des.object({id="statue", x=44, y=5,montype="E",historic=true})
des.object({id="statue", x=34, y=3,montype="E",historic=true})
des.object({id="statue", x=44, y=3,montype="E",historic=true})
-- Nemesis
des.monster("Time Elemental",38,3)
-- Mystikal Artefact
des.object({ id = "quarterstaff", x=38, y=3,buc="blessed",name="The Power Pole" })
-- Traps
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
des.trap()
-- Elementals
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})