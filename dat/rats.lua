-- Rat level
-- Originally from Slash'Em. Ported to 3.7 by antigulp.

des.level_flags("noflip");

des.room({ type = "ordinary", lit=0, xalign="center",yalign="center", w=16,h=8, contents = function()
    des.object()
    des.object()
    des.object()
    des.object("bag of rats")
    des.object({ id = "long sword", x = 8, y = 4 })
    des.object({ id = "elven boots", x = 8, y = 4 })
    des.object({ id = "cheese", x = 8, y = 4 })
    des.object({ id = "cheese", x = 8, y = 4 })
    des.object({"/", x = 8, y = 4})
    des.object({"!", x = 8, y = 4})

    des.monster({ class ="r", peaceful = 0 })
    des.monster({ class ="r", peaceful = 0 })
    des.monster({ class ="r", peaceful = 0 })
    des.monster({ class ="r", peaceful = 0 })
    des.monster({ class ="r", peaceful = 0 })
    
    des.monster({ id ="pack rat", peaceful = 0 })
    des.monster({ id ="pack rat", peaceful = 0 })
    des.monster({ id ="pack rat", peaceful = 0 })
    des.monster({ id ="pack rat", peaceful = 0 })

    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })
    des.monster({ id ="black rat", peaceful = 0 })

    des.monster({ id ="giant rat", peaceful = 0 })
    des.monster({ id ="giant rat", peaceful = 0 })
    des.monster({ id ="giant rat", peaceful = 0 })
    des.monster({ id ="giant rat", peaceful = 0 })
    des.monster({ id ="giant rat", peaceful = 0 })

    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })
    des.monster({ id ="sewer rat", peaceful = 0 })

    des.monster({ id ="rabid rat", peaceful = 0 })
    des.monster({ id ="Rat Ruler", x = 8, y = 8, peaceful = 0 })
 end
});

des.room({ type = "ordinary",
           contents = function()
              des.stair("up")
              des.object()
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
           end
});

des.room({ type = "ordinary",
           contents = function()
              des.stair("down")
              des.object()
              des.monster({ id = "rabid rat", peaceful = 0})
              des.monster({ id = "rabid rat", peaceful = 0})
           end
});

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.object()
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
           end
});

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.trap()
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
           end
});

des.room({ type = "ordinary",
           contents = function()
              des.object()
              des.trap()
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
              des.monster({ id = "giant rat", peaceful = 0})
           end
});

des.random_corridors();

