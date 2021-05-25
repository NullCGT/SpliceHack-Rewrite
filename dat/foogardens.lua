-- The foocubus level
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "nommap")
des.map([[
...................................}}}}}}}}}}}.......}|--------------------|0
.....................................}}}}}}}}}.......}|......S.............|1
......................................}}}}}}}}}......}|......|.............|2
..............}}}}}.......................}}}}}......}|......|.............|3
.............}}}}}}}.......................}}}}......}S......|.....|..-----|4
.............}}}}}}}.......................}}}}......}|......|.....|.......|5
..............}}}}}.........................}}}}.....}|......|.....|.......|6
.............................................}}}}....}|---S---------------S|7
.............................................}}}}}}}}}|......S.............|8
.............................................}}}}}}}}}|......|.............|9
............................................}}}}}....}|---S---------------S|0
............................................}}}}}....}|......|......|......|1
............................................}}}}}....}|......|......+......|2
.............................................}}}.....}|--..--|....|--------|3
.............................................}}}.....}|.|..|.|--+--........|4
.............................................}}}}....}|.-++-.|.............|5
..............................................}}}}...}|......S.............|6
..............................................}}}}}..}|--------|.........|-|7
..............................................}}}}}}}}}}}}}}}}}-----------}}8
..............................................}}}}}}}}}}..T...}}}}}}}}}}}}}.9
]]);
des.non_diggable(selection.area(00,00,75,19))
des.region(selection.area(00,00,53,19), "lit")
des.region(selection.area(00,53,75,19), "unlit")
des.replace_terrain({ region={00,00, 53,19}, fromterrain=".", toterrain="T", chance=20 })
des.drawbridge({dir="east",state="closed",x=53,y=08})
des.drawbridge({dir="east",state="closed",x=53,y=09})
des.stair("up", 02,08)
des.stair("down", 74,08)
-- doors
des.door("closed",57,17)
des.door("closed",58,15)
des.door("closed",68,12)
des.door("closed",64,14)
-- random monsters in random spots
des.monster("succubus")
des.monster("n")
des.monster("n")
des.monster("n")
des.monster("n")
des.monster("n")
des.monster("n")
des.monster("incubus")
des.monster("baobhan-sith")
des.monster("wood nymph")
des.monster("vampire mage")
des.monster("vampire mage")
des.monster()
des.monster()
des.monster({class=";", x=45, y=09})
des.monster({class=";", x=44, y=06})
des.monster({class=";", x=40, y=00})
des.monster({class=";", x=53, y=02})
des.monster({class=";", x=53, y=05})
des.monster({class=";", x=53, y=08})
des.monster({class=";", x=53, y=13})
des.monster({class=";", x=53, y=15})
-- castle denizens --
des.monster({class="&", x=57, y=03})
des.monster({class="&", x=72, y=02})
des.monster({class="n", x=73, y=02})
des.monster({class="n", x=58, y=16})
des.monster({class="n", x=64, y=12})
-- the demon lord and their gaurdians
des.monster({id="Malcanthet", x=74, y=08})
des.monster({id="succubus", x=74, y=09, name="Touch"})
des.monster({id="succubus", x=73, y=08, name="Breath"})
des.monster({id="incubus", x=73, y=09, name="Taste"})
-- traps and objects
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()