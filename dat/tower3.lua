-- NetHack 3.7	tower.des	$NHDT-Date: 1432512784 2015/05/25 00:13:04 $  $NHDT-Branch: master $:$NHDT-Revision: 1.9 $
--	Copyright (c) 1989 by Jean-Christophe Collet
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("noteleport", "hardfloor", "solidify", "noflip")
des.map({ halign = "half-left", valign = "center", map = [[
--------------------------------------------------------------------------
|........................................................................|
|.-S------------------------------------------------------------------S-.|
|.|....................................................................|.|
|.|............................-----------------.........---.---.---...|.|
|.|............................|..+.........+..|.........|.|.|.|.|.|...|.|
|.|............................---|......-----------------S---S---S---.|.|
|.|...............................|......|.............|.S.........S.|.|.|
|.|...............................|......|.............---.------+----.|.|
|.|...............................+......+...............+......|..|...|.|
|.|...............................|......|.............--------.------.|.|
|.|...............................|......|.............|.S......+..S.|.|.|
|.|............................---|......-----------------S---S---S---.|.|
|.|............................|..+.........+..|.........|.|.|.|.|.|...|.|
|.|............................-----------------.........---.---.---...|.|
|.|....................................................................|.|
|.-S------------------------------------------------------------------S-.|
|........................................................................|
--------------------------------------------------------------------------
]] });
-- Random places are the 10 niches
local place = { {58,05},{62,05},{66,05},{56,07},{68,07},
{56,011},{68,011},{58,13},{62,13},{66,13} }

des.levregion({ type="branch", region={06,09,06,09} })
des.ladder("up", 66,09)
-- All doors are, of course, locked
des.door("locked",34,05)
des.door("locked",34,09)
des.door("locked",44,05)
des.door("locked",44,13)
des.door("locked",34,13)
des.door("locked",41,09)
des.door("locked",57,09)
des.door("locked",65,08)
des.door("locked",64,11)
-- Let's put a dragon behind the door, just for the fun...
des.monster("D", 56, 09)
-- The legions of Vlad...
des.monster({ x=12, y=05 })
des.monster({ x=12, y=12 })
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('V')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster('Z')
des.monster("Alucard", 35,10)
des.monster('V',35,08)
des.monster('V',43,10)
des.monster('V',43,08)
des.monster('V',45,10)
des.monster('V',34,08)
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.monster()
des.object("long sword",place[4])
des.trap({ coord = place[4] })
des.object("lock pick",place[1])
des.trap({ coord = place[1] })
des.object("elven cloak",place[2])
des.trap({ coord = place[2] })
des.object("blindfold",place[3])
des.trap({ coord = place[3] })
-- Walls in the tower are non diggable
des.non_diggable(selection.area(00,00,71,17))
