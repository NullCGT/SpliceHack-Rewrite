-- Based on cave-fila.lua
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noflip");

des.level_init({ style = "mines", fg = ".", bg = " ", smoothed=true, joined=true, walled=true })

--
des.stair("up")
des.stair("down")
--
des.object()
des.object()
des.object()
des.object()
des.object()
des.object()
--
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
--
des.monster({ class = "E", peaceful=0 })
des.monster({ class = "E", peaceful=0 })
des.monster({ class = "E", peaceful=0 })
des.monster({ class = "E", peaceful=0 })
des.monster({ class = "E", peaceful=0 })
des.monster({ class = "E", peaceful=0 })
des.monster({ id = "gremlin", peaceful=0})
des.monster()
des.monster()
des.monster()
des.monster()
