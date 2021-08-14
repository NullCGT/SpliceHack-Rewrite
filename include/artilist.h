/* NetHack 3.7  artilist.h      $NHDT-Date: 1596498526 2020/08/03 23:48:46 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.23 $ */
/* Copyright (c) Stichting Mathematisch Centrum, Amsterdam, 1985. */
/*-Copyright (c) Robert Patrick Rankin, 2017. */
/* NetHack may be freely redistributed.  See license for details. */

#if defined(MAKEDEFS_C) || defined (MDLIB_C)
/* in makedefs.c, all we care about is the list of names */

#define A(nam, typ, s1, s2, mt, atk, dfn, cry, inv, al, cl, rac, cost, clr) nam

static const char *artifact_names[] = {
#else
/* in artifact.c, set up the actual artifact list structure */

#define A(nam, typ, s1, s2, mt, atk, dfn, cry, inv, al, cl, rac, cost, clr) \
    {                                                                       \
        typ, nam, s1, s2, mt, atk, dfn, cry, inv, al, cl, rac, cost, clr    \
    }

/* clang-format off */
#define     NO_ATTK     {0,0,0,0}               /* no attack */
#define     NO_DFNS     {0,0,0,0}               /* no defense */
#define     NO_CARY     {0,0,0,0}               /* no carry effects */
#define     DFNS(c)     {0,c,0,0}
#define     CARY(c)     {0,c,0,0}
#define     PHYS(a,b)   {0,AD_PHYS,a,b}         /* physical */
#define     DRLI(a,b)   {0,AD_DRLI,a,b}         /* life drain */
#define     COLD(a,b)   {0,AD_COLD,a,b}
#define     LOUD(a,b)   {0,AD_LOUD,a,b}
#define     ACID(a,b)   {0,AD_ACID,a,b}
#define     FIRE(a,b)   {0,AD_FIRE,a,b}
#define     ELEC(a,b)   {0,AD_ELEC,a,b}         /* electrical shock */
#define     STUN(a,b)   {0,AD_STUN,a,b}         /* magical attack */
#define     WIND(a,b)   {0,AD_WIND,a,b}         /* wind blast */
#define     VOID(a,b)   {0,AD_VOID,a,b}
#define     PLYS(a,b)   {0,AD_PLYS,a,b}         /* whip binding */
#define     PSYC(a,b)   {0,AD_PSYC,a,b}         /* psiblast */
#define     SCLD(a,b)   {0,AD_DGST,a,b}         /* fire + cold */
/* clang-format on */

static NEARDATA struct artifact artilist[] = {
#endif /* MAKEDEFS_C || MDLIB_C */

    /* Artifact cost rationale:
     * 1.  The more useful the artifact, the better its cost.
     * 2.  Quest artifacts are highly valued.
     * 3.  Chaotic artifacts are inflated due to scarcity (and balance).
     */

    /*  dummy element #0, so that all interesting indices are non-zero */
    A("", STRANGE_OBJECT, 0, 0, 0, NO_ATTK, NO_DFNS, NO_CARY, 0, A_NONE,
      NON_PM, NON_PM, 0L, NO_COLOR),

    /* SPLICE ARTIFACTS */

    /*
    *       Similar to the brands. Does not destroy items, but also resisted
    *       by quite a few monsters.
    */
    A("Acidfall", LONG_SWORD, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      ACID(5, 0), ACID(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 3000L,
      NO_COLOR),

    /*
    *       Avalon grants regeneration while carried, just like the Arthurian
    *       legends describe.
    */

    A("Avalon", SCABBARD, (SPFX_RESTR), 0, 0,
      PHYS(1, 1), NO_DFNS, CARY(AD_WTHR), HPHEAL, A_LAWFUL, PM_KNIGHT, NON_PM,
      4500L, NO_COLOR),

    /*
    *        Balmung shreds the armor of opponents.
    *
    */
   A("Balmung", BROADSWORD, (SPFX_RESTR), 0, 0, PHYS(4, 9), FIRE(0, 0), NO_CARY,
      0, A_LAWFUL, NON_PM, NON_PM, 1000L, CLR_BROWN),

    /*
    *       This lance does a lot of damage, and also automatically unseats any
    *       mounted person it hits.
    */
    A("Bradamante\'s Fury", LANCE, (SPFX_RESTR), 0, 0,
      PHYS(5, 10), NO_DFNS, NO_CARY, 0, A_NEUTRAL, NON_PM, NON_PM, 800L,
      NO_COLOR),

    /*
    *       Some "worse" sacrifice gifts are needed to avoid making #offer
    *       overpowered. Used to be PM_KNIGHT.
    */
    A("Carnwennan", KNIFE, (SPFX_RESTR | SPFX_SEARCH | SPFX_STLTH), 0, 0,
      PHYS(3, 8), NO_DFNS, NO_CARY, INVIS, A_LAWFUL,
      NON_PM, NON_PM, 400L, NO_COLOR),

    
    A("Chains of Malcanthet", SPIKED_CHAIN, 
      (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 0, MH_DEMON,
      PLYS(6, 10), NO_DFNS, NO_CARY, 0, A_NONE,
      NON_PM, NON_PM, 800L, CLR_RED),

    /*
    *     Staff of Circe. 1/20 chance of turning target into an animal.
    */
    A("Circe's Witchstaff", QUARTERSTAFF,
      (SPFX_RESTR | SPFX_BEHEAD), 0, 0,
      PHYS(4, 4), NO_DFNS, NO_CARY, TAMING, A_NEUTRAL, NON_PM, NON_PM, 3500,
      CLR_GREEN),

    /*
    *       If not granted through sacrifice, the Grim Reaper is generated
    *       with this.
    */
    A("The End", SCYTHE, (SPFX_RESTR | SPFX_DEFN), 0, 0, COLD(3, 20),
      DRLI(0, 0), NO_CARY, 0, A_NEUTRAL, NON_PM, NON_PM, 6000L, NO_COLOR),

    /*
    *      Attacks deal double damage, but at the cost of hallucination.
    *      This effect is only active while the user can see.
    */
    A("Lenses of Death Perception", LENSES, (SPFX_RESTR | SPFX_SEARCH), 0, 0, NO_ATTK,
      NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 2000L, NO_COLOR),

    /*
    *      Gae Bulg can be thrown as a last resort. If it hits, the attack
    *      is automatically fatal, and there is a 2/3 chance the javelin
    *      vanishes from the game. If it misses, however, the player risks
    *      monsters attacking them with Gae Bulg.
    */
    A("Gae Bulg", JAVELIN, (SPFX_RESTR | SPFX_ATTK | SPFX_DRLI), 0, 0,
      DRLI(5, 5), NO_DFNS, NO_CARY, 0, A_CHAOTIC, NON_PM, NON_PM,
      9000L, NO_COLOR),

    /*
    *      Gae Dearg cancels those it strikes. Possibly in the future it
    *      should cancel their armor? This occurs 1/3 of the time.
    */
    A("Gae Dearg", ELVEN_SPEAR, (SPFX_RESTR | SPFX_ATTK | SPFX_CANC), 0, 0,
      DRLI(3, 7), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM,
      7000L, NO_COLOR),

    /*
    *      Gae Buidhe inflicts cursed wounds (drains levels).
    */
    A("Gae Buidhe", ELVEN_SPEAR, (SPFX_RESTR | SPFX_ATTK | SPFX_DRLI), 0, 0,
      DRLI(3, 7), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM,
      7000L, NO_COLOR),

    /*
    *       Based on the bindings used to trap Fenrir. This hook can grapple
    *       things regardless of size, and has a massive range.
    */
    A("Gleipnir", GRAPPLING_HOOK, (SPFX_RESTR), 0, 0, PHYS(5, 8),
      NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 1700L, NO_COLOR),

    /*
    *      Gugnir also returns to the hand of the wielder when thrown if
    *      the wielder is a Valkyrie, but there is no strength requirement.
    */
    A("Gungnir", DWARVISH_SPEAR, (SPFX_RESTR), 0, 0, PHYS(100, 4),
      NO_DFNS, NO_CARY, LIGHTNING_BOLT, A_NEUTRAL, PM_VALKYRIE, NON_PM, 4000L, NO_COLOR),

    /* 
    *       I cannot believe this hasn't been done yet.
    */
    A("Hand Grenade of Antioch", FRAG_GRENADE, (SPFX_RESTR), 0, 0, PHYS(1, 1),
      NO_DFNS, NO_CARY, 0, A_LAWFUL, NON_PM, NON_PM, 300L, NO_COLOR),

    A("Idspike", ATHAME, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      PSYC(5, 0), PSYC(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 4000L,
      NO_COLOR),

    /*
    *       Mesopatamian in origin.
    */
    A("Imhullu", GLAIVE, (SPFX_RESTR), 0, 0, WIND(4, 5), DFNS(AD_CLOB), 
      NO_CARY, SEFFECT, A_NEUTRAL, NON_PM, NON_PM, 2000L, NO_COLOR),

    /*
    *       This bizarre weapon acts as a cursed luckstone regardless of its
    *       BCU status. It gets bonuses to hit and damage based on the opposite
    *       of your luck value. Allows for a very unconventional playstyle,
    *       since getting luck of -13 will give this weapon an automatic +13
    *       to damage and hit, but playing with -13 luck would be really hard.
    */
    A("Luckless Folly", SHORT_SWORD, (SPFX_RESTR | SPFX_NOGEN | SPFX_LUCK), 0,
      0, PHYS(5, 5), NO_DFNS, NO_CARY, 0, A_CHAOTIC, NON_PM, NON_PM, 3000L,
      NO_COLOR),

    /*
    *      Quarterstaff that grants teleport control, and also greatly increases
    *      spellcasting ability (as a robe).
    */
    A("Origin", QUARTERSTAFF,
      (SPFX_RESTR | SPFX_TCTRL), 0, 0,
      PHYS(2, 6), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 500L,
      CLR_MAGENTA),

    /*
    *      Shield of King Arthur.
    */
    A("Pridwen", LARGE_SHIELD,
      (SPFX_RESTR | SPFX_HPHDAM), 0, 0,
      NO_ATTK, NO_DFNS, NO_CARY, 0, A_LAWFUL, NON_PM, NON_PM, 1500L,
      CLR_MAGENTA),

    /*
    *       Seafoam grants waterbreathing, and is generated rustproof.
    */
    A("Poseidon\'s Trident", TRIDENT, (SPFX_RESTR | SPFX_BREATHE), 0, 0, PHYS(3, 7),
      NO_DFNS, NO_CARY, WWALKING, A_CHAOTIC, NON_PM, NON_PM, 1500L, NO_COLOR),

    /*
    *       Resisted by very few monsters, but is a morning star and also
    *       happens to destroy tons of items.
    */
    A("Sonicboom", MORNING_STAR, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      LOUD(5, 0), LOUD(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 3000L,
      NO_COLOR),

    /*
    *      Blinding mace.
    */
    A("Sunspot", MACE, (SPFX_RESTR | SPFX_BLIND), 0, 0,
      PHYS(5, 5), DFNS(AD_BLND), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 2000L,
      NO_COLOR),

    /*
    *        Just for fun.
    */
    A("Vladsbane", FOOD_RATION,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 0, MH_UNDEAD,
      PHYS(-5, -5), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 200L,
      CLR_MAGENTA),

    /*
    *       Definitely no canonical problems here.
    */
    A("War\'s Sword", TWO_HANDED_SWORD,
      (SPFX_RESTR | SPFX_CONFLICT), 0, 0, PHYS(5, 5), NO_DFNS, NO_CARY, 0,
      A_NONE, NON_PM, NON_PM, 7000L, NO_COLOR),

    /* PIRATE ARTIFACTS */

    A("Reaver",	SCIMITAR, (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL), 0, 0,
     	PHYS(5, 8), NO_DFNS,	NO_CARY, 0, A_CHAOTIC, PM_PIRATE, NON_PM, 6000L,
      NO_COLOR),

    A("The Marauder's Map", SCR_MAGIC_MAPPING, SPFX_RESTR, 0, 0, NO_ATTK,
      NO_DFNS,	NO_CARY, OBJECT_DET,	A_CHAOTIC, PM_PIRATE, NON_PM, 2000L,
      NO_COLOR),

    /* UNNETHACK ARTIFACTS */

    A("Thiefbane", TWO_HANDED_SWORD,
  	(SPFX_NOGEN|SPFX_RESTR|SPFX_BEHEAD|SPFX_DCLAS|SPFX_DRLI), 0, S_HUMAN,
  	DRLI(5,1), NO_DFNS,	NO_CARY, 0, A_CHAOTIC, NON_PM, NON_PM, 1500L,
    NO_COLOR ),

    /* SLASHEM ARTIFACTS */

    /* Unlike in SLASH'EM, the bat from hell is not rogue-specific. It can be
     * considered one of the rarest artifacts, since baseball bats are only
     * generated in junk shops. */
    A("Bat from Hell", BASEBALL_BAT, SPFX_RESTR, 0, 0, PHYS(3,20), NO_DFNS,
      NO_CARY, 0, A_CHAOTIC, NON_PM, NON_PM, 5000L, NO_COLOR),

    A("Doomblade", ORCISH_SHORT_SWORD, SPFX_RESTR, 0, 0, PHYS(0, 10), NO_DFNS,
      NO_CARY, 0, A_CHAOTIC, NON_PM, NON_PM, 1000L, NO_COLOR),

    A("Luck Blade", BROADSWORD, (SPFX_RESTR | SPFX_LUCK | SPFX_INTEL), 0, 0,
      PHYS(5,6),	NO_DFNS,	NO_CARY,	0, A_CHAOTIC, PM_CONVICT, NON_PM, 3000L,
      NO_COLOR),

    A("Sword of Balance", SHORT_SWORD, (SPFX_RESTR | SPFX_DALIGN), 0, 0,
    	PHYS(2, 5), NO_DFNS, NO_CARY, 0, A_NEUTRAL, NON_PM, NON_PM, 5000L,
      NO_COLOR),

    /* Changed to broadsword */
    A("Sword of Justice", BROADSWORD, (SPFX_RESTR | SPFX_DALIGN), 0, 0,
    	PHYS(5,12), NO_DFNS, NO_CARY, 0, A_LAWFUL, NON_PM, NON_PM, 1500L,
      NO_COLOR),

    A("Plague", DARK_ELVEN_BOW,	/* KMH */
    	(SPFX_RESTR | SPFX_DEFN), 0, 0, PHYS(5,7), DFNS(AD_DRST), NO_CARY, 0,
      A_CHAOTIC, PM_DROW, NON_PM, 6000L, CLR_BRIGHT_GREEN),

    /* If necromancers are ever added, they will use this. */
    A("Serpent's Tongue", DAGGER, SPFX_RESTR, 0, 0, PHYS(2,0), NO_DFNS, NO_CARY,
      0, A_CHAOTIC, NON_PM, NON_PM, 400L, NO_COLOR),

    /* FUSION ARTIFACTS */
    /* These artifacts are only possible to obtain by combining multiple artifacts at a forge. */

    A("Frostburn", LONG_SWORD, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN | SPFX_NOGEN | SPFX_RESTR), 0, 0,
      SCLD(5, 0), COLD(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 5000L,
      NO_COLOR),

    /* VANILLA ARTIFACTS */

    A("Excalibur", LONG_SWORD, (SPFX_NOGEN | SPFX_RESTR | SPFX_SEEK
                                | SPFX_DEFN | SPFX_INTEL | SPFX_SEARCH),
      0, 0, PHYS(5, 10), DRLI(0, 0), NO_CARY, HOLY_LANCE, A_LAWFUL, PM_KNIGHT, NON_PM,
      4000L, NO_COLOR),
    /*
     *      Stormbringer only has a 2 because it can drain a level,
     *      providing 8 more.
     */
    A("Stormbringer", RUNESWORD,
      (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN | SPFX_INTEL | SPFX_DRLI), 0, 0,
      DRLI(5, 2), DRLI(0, 0), NO_CARY, SEFFECT, A_CHAOTIC, NON_PM, NON_PM, 8000L,
      NO_COLOR),

    /*
     *      Mjollnir can be thrown when wielded if hero has 25 Strength
     *      (usually via gauntlets of power but possible with rings of
     *      gain strength).  If the thrower is a Valkyrie, Mjollnir will
     *      usually (99%) return and then usually (separate 99%) be caught
     *      and automatically be re-wielded.  When returning Mjollnir is
     *      not caught, there is a 50:50 chance of hitting hero for damage
     *      and its lightning shock might destroy some wands and/or rings.
     *
     *      Monsters don't throw Mjollnir regardless of strength (not even
     *      fake-player valkyries).
     */
    A("Mjollnir", WAR_HAMMER, /* Mjo:llnir */
      (SPFX_RESTR | SPFX_ATTK), 0, 0, ELEC(5, 24), NO_DFNS, NO_CARY, LIGHTNING_BOLT,
      A_NEUTRAL, PM_VALKYRIE, NON_PM, 4000L, NO_COLOR),

    A("Cleaver", BATTLE_AXE, SPFX_RESTR, 0, 0, PHYS(3, 6), NO_DFNS, NO_CARY,
      0, A_NEUTRAL, PM_BARBARIAN, NON_PM, 1500L, NO_COLOR),

    /*
     *      Grimtooth glows in warning when elves are present, but its
     *      damage bonus applies to all targets rather than just elves
     *      (handled as special case in spec_dbon()).
     */
    A("Grimtooth", ORCISH_DAGGER, (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH),
      0, MH_ELF, PHYS(2, 6), NO_DFNS,
      NO_CARY, 0, A_CHAOTIC, NON_PM, PM_ORC, 300L, CLR_RED),
    /*
     *      Orcrist and Sting have same alignment as elves.
     *
     *      The combination of SPFX_WARN+SPFX_DFLAGH+2_value will trigger
     *      EWarn_of_mon for all monsters that have the MH_value flag.
     *      Sting and Orcrist will warn of MH_ORC monsters.
     */
    A("Orcrist", ELVEN_BROADSWORD, (SPFX_WARN | SPFX_DFLAGH), 0, MH_ORC,
      PHYS(5, 0), NO_DFNS, NO_CARY, 0, A_CHAOTIC, NON_PM, PM_ELF, 2000L,
      CLR_BRIGHT_BLUE), /* bright blue is actually light blue */

    A("Sting", ELVEN_DAGGER, (SPFX_WARN | SPFX_DFLAGH), 0, MH_ORC, PHYS(5, 0),
      NO_DFNS, NO_CARY, 0, A_CHAOTIC, NON_PM, PM_ELF, 800L, CLR_BRIGHT_BLUE),
    /*
     *      Magicbane is a bit different!  Its magic fanfare
     *      unbalances victims in addition to doing some damage.
     */
    A("Magicbane", ATHAME, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      STUN(3, 4), DFNS(AD_MAGM), NO_CARY, 0, A_NEUTRAL, PM_WIZARD, NON_PM,
      3500L, NO_COLOR),

    A("Frost Brand", LONG_SWORD, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      COLD(5, 0), COLD(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 3000L,
      NO_COLOR),

    A("Fire Brand", LONG_SWORD, (SPFX_RESTR | SPFX_ATTK | SPFX_DEFN), 0, 0,
      FIRE(5, 0), FIRE(0, 0), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 3000L,
      NO_COLOR),

    A("Dragonbane", BROADSWORD,
      (SPFX_RESTR | SPFX_DCLAS | SPFX_REFLECT), 0, S_DRAGON,
      PHYS(5, 0), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 500L,
      NO_COLOR),

    A("Demonbane", LONG_SWORD, (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 0, MH_DEMON,
      PHYS(5, 0), NO_DFNS, NO_CARY, FLYING, A_LAWFUL, NON_PM, NON_PM, 2500L,
      NO_COLOR),

    A("Werebane", SABER, (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 0, MH_WERE,
      PHYS(5, 0), DFNS(AD_WERE), NO_CARY, 0, A_NONE, NON_PM, NON_PM, 1500L,
      NO_COLOR),

    A("Grayswandir", SABER, (SPFX_RESTR | SPFX_HALRES), 0, 0,
      PHYS(5, 0), NO_DFNS, NO_CARY, 0, A_LAWFUL, NON_PM, NON_PM, 8000L,
      NO_COLOR),

    A("Giantslayer", LONG_SWORD, (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 
      0, MH_GIANT, PHYS(5, 0), DFNS(AD_CLOB), NO_CARY, 0, A_NEUTRAL, 
      NON_PM, NON_PM, 200L, CLR_ORANGE),

    A("Ogresmasher", WAR_HAMMER, (SPFX_RESTR | SPFX_DCLAS), 0, S_OGRE,
      PHYS(5, 0), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 200L,
      NO_COLOR),

    A("Trollsbane", MORNING_STAR, (SPFX_RESTR | SPFX_REGEN | SPFX_WARN | SPFX_DCLAS), 
      0, S_TROLL, PHYS(5, 0), NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 200L,
      NO_COLOR),
    /*
     *      Two problems:  1) doesn't let trolls regenerate heads,
     *      2) doesn't give unusual message for 2-headed monsters (but
     *      allowing those at all causes more problems than worth the effort).
     */
    A("Vorpal Blade", LONG_SWORD, (SPFX_RESTR | SPFX_BEHEAD), 0, 0,
      PHYS(5, 1), NO_DFNS, NO_CARY, 0, A_NEUTRAL, NON_PM, NON_PM, 4000L,
      NO_COLOR),
    /*
     *      Ah, never shall I forget the cry,
     *              or the shriek that shrieked he,
     *      As I gnashed my teeth, and from my sheath
     *              I drew my Snickersnee!
     *                      --Koko, Lord high executioner of Titipu
     *                        (From Sir W.S. Gilbert's "The Mikado")
     */
    A("Snickersnee", KATANA, SPFX_RESTR, 0, 0, PHYS(0, 8), NO_DFNS, NO_CARY,
      0, A_LAWFUL, PM_SAMURAI, NON_PM, 1200L, NO_COLOR),

    A("Sunsword", LONG_SWORD, (SPFX_RESTR | SPFX_WARN | SPFX_DFLAGH), 0, MH_UNDEAD,
      PHYS(5, 0), DFNS(AD_BLND), NO_CARY, 0, A_LAWFUL, NON_PM, NON_PM, 1500L,
      NO_COLOR),

    /*
     *      The artifacts for the quest dungeon, all self-willed.
     */

    A("The Orb of Detection", CRYSTAL_BALL,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL), (SPFX_ESP | SPFX_HSPDAM), 0,
      NO_ATTK, NO_DFNS, CARY(AD_MAGM), INVIS, A_LAWFUL, PM_ARCHEOLOGIST,
      NON_PM, 2500L, NO_COLOR),

    A("The Heart of Ahriman", LUCKSTONE,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL), (SPFX_STLTH|SPFX_TCTRL), 0,
      /* this stone does double damage if used as a projectile weapon */
      PHYS(5, 0), NO_DFNS, NO_CARY, LEVITATION, A_NEUTRAL, PM_BARBARIAN,
      NON_PM, 2500L, NO_COLOR),

    A("The Sceptre of Might", MACE,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_DALIGN), 0, 0, PHYS(5, 0),
      DFNS(AD_MAGM), NO_CARY, CONFLICT, A_LAWFUL, PM_CAVE_DWELLER, NON_PM, 2500L,
      NO_COLOR),

    A("Sharur", ORNATE_MACE,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_SPEAK | SPFX_WARN),
      0, 0, PHYS(5, 5), DFNS(AD_MAGM), NO_CARY, LION, A_LAWFUL, PM_DRAGON_RIDER,
      NON_PM, 4000L, NO_COLOR),
    
    A("The Iron Ball of Liberation", HEAVY_IRON_BALL,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL),
      (SPFX_STLTH | SPFX_SEARCH | SPFX_WARN), 0,
      NO_ATTK,	NO_DFNS,	CARY(AD_MAGM),
      PHASING,	A_NEUTRAL, PM_PRISONER, NON_PM, 5000L, NO_COLOR),

#if 0 /* OBSOLETE */
A("The Palantir of Westernesse",        CRYSTAL_BALL,
        (SPFX_NOGEN|SPFX_RESTR|SPFX_INTEL),
                (SPFX_ESP|SPFX_REGEN|SPFX_HSPDAM), 0,
        NO_ATTK,        NO_DFNS,        NO_CARY,
        TAMING,         A_CHAOTIC, NON_PM , PM_ELF, 8000L, NO_COLOR ),
#endif

    A("The Staff of Aesculapius", QUARTERSTAFF,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_ATTK | SPFX_INTEL | SPFX_DRLI
       | SPFX_REGEN),
      0, 0, DRLI(0, 0), DRLI(0, 0), NO_CARY, HEALING, A_NEUTRAL, PM_HEALER,
      NON_PM, 5000L, NO_COLOR),

    A("The Magic Mirror of Merlin", MIRROR,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_SPEAK), SPFX_ESP, 0,
      NO_ATTK, NO_DFNS, CARY(AD_MAGM), 0, A_LAWFUL, PM_KNIGHT, NON_PM, 1500L,
      NO_COLOR),

    A("The Eyes of the Overworld", LENSES,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_XRAY), 0, 0, NO_ATTK,
      DFNS(AD_MAGM), NO_CARY, ENLIGHTENING, A_NEUTRAL, PM_MONK, NON_PM,
      2500L, NO_COLOR),

    A("The Mitre of Holiness", HELM_OF_BRILLIANCE,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_DFLAGH | SPFX_INTEL | SPFX_PROTECT), 0,
      MH_UNDEAD, NO_ATTK, NO_DFNS, CARY(AD_FIRE), ENERGY_BOOST, A_LAWFUL,
      PM_CLERIC, NON_PM, 2000L, NO_COLOR),

    A("The Treasury of Proteus",	CHEST,
     	(SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL), SPFX_LUCK, 0, NO_ATTK,NO_DFNS,
      CARY(AD_MAGM), 0,	A_CHAOTIC, PM_PIRATE, NON_PM, 2500L, NO_COLOR),

    A("The Longbow of Diana", BOW,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_REFLECT), SPFX_ESP, 0,
      PHYS(5, 0), NO_DFNS, NO_CARY, CREATE_AMMO, A_CHAOTIC, PM_RANGER, NON_PM,
      4000L, NO_COLOR),

    /* MKoT has an additional carry property if the Key is not cursed (for
       rogues) or blessed (for non-rogues):  #untrap of doors and chests
       will always find any traps and disarming those will always succeed */
    A("The Master Key of Thievery", SKELETON_KEY,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_SPEAK),
      (SPFX_WARN | SPFX_TCTRL | SPFX_HPHDAM), 0, NO_ATTK, NO_DFNS, NO_CARY,
      UNTRAP, A_CHAOTIC, PM_ROGUE, NON_PM, 3500L, NO_COLOR),

    A("The Tsurugi of Muramasa", TSURUGI,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_BEHEAD | SPFX_LUCK
       | SPFX_PROTECT),
      0, 0, PHYS(0, 8), NO_DFNS, NO_CARY, 0, A_LAWFUL, PM_SAMURAI, NON_PM,
      4500L, NO_COLOR),

    A("The Platinum Yendorian Express Card", CREDIT_CARD,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_DEFN),
      (SPFX_ESP | SPFX_HSPDAM), 0, NO_ATTK, NO_DFNS, CARY(AD_MAGM),
      CHARGE_OBJ, A_NEUTRAL, PM_TOURIST, NON_PM, 7000L, NO_COLOR),

    A("The Orb of Fate", CRYSTAL_BALL,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL | SPFX_LUCK),
      (SPFX_WARN | SPFX_HSPDAM | SPFX_HPHDAM), 0, NO_ATTK, NO_DFNS, NO_CARY,
      LEV_TELE, A_NEUTRAL, PM_VALKYRIE, NON_PM, 3500L, NO_COLOR),

    A("The Eye of the Aethiopica", AMULET_OF_ESP,
      (SPFX_NOGEN | SPFX_RESTR | SPFX_INTEL), (SPFX_EREGEN | SPFX_HSPDAM), 0,
      NO_ATTK, DFNS(AD_MAGM), NO_CARY, CREATE_PORTAL, A_NEUTRAL, PM_WIZARD,
      NON_PM, 4000L, NO_COLOR),

    /*
     *  terminator; otyp must be zero
     */
    A(0, 0, 0, 0, 0, NO_ATTK, NO_DFNS, NO_CARY, 0, A_NONE, NON_PM, NON_PM, 0L,
      0) /* 0 is CLR_BLACK rather than NO_COLOR but it doesn't matter here */

}; /* artilist[] (or artifact_names[]) */

#undef A

#if !defined(MAKEDEFS_C) && !defined(MDLIB_C)
#undef NO_ATTK
#undef NO_DFNS
#undef DFNS
#undef PHYS
#undef DRLI
#undef COLD
#undef LOUD
#undef ACID
#undef FIRE
#undef ELEC
#undef STUN
#undef WIND
#undef VOID
#undef PLYS
#endif

/*artilist.h*/
