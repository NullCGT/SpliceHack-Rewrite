--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "hardfloor")
--123456789012345678901234567890123456789012345678901234567890123456789012345
des.map({ halign = "left", valign = "top", map = [[
----------------------------------------------------------------------------
|....................---------.......................---------.............|
|....................F...|...|.......................F...|...|.............|
|....................|...|...F.......................|...|...F.............|
|....|---|---|.......|---|---|.......|---|---|.......|---|---|.............|
|....F...|...|.......F...|...|.......F...|...|.......F...|...|.............|
|....|...|...F.......|...|...F.......|...|...F.......|...|...F.............|
|....|---|---|.......|---|---|.......|---|---|.......|---|---|.............|
|....F...|...|.......F...|...|.......F...|...|.......F...|...|.............|
|....|...|...F.......|...|...F.......|...|...F.......|...|...F.............|
|....|---|---|.......|---|---|.......|---|---|.......|---|---|.............|
|........|...|.......F...|...|.......F...|...|.......F...|...|.............|
|....|...|...F.......|...|...F.......|...|...F.......|...|...F.............|
|....|---|---|.......|---|---|.......|---|---|.......|---|---|.............|
|....F...|...|.......F...|...|.......F...|...|.......F...|...|.............|
|....|...|...F.......|...|...........|...|...F.......|...|...F.............|
|....|---|---|.......|---|---|.......|---|---|.......|---|---|.............|
|........|...|.......................F...|...|.............................|
|....|...|...F.......................|...|...F.............................|
|--------------------------------------------------------------------------|
]] });
-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("up", 74,03)
des.stair("down", 03,17)
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))
-- "Regular" prisoners
des.monster({id="inmate", x=59, y=02})
des.monster({id="inmate", x=55, y=08})
des.monster({id="inmate", x=43, y=14})
des.monster({id="inmate", x=38, y=05})
des.monster({id="inmate", x=27, y=02})
des.monster({id="inmate", x=23, y=08})
des.monster({id="inmate", x=11, y=14})
des.monster({id="inmate", x=06, y=05})
-- Undead prisoners
des.monster({id="ghost", x=42, y=17,name="Orzo the Inmate"})
if math.random(0,99) < 50 then
  des.monster({id="ghost", x=40, y=18,name="Fredgar the Inmate"})
end
if math.random(0,99) < 50 then
  des.monster({id="ghost", x=06, y=12,name="Rastilon the Inmate"})
end
des.monster({id="skeleton", x=28, y=15,asleep=0})
-- Bugs and snakes
des.monster({id="pit viper", x=06, y=17})
des.monster("xan")
-- Corrupt guards
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
-- Random traps
des.trap("web")
des.trap("web")
des.trap("web")
des.trap("web")
-- Prison debris
if math.random(0,99) < 75 then
  des.object("iron chain")
end
if math.random(0,99) < 75 then
  des.object("iron chain")
end
if math.random(0,99) < 75 then
  des.object("iron chain")
end
if math.random(0,99) < 75 then
  des.object("iron chain")
end
if math.random(0,99) < 75 then
  des.object("iron chain")
end
if math.random(0,99) < 75 then
  des.object("heavy iron ball")
end
if math.random(0,99) < 75 then
  des.object("heavy iron ball")
end

