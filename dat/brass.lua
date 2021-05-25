--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport", "hardfloor", "nommap", "noflip")
des.message("You find yourself in the alleys of an enormous city composed entirely of metal.")
des.map([[
...---------LLL-----------------...............|.........|..........|....|..
...|.......|LLL+...............|..------------.|.........|..........|....|..
L..|.......|LLL|...............|..|....--.--.|.+.........|.-------..----+|..
...|.......|LLL|...............|..|....|.L.|.|.|.........|.+.....|.......|..
...|.......|LL.|...............|..|.....LLL..|.|.........|.|.....|.......|..
...----+----.LL|...............|..|....|.L.|.|.-----------.|.....|.......|..
.L..L........LL|...............|..|....--L--.|.............|.....|.......|..
.------------LL|...............|......LLLL|..|.............-------.......|.L
.|..........|LL-----------------....LLL-------...........................|LL
L+..........|LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
.|..........|L-+-------------------...LLLLLL..............LLLLLLLLLLLLLLLLLL
.------------L|....|..............|......................LLLL............|.L
LLLLLLLLLLLLLL|....|..............|.------------......LLLL...............|..
...LLLLLL------....|..............|.|..........|.....LLL.................|..
.....LLLL|.........|..............|.|..........|....L.....------+----....|..
-+---...L|.........---------+------.|..........-------....|.........|....|..
|...|....|.........+.........|....---................|....|.........|....|..
|...|....-----------.........|....+..................|....|.........|---+|..
|...|.......................L|....--------------------....-----------....|..
-----.....................LLL|......................................|....|..
]]);

-- City features
des.feature("fountain",26,17)

-- Shops
des.region({ region={04,01,10,04}, lit=1, type="shop", filled=1 })
des.region({ region={02,08,11,10}, lit=1, type="shop", filled=1 })
des.region({ region={20,11,33,14}, lit=1, type="shop", filled=1 })
des.region({ region={16,01,30,7}, lit=1, type="shop", filled=1 })
des.region({ region={48,00,56,4}, lit=1, type="shop", filled=1 })
des.region({ region={59,15,67,17}, lit=1, type="shop", filled=1 })

-- Portal located in left half of the level, somewhere in the mess of shops.
--des.portal((0,0,40,19),(65,13,75,19),"water")
des.levregion({ region = {0,0,40,19}, region_islev=1, type="portal", name="water" });

-- Doors
des.door("locked",15,01)
des.door("locked",01,09)
des.door("locked",01,15)
des.door("locked",07,05)
des.door("locked",15,01)
des.door("locked",15,10)
des.door("locked",19,16)
des.door("locked",28,15)
des.door("locked",34,17)
des.door("locked",47,02)
des.door("locked",59,03)
des.door("locked",64,14)
des.door("locked",72,02)
des.door("locked",72,17)


-- It's a city, but it is the plane of fire, after all.
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")
des.trap("fire")

-- A few boulders :)
des.object("boulder")
des.object("boulder")
des.object("boulder")

-- The inhabitants of the city. A few are peaceful.
des.monster({ id = "tourist", peaceful=0 })
des.monster({ id = "djinni", peaceful=1 })
des.monster({ id = "djinni", peaceful= 1})
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "djinni", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })
des.monster({ id = "efreet", peaceful=0 })

des.monster({ id = "fire elemental", peaceful=1 })
des.monster({ id = "fusion elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })
des.monster({ id = "fire elemental", peaceful=0 })

des.monster("fire vortex")
des.monster({ id = "hell hound pup",peaceful=1 })
des.monster({ id = "phoenix", peaceful=0 })
des.monster({ id = "phoenix", peaceful=0 })
des.monster({ id = "vent wurm", peaceful=0 })

des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })
des.monster({ id = "salamander", peaceful=0 })