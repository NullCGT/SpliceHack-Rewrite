-- NetHack 3.7	sokoban.des	$NHDT-Date: 1432512784 2015/05/25 00:13:04 $  $NHDT-Branch: master $:$NHDT-Revision: 1.13 $
--	Copyright (c) 1998-1999 by Kevin Hugo
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "premapped", "solidify");

des.map([[
 ----          -----------
-|..|-------   |.........|
|..........|   |.........|
|..-----.-.|   |.........|
|..|...|...|   |.........|
|.........-|   |.........|
|.......|..|   |.........|
|.----..--.|   |.........|
|........|.--  |.........|
|.---.-.....------------+|
|...|...-................|
|.........----------------
----|..|..|               
    -------               
]]);
des.stair("down", 03,01)
des.stair("up", 20,04)
des.door("locked",24,09)
des.region(selection.area(00,00,25,13), "lit")
des.non_diggable(selection.area(00,00,25,13))
des.non_passwall(selection.area(00,00,25,13))

boulders =
{ {02,03}, {08,03}, {09,04}, {02,05}, {04,05}, {09,05}, {02,06}, {05,06},
  {06,07}, {03,08}, {07,08}, {05,09}, {10,09}, {07,10}, {10,10}, {03,11} }
shuffle(boulders)
eyeballs =
{ "freezing sphere", "freezing sphere", "shocking sphere", "whirling sphere",
  "flaming sphere", "flaming sphere", "concussive sphere", "psionic sphere" }

des.object("boulder",boulders[1]) -- spawn just one boulder
for pos=2,16 do
    if percent(65) then
        des.monster("gas spore", boulders[pos])
    elseif percent(90) then
        shuffle(eyeballs)
        des.monster(eyeballs[1], boulders[pos])
    else
        des.monster("e", boulders[pos])
    end
end

-- Traps
des.trap("hole",23,10)
des.trap("land mine") -- a little spice

-- Random objects
-- no food, because you don't have to spend many turns pushing boulders around.
des.object({ class = "=" });
des.object({ class = "/" });

for i=0,15 do
    des.monster("gas spore", 20, 02)
end