--	SCCS Id: @(#)Pirate.des	3.4	2002/04/08
--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991-2 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.level_flags("noteleport")

--0         1         2   	   3	     4		   5		 6	       7
--01234567890123456789012345678901234567890123456789012345678901234567890
des.map([[





                                    .
                                  .....
                                  .....
                                 .......
                                  .....
                                  .....
                                    .





]]);
--01234567890123456789012345678901234567890123456789012345678901234567890
--0         1         2   	   3	     4		   5		 6	       7

des.object({ id = "chest", coord = {35,08},
            contents = function()
              des.object("$")
              des.object("$")
              des.object("*")
              des.object("*")
              des.object("*")
              des.object("*")
            end
});
des.object({ id = "chest", coord = {36,07},
            contents = function()
              des.object("$")
              des.object("$")
              des.object("*")
              des.object("*")
              des.object("*")
              des.object("*")
            end
});
des.object({ id = "chest", coord = {36,08},
            contents = function()
              des.object("$")
              des.object("$")
              des.object("*")
              des.object("*")
              des.object("*")
              des.object("*")
            end
});
des.object({ id = "chest", coord = {36,09},
            contents = function()
              des.object("$")
              des.object("$")
              des.object("*")
              des.object("*")
              des.object("*")
              des.object("*")
            end
});
des.object({ id = "chest", coord = {37,08},
            contents = function()
              des.object("$")
              des.object("$")
              des.object("*")
              des.object("*")
              des.object("*")
              des.object("*")
            end
});
des.object("$", 35, 08)
des.object("$", 36, 07)
des.object("$", 36, 08)
des.object("$", 36, 09)
des.object("$", 37, 08)
des.object("$", 35, 08)
des.object("$", 36, 07)
des.object("$", 36, 08)
des.object("$", 36, 09)
des.object("$", 37, 08)

des.object("scimitar", 35, 08)
des.object("scimitar", 36, 07)
des.object("scimitar", 36, 08)
des.object("scimitar", 36, 09)
des.object("scimitar", 37, 08)

des.object("(")
des.object("(")
des.object("(")
des.object("(")
des.object("(")
des.object("(")
des.object(")")
des.object(")")
des.object(")")
des.object(")")
des.object(")")
des.object(")")

des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")

des.object("$")
des.object("$")
des.object("$")
des.object("$")
des.object("$")
des.object("$")
des.object("$")
des.object("$")

des.object({ id = "chest", coord = {35,08},
            contents = function()
              des.object("$")
            end
});

--0         1         2   	   3	     4		   5		 6	       7
--01234567890123456789012345678901234567890123456789012345678901234567890
des.map([[
                        ###                                         #
#                      ###                  #                       ##
###                   ##            .        ##                      ##
 ###                 ##            ###       ###        #           ##
  ###                #           #H#H#HH       #         ##         #
    ##        #                 H#  #  ##       #         ###      #
     #       ##                 H ##H## H                  ###
            ##                 ## #H#H# ##                  ###
           ##                 .#H#H###H#H#.                 ##
          ###                  ## #H#H# ##                 ##
           ###                  H ##H## H                 ##     #
   #        ###         #       ##  #  #H                 #      ##
  #           ##         #       HH#H#H#           #              ###
 ##             #        ###       ###            ##               ###
##                        ##        .            ##                 ###
 ##                         #                  ###                    #
  #                                           ###
]]);
--01234567890123456789012345678901234567890123456789012345678901234567890
--0         1         2   	   3	     4		   5		 6	       7
-- Dungeon Description
des.region(selection.area(34,06,38,10), "lit")
-- Stairs
--des.stair("up", 00,00, 70,16), (20,00, 50,16)
des.levregion({ region={00,00, 70,16}, exclude={20,00, 50,16}, region_islev=1, exclude_islev=1, type="stair-up" });

des.mazewalk(36,02,"north")
des.mazewalk(30,08,"west")
des.mazewalk(42,08,"east")
des.mazewalk(36,14,"south")

-- Objects
-- OBJECT:('(',"chest"),(36,08),cursed,0,name:"The Treasury of Proteus"
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
-- Random monsters.
des.monster({id="Blackbeard's Ghost", x=36, y=08})
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("human zombie")
des.monster("Z")
des.monster("Z")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("wraith")
des.monster("W")

des.monster("damned pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")

des.monster("damned pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")

des.monster("damned pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")
des.monster("skeletal pirate")