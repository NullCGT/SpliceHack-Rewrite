-- Dan.des
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor")

des.map([[
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
............................................................................
]]);
-- Setup
des.region(selection.area(00,00,75,19), "lit")
des.replace_terrain({ region={00,00, 75,19}, fromterrain=".", toterrain="T", chance=15 })
-- Portal arrival point
des.levregion({ region = {00,00,75,19}, type="branch" })
-- Stairs
des.stair("down")
-- Altar
des.altar({ x=37, y=10, align="law", type="altar" })
-- Troupe Leader
des.monster("Troupe Leader", 37, 10)
-- guards for the audience chamber
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
des.monster("backup dancer")
-- LOTS of traps
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
des.trap()
-- Elementals
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
des.monster({class="E",peaceful=0})
-- A woodchuck
des.monster("woodchuck")