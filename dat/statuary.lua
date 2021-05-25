--	Copyright (c) 1989 by Jean-Christophe Collet
--	Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed.  See license for details.
--
--
des.message("You feels as if many pairs of eyes are watching you...")

des.room({ type = "ordinary",
        contents = function()
            des.stair("up")
            des.object()
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
        end
});

des.room({ type = "ordinary",
        contents = function()
            des.stair("down")
            des.object()
            des.monster("cockatrice")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
        end
});

des.room({ type = "ordinary",
        contents = function()
            des.object()
            des.object()
            des.monster()
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
        end
});


des.room({ type = "ordinary",
        contents = function()
            des.object()
            des.monster()
            des.monster()
            des.object({ id = "statue", buc="uncursed",
                      montype="wizard", historic=1, male=1,name="Rodgerix the Mad",
                      contents = function()
                        des.object({ id = "wonder", buc = "uncursed", spe = 7})
                      end
            });
        end
});

des.room({ type = "ordinary",
        contents = function()
            des.object()
            des.monster()
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
            des.trap("statue")
        end
});

des.room({ type = "ordinary",
        contents = function()
            des.object()
            des.monster()
            des.trap("statue")
            des.trap("statue")
        end
});

des.random_corridors()
