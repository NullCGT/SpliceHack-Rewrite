--	SCCS Id: @(#)Pirate.des	3.4	2002/04/08
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
--
--	Tortuga, The Turtle Island
--
--	The "start" level for the quest.
--
--	Here you meet your (besieged) class leader, Dread Pirate (ret.)
--	and receive your quest assignment.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport", "hardfloor")

des.map([[



               ---- ---- ---- ---- ---- ---- ---- ----    F-F-       -F-F
               -  | |  | |  | |  | |  | |  | |  | |  -    |..F-F-F-F-F..|
               -  | |  | |  | |  | |  | |  | |  | -  |    F.............F
               ---- ---- ---- ---- ---- ---- ---- ----    -|.FFFFFFFFF.F-
                                                           |.F.......F.|
        ----  -----                                        |.F.-F-F-.F.F
        -  -  -   -                                        |.F.F...|---|
        -  |  |   -                                        |.-.|...|...|
        -------   |                                        |.F.F...|---|
           -  -----                              -----     |.F.-F-F-.F.F
           -   |     -----  -----  -----  -----  |   |     |.F.......F.|
           |   |     |   |  |   |  |   |  |   |  |   |    --.FFFFFFFFF.F-
           -----     |   |  |   |  |   |  |   |  |   |    F.............F
                     |   |  |   |  |   |  |   |  |   |    |..F-F-F-F-F..|
                     -----  -----  -----  -----  -----    F-F-       -F-F



]]);
-- Monsters on siege duty.
des.monster("sergeant")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")
des.monster("soldier")

des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("crossbow")
des.object("crossbow bolt")
des.object("knife")
des.object("knife")
des.object("knife")
des.object("knife")
des.object("knife")
des.object("spear")
des.object("spear")



--0         1         2   	   3	     4		   5		 6	       7
--0123456789012345678901234567890123456789012345678901234567890123456789012345
des.map([[


              ......................................
            ....---.----.----.----.----.----.--.-.--.-    F-F-       -F-F
           .......|.|  |.|  |.|  |.|  |.|  |.|..|.|....   |  F-F-F-F-F  |
         .........|.|  |.|  |.|  |.|  |.|  |.|..|....|... F             F .
        .......-..-.----.----.----.----.----.-.--.-..-... -| FFFFFFFFF F- .
       ....................................................| F       F |  .
       .-..-..-----....                              ......| F -F-F- F F  .
      ...............                                  ....| F F   |---|  .
     ......|..|.....                                    ...| + |   |   |....
      ..-.----....|..                                  ....| F F   |---|  .
       .........---....                          -----.....| F -F-F- F F  .
       ........|.....-----..-----..-----..-----..|   |.....| F       F |  .
        ...|...|.....|   |..|   |..|   |..|...|..|   |... -- FFFFFFFFF F- .
         ..-----.....|   |..|   |..|   |..|...|..|   |... F             F .
           ..........|   |..|   |..|   |..|...|..|   |..  |  F-F-F-F-F  |
            .........-----..-----..-----..-----..-----.   F-F-       -F-F
              .......................................


]]);
-- Monsters on siege duty.
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
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
des.monster("skeletal pirate")


--0         1         2   	   3	     4		   5		 6	       7
--0123456789012345678901234567890123456789012345678901234567890123456789012345
des.map([[
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}}}}}}}}}}}}}}......................................}}}}}}}}}}}}}}}}}}}}}}}}
}}}}}}}}}}}}...+---.----.----.----.----.----.--+-.--+-}}}}F-F-}}}}}}}-F-F}}}
}}}}}}}}}}}....+..|.|##|.|##|.|##|.|##|.|##|.|..|.|..+.}}}|..F-F-F-F-F..|}}}
}}}}}}}}}......+..|.|##|.|##|.|##|.|##|.|##|.|..|.+..|...}F.............F}.}
}}}}}}}}.......-++-.--+-.--+-.--+-.--+-.--+-.-+--.-++-...}-|.FFFFFFFFF.F-}.}
}}}}}}}....................................................|.F#######F.|}}.}
}}}}}}}.-++-..-----....                              ......|.F#-F+F-#F.F}}.}
}}}}}}..+..+..+...+..    .......................  ..   ....|.F#F...|---|}}.}
}}}}}...+..|..|...+.    .........................H...   ...|.+#|...+...+....
}}}}}}..-+----+...|..  H .......................  ..   ....|.F#F...|---|}}.}
}}}}}}}....+..++---....                          -----.....|.F#-F+F-#F.F}}.}
}}}}}}}....+...|.....-----..-----..-----..-----..|.|.|.....|.F#######F.|}}.}
}}}}}}}}...|...|.....|...|..|...|..|...|..|...|..|.|.|...}--.FFFFFFFFF.F-}.}
}}}}}}}}}..-----.....|...|..|...|..|...|..|...|..|+-+|...}F.............F}.}
}}}}}}}}}}}..........|...|..|...|..|...|..|...|..S...|..}}|..F-F-F-F-F..|}}}
}}}}}}}}}}}}.........-+---..-+---..-+---..-+---..-----.}}}F-F-}}}}}}}-F-F}}}
}}}}}}}}}}}}}}.......................................}}}}}}}}}}}}}}}}}}}}}}}
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
]]);
--0123456789012345678901234567890123456789012345678901234567890123456789012345
--0         1         2   	   3	     4		   5		 6	       7
-- Dungeon Description
des.region(selection.area(00,00,75,20), "lit")
-- Portal arrival point
des.levregion({ region = {05,00,58,20}, exclude = {24,09,52,11}, type="branch" })
-- Stairs
des.stair("down", 65,10)
-- Doors
des.door("closed",22,06)
des.door("closed",22,06)
des.door("closed",27,06)
des.door("closed",32,06)
des.door("closed",37,06)
des.door("closed",42,06)

des.door("locked",67,10)
des.door("locked",71,10)

des.door("closed",22,17)
des.door("closed",29,17)
des.door("closed",36,17)
des.door("closed",43,17)

des.door("locked",49,16)
des.door("locked",50,15)
des.door("locked",52,15)

-- Shops
des.region({ region={22,14,24,16},lit=1,type="potion shop"})
des.object("booze", 22, 14)
des.object("booze", 23, 14)
des.object("booze", 24, 14)
des.object("booze", 24, 15)
des.object("booze", 23, 15)
des.object("booze", 22, 15)
des.object("booze", 23, 16)
des.object("booze", 24, 16)
des.region({ region={29,14,31,16},lit=1,type="weapon shop"})
des.region({ region={36,14,38,16},lit=1,type="weapon shop"})
des.region({ region={43,14,45,16},lit=1,type="tool shop"})
des.monster({id="succubus", x=50, y=13})
des.object({id="scare monster", x=50, y=14, buc="cursed"})
des.monster({id="incubus", x=52, y=13})
des.object({id="scare monster", x=52, y=14, buc="cursed"})

-- Dread Pirate (ret.)
des.monster({id="Mayor Cummerbund", x=51, y=10, inventory = function()
  des.object({ id = "scimitar", spe = 4, buc = "cursed"});
  des.object({ id = "jacket", spe = 2 });
  des.object({ id = "small shield", spe = 2 });
  des.object({ id = "high boots", spe = 2 });
  des.object({ id = "gloves", spe = 2 });
end })
-- The treasure of the Dread Pirate
des.object("chest", 52, 10)
-- Guards for the audience chamber
des.monster({id="pirate brother", x=22, y=05})
des.monster({id="pirate brother", x=27, y=05})
des.monster({id="pirate brother", x=32, y=05})
des.monster({id="pirate brother", x=37, y=05})
des.monster({id="pirate brother", x=42, y=05})
des.monster({id="pirate brother", x=27, y=09})
des.monster({id="pirate brother", x=37, y=11})
des.monster({id="pirate brother", x=47, y=10})

--Used Cannon Balls
des.object({id="heavy iron ball", x=13, y=15})
des.object({id="heavy iron ball", x=16, y=12})
des.object({id="heavy iron ball", x=21, y=09})
des.object({id="heavy iron ball", x=21, y=16})
des.object({id="heavy iron ball", x=45, y=08})
des.object({id="heavy iron ball", x=51, y=08})
des.object({id="heavy iron ball", x=52, y=08})

-- Non diggable walls
des.non_diggable(selection.area(00,00,75,20))

--
--	Welcome to Shipwreck Island
--	The "locate" level for the quest.
--
--	Here you make landfall on shipwreck island and
--	move inland towards the center of the island.
--
