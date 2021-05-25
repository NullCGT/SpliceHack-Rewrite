--
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "hardfloor")
des.level_init({ style="mines", fg="#", bg=" ", smoothed=true, joined=true, lit=0, walled=false })
des.message("This appears to be a prison level that is still under construction.")

--
des.stair("up")
des.stair("down")
-- Peaceful miners
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
des.monster({id="miner",peaceful=1})
-- Earth creatures
des.monster("xorn")
des.monster("earth elemental")
if math.random(0,99) < 50 then
  des.monster("xorn")
end
if math.random(0,99) < 50 then
  des.monster("earth elemental")
end
-- Other nasties
des.monster("lurker above")
des.monster("trapper")
if math.random(0,99) < 50 then
  des.monster("lurker above")
end
if math.random(0,99) < 50 then
  des.monster("trapper")
end
if math.random(0,99) < 50 then
  des.monster("rock piercer")
end
if math.random(0,99) < 50 then
  des.monster("rock piercer")
end
if math.random(0,99) < 50 then
  des.monster("iron piercer")
end
if math.random(0,99) < 50 then
  des.monster("iron piercer")
end
if math.random(0,99) < 50 then
  des.monster("glass piercer")
end
if math.random(0,99) < 50 then
  des.monster("glass piercer")
end
-- Tools and corpses
if math.random(0,99) < 50 then
  des.object("pick-axe")
end
if math.random(0,99) < 75 then
  des.object("lantern")
end
if math.random(0,99) < 50 then
  des.object("(")
end
if math.random(0,99) < 25 then
  des.object({"corpse", montype = "miner"})
end
if math.random(0,99) < 25 then
  des.object({"corpse", montype = "miner"})
end
if math.random(0,99) < 25 then
  des.object({"corpse", montype = "miner"})
end
if math.random(0,99) < 25 then
  des.object({"corpse", montype = "miner"})
end
-- Natural cavern hazards
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("pit")
des.trap("falling rock")
des.trap("falling rock")
des.trap("falling rock")
des.trap("falling rock")
des.trap("web")
des.trap("web")
