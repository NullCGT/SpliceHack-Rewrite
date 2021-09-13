-- NetHack 3.7	sokoban.des	$NHDT-Date: 1432512784 2015/05/25 00:13:04 $  $NHDT-Branch: master $:$NHDT-Revision: 1.13 $
--	Copyright (c) 1998-1999 by Kevin Hugo
-- NetHack may be freely redistributed.  See license for details.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "premapped", "solidify");

des.map([[
-----------       -----------
|....|....|--     |.........|
|....|......|     |.........|
|.........|--     |.........|
|....|....|       |.........|
|-.---------      |.........|
|....|.....|      |.........|
|....|.....|      |.........|
|..........|      |.........|
|....|.....|---------------+|
|....|......................|
-----------------------------
]]);
des.stair("down", 11,02)
des.stair("up", 23,04)
des.door("locked", 27,09)
des.region(selection.area(00,00,28,11), "lit")
des.non_diggable(selection.area(00,00,28,11))
des.non_passwall(selection.area(00,00,28,11))

boulders =
{ {03,02}, {04,02}, {06,02}, {06,03}, {07,02}, {03,06}, {02,07}, {03,07}, {03,08}, {02,09},
  {03,09}, {04,09}, {06,07}, {06,09}, {08,07}, {08,10}, {09,08}, {09,09}, {10,07}, {10,10} }
shuffle(boulders)
eyeballs =
{ "freezing sphere", "freezing sphere", "shocking sphere", "whirling sphere",
  "flaming sphere", "flaming sphere", "concussive sphere", "psionic sphere" }

des.object("boulder",boulders[1]) -- spawn just one boulder
for pos=2,20 do
    if percent(70) then
        des.monster("gas spore", boulders[pos])
    elseif percent(90) then
        shuffle(eyeballs)
        des.monster(eyeballs[1], boulders[pos])
    else
        des.monster("e", boulders[pos])
    end
end

-- Traps
des.trap("hole",26,10)
des.trap("land mine") -- a little spice

-- Random objects
-- no food, because you don't have to spend many turns pushing boulders around.
des.object({ class = "=" });
des.object({ class = "/" });

for i=0,12 do
    des.monster("gas spore", 23, 02)
end