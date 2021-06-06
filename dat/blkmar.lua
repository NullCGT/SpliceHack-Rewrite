-- This is the black market
-- Massimo Campostrini (campo@sunthpi3.difi.unipi.it)
-- NetHack may be freely redistributed.  See license for details.
des.level_init({ style = "solidfill", fg = " " });

des.level_flags("noteleport", "hardfloor", "nommap", "noflip")
des.map([[
----------------------------------------------------------------------------
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.|........................................................................|
|.+........................................................................|
|.|........................................................................|
|.|........................................................................|
----------------------------------------------------------------------------
]]);

des.levregion({ region = {01,01,01,01}, type="branch" });
des.region({ region = {03,01,74,16}, type="black market", lit=1, filled=1 });
des.non_diggable(selection.area(00,00,75,17))
des.non_passwall(selection.area(000,00,75,17))
des.door("open",02,14)
des.engraving({01,03}, "engrave", "Pets are not allowed in the shop.")
des.engraving({01,05}, "engrave", "Thieves will be killed.")
des.engraving({01,07}, "engrave", "Sorry about the mess. Remember, ask if you need help!")
des.engraving({01,09}, "engrave", "Don't even think about stealing anything.")

-- black marketeer's assistants:
-- from The Hobbit (Tolkien)
des.monster({id="rock troll", x=03, y=03, name="Sam's assistant William", asleep=1, peaceful=1})
des.monster({id="rock troll", x=03, y=12, name="Sam's assistant Thomas", asleep=1, peaceful=1})
-- from the Bible
des.monster({id="frost giant", x=03, y=16, name="Sam's assistant Goliath", asleep=1, peaceful=1})
-- from Greek mythology & high-energy physics
des.monster({id= "wood nymph",  x=03, y=09, name="Sam's assistant Daphne", asleep=1, peaceful=1})
-- Add your favorite monsters here.  Make them peaceful and named,
-- otherwise they will not behave like assistants.
des.monster({id="balrog", x=03, y=04, name="Sam's assistant Njalnohaar", asleep=1, peaceful=1})
des.monster({id="pit fiend", x=03, y=02, name="Sam's assistant Hilvuuloth", asleep=1, peaceful=1})
des.monster({id="captain", x=03, y=13, name="Sam's assistant Kidd", asleep=1, peaceful=1})
des.monster({id="marrashi", x=03, y=08, name="Sam's assistant Kite", asleep=1, peaceful=1})
des.monster({id="salamander", x=03, y=11, name="Sam's assistant Izzy", asleep=1, peaceful=1})