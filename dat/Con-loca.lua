--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor")
--123456789012345678901234567890123456789012345678901234567890123456789012345
des.map({ halign = "left", valign = "top", map = [[
---------------                                              ---------------
|.....F.......| #################################            |............K|
|.....F.......+##              #                #############+.............|
|.....F.......|                #                #            |.............|
|.....+.......|                #                #            |.............|
|.....F.......|                #                #            |.............|
|.....F.......|              ###                #            |.............|
|.....F.......|             ##                  #            |FFFFFFFFFFFFF|
|--------------     #########                   #            |......|......|
                    #      |S-------|           #            |......|......|
                    #      |........|      ######            |-------------|
    #################      |........|      #    H                           
    #                      |........+#######    #                           
    #                      |----S---|           #            |----------|   
 |--+-------|                   #               #####        |..........|   
 |..........|                   #               #   #        |..........|   
 |..........|                   #     |------|  #   #########+..........|   
 |..........|                   ######S......+###            |..........|   
 |----------|                         |......|               |----------|   
                                      |------|                              
]] });
-- Dungeon Description
des.region({region = {01,01,13,07}, lit=1})
des.region({region = {02,15,11,17}, lit=1})
des.region({region = {62,01,74,09}, lit=1})
des.region({region = {62,14,71,17},lit=1,type="shop"})
des.region({region = {28,10,35,12},lit=1,type="barracks"})
des.region({region = {39,17,44,18}, lit=1})
-- Stairs
des.stair("up", 02,03)
des.stair("down", 39,17)
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
des.door("locked",04,14)
des.door("locked",06,04)
des.door("open",14,02)
des.door("closed",61,16)
des.door("closed",45,17)
des.door("locked",36,12)
des.door("closed",61,02)
-- Police station kops
des.monster({id="inmate", x=63, y=08})
des.monster({id="inmate", x=70, y=08})
des.monster({id="Keystone Kop", x=62, y=01,asleep=1})
des.monster({id="Keystone Kop", x=65, y=01,asleep=1})
des.monster({id="Keystone Kop", x=66, y=01,asleep=1})
des.monster({id="Keystone Kop", x=74, y=02,asleep=1})
des.monster({id="Kop Sergeant", x=63, y=03,asleep=1})
des.monster({id="Kop Sergeant", x=72, y=03,asleep=1})
des.monster({id="Kop Lieutenant", x=71, y=04,asleep=1})
des.monster({id="Kop Lieutenant", x=68, y=05,asleep=1})
des.monster({id="Kop Kaptain", x=64, y=06,asleep=1})
-- Iron golem in supply room
des.monster({id="iron golem", x=11, y=17,asleep=1})
-- Supply room junk
des.object("iron chain", 2, 15)
des.object("iron chain", 2, 15)
des.object("iron chain", 3, 15)
des.object("iron chain", 3, 15)
des.object("iron chain", 4, 15)
des.object("heavy iron ball", 4, 15)
des.object("iron chain", 4, 15)
des.object("iron chain", 5, 15)
des.object("iron chain", 5, 15)
des.object("iron chain", 6, 15)
des.object("iron chain", 6, 15)
des.object("iron chain", 6, 15)
des.object("iron chain", 7, 15)
des.object("heavy iron ball", 7, 15)
des.object("iron chain", 8, 15)
des.object("iron chain", 8, 15)
des.object("iron chain", 9, 15)
des.object("iron chain", 9, 15)
des.object("iron chain", 9, 15)
des.object("iron chain", 10, 15)
des.object("iron chain", 10, 15)
des.object("iron chain", 10, 15)
des.object("iron chain", 11, 15)
des.object("iron chain", 11, 15)
des.object("heavy iron ball", 11, 15)
des.object("iron chain", 2, 16)
des.object("heavy iron ball", 2, 16)
des.object("iron chain", 3, 16)
des.object("iron chain", 3, 16)
des.object("iron chain", 3, 16)
des.object("iron chain", 4, 16)
des.object("iron chain", 4, 16)
des.object("iron chain", 5, 16)
des.object("iron chain", 6, 16)
des.object("iron chain", 6, 16)
des.object("iron chain", 6, 16)
des.object("iron chain", 7, 16)
des.object("iron chain", 7, 16)
des.object("heavy iron ball", 7, 16)
des.object("iron chain", 7, 16)
des.object("iron chain", 8, 16)
des.object("iron chain", 8, 16)
des.object("iron chain", 9, 16)
des.object("iron chain", 9, 16)
des.object("iron chain", 9, 16)
des.object("iron chain", 10, 16)
des.object("iron chain", 10, 16)
des.object("iron chain", 11, 16)
des.object("iron chain", 2, 17)
des.object("iron chain", 3, 17)
des.object("iron chain", 3, 17)
des.object("iron chain", 3, 17)
des.object("iron chain", 4, 17)
des.object("heavy iron ball", 4, 17)
des.object("iron chain", 4, 17)
des.object("iron chain", 4, 17)
des.object("heavy iron ball", 4, 17)
des.object("iron chain", 5, 17)
des.object("iron chain", 6, 17)
des.object("iron chain", 7, 17)
des.object("iron chain", 7, 17)
des.object("iron chain", 7, 17)
des.object("iron chain", 8, 17)
des.object("heavy iron ball", 8, 17)
des.object("iron chain", 9, 17)
des.object("iron chain", 9, 17)
des.object("heavy iron ball", 9, 17)
des.object("iron chain", 9, 17)
des.object("iron chain", 10, 17)
des.object("iron chain", 10, 17)
des.object("iron chain", 10, 17)
des.object("heavy iron ball", 10, 17)
des.object("iron chain", 11, 17)


--
--	The "goal" level for the quest.
--
--	Here you meet Warden Arianna, your nemesis monster.  You have to
--	defeat Warden Arianna in combat to gain the artifact you have
--	been assigned to retrieve.
--
