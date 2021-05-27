--
--
--	The "start" level for the quest.
--
--	Here you meet your (besieged) class leader, Robert the Lifer
--	and receive your quest assignment.
--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor")
--123456789012345678901234567890123456789012345678901234567890123456789012345
des.map({ halign = "left", valign = "top", map = [[
|--------------------------------------------------------|-----------------|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|................K|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|---.---.---.---.---.---.---.---.---.---.---.---.---.---.|.................|
|..........................................................................|
|..........................................................................|
|....|.---.---.---.---.---.---.---.---.---.---.---.---.--------------..----|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|....|---------------------------------------------------|.................|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|....|--.---.---.---.---.---.---.---.---.---.---.---.---.|-----------------|
|..........................................................................|
|..........................................................................|
|..........................................................................|
|.----.---.---.---.---.---.---.---.---.---.---.---.---.--|.................|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|....|...|...|...|...|...|...|...|...|...|...|...|...|...|.................|
|--------------------------------------------------------|-----------------|
]] });
-- Dungeon Description
des.region(selection.area(00,00,75,19), "lit")
-- Stairs
des.stair("down", 64,08)
-- Portal arrival point
des.levregion({ region = {71,03,71,03}, exclude = {0,0,0,0}, type="branch" })
-- Altar
des.altar({x=70,y=16,align="chaos",type="shrine"})
-- Robert the Lifer
des.monster({id="Robert the Lifer", x=74, y=18})
des.monster({ id = "Robert the Lifer", coord = {74, 18}, inventory = function()
  des.object({ id = "stiletto", spe = 4, buc = "cursed" });
  des.object({ id = "striped shirt", spe = 4, buc = "cursed" });
end })
-- fellow prisoners
des.monster("inmate")
des.monster("inmate")
des.monster("inmate")
des.monster("inmate")
des.monster("inmate")
des.monster("inmate")
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
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
if math.random(0,99) < 50 then
  des.monster("prison guard")
end
-- Good `ol mimics
des.monster({id="giant mimic", x=74, y=05, appear_as="ter:staircase up"})
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
if math.random(0,99) < 50 then
  des.object("heavy iron ball")
end
if math.random(0,99) < 50 then
  des.object("heavy iron ball")
end
-- Non diggable walls
des.non_diggable(selection.area(00,00,75,19))

--
--	The "locate" level for the quest.
--
--	Here you have to find the exit from the Royal Dungeons
--	to go further towards your assigned quest.
--
