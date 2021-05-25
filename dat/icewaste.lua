--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport", "hardfloor", "icedpools")
des.message("The air here is cold and dead. Snow falls silently from the sky above.")
des.message("This world died a long time ago, yet you still feel as if you are not alone...")
des.level_init({ style = "solidfill", fg = "I" })
des.map([[
xxxxxxxxxxxx-------xxxxxxxxxxxxxxxxxxxxxxxxxxx----------xxxxxxxxxxxxxxxxxxxx
xxx-----xxxx|.....|xxxxxxxxxxxxxxxxxxxxxxxxxxx|........|xxxxxxxxxxxxxxxxxxxx
xxx....|xxxx|.....|xxxxxxxxxxxxxxxxxxxxxxxxxxx|........xxxxxxxxxxxxxxxxxxxxx
x|xx----xxxx|.....|xxxxx--..---------xx-------------xxxxxxx----xxxxx------xx
x|.x|xxxxxxx---.---xxxxx|...........|xx|............xxxxxxx|xxxxxxxxxxxxx|xx
x----xxxxxxxxxxxxxxxxxxx|...........|xx|...........|xxxxxxx|xxxxxxxxxxxxxxxx
xxxxxxxxx-------xxxxxxxx|...........|xx|...........|x-----x|xxxxxxxxxxxxxxxx
xxxxxxxxx|.....|xxxxxxxx|...........|xx|...........|x....|x|xxxxxxxxxxxxx|xx
xxxxxxxxx|......xxxxxxxx-------..----xx----.-.--.---x....|x|xxxxxxxxxxxxxxxx
-----xxxx|.....|xxx---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|...|x|xxxxxxxxxxxxxxxx
|...|xxxx|.....|xxx..|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx----|x|xxxxxxxxxxxxxxxx
|...|xxxx|.....|xxx..|xx-------------xx-----.-------xxxxxxx|xxxxxxxxxxxxx|xx
|...---xx|.....|xxx---xx............|xx|...........|xxxxxxx|xxxxxxxxxxxxx|xx
|.....|xx|.....|xxxxxxxx............|xx|...........|xxxxxxx|xxxxxxxxxxxxx|xx
|.....|xx-------xxxxxxxx|............xx|...........|xxxxxxx---------xxxx-|xx
|......xxxxxxxxxxxxxxxxx-------------xx----...------xxxxxxxxxxxxxxxxxxxxxxxx
x------xxxxx----------xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-----xxxxxx
xxxxxxxxxxxx.........|xxxxxxxx-------------------------xxxxxxxxxx|...|xxxxxx
xxxxxxxxxxxx.........|xxxxxxxx|.......................|xxxxxxxxxx....|xxxxxx
xxxxxxxxxxxx|.........xxxxxxxx|........................xxxxxxxxxx----|xxxxxx
]]);
-- Dungeon Description
des.region(selection.area(00,00,75,19), "unlit")
-- Portal arrival point
des.levregion({ region = {12,08,12,08}, exclude = {0,0,0,0}, type="branch" })
-- Fountains
des.feature("fountain",37,9)
des.feature("fountain",38,9)
des.feature("fountain",37,10)
des.feature("fountain",38,10)
-- Monsters
des.monster("ice vortex")
des.monster("ice vortex")
des.monster("yeti")
des.monster("blue jelly")
des.monster("walrus")
des.monster("walrus")
des.monster({id="walrus",peaceful=0})
des.monster({id="frost giant",peaceful=0})
des.monster({id="frost giant",peaceful=0})
des.monster({id="frost giant",peaceful=0})
des.monster("draugr")
des.monster("draugr")
des.monster("draugr")
des.monster("draugr")
des.monster("draugr")
des.monster("draugr")
des.monster("draugr")
-- Boss
des.monster({id="Failure Eidolon", x=66, y=8})
des.object({id="Orb of Permafrost", x=66, y=8})
-- Guaranteed pair of earmuffs
des.object({id="Earmuffs", x=66, y=10})
-- Loot
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