#                             Splicehack-Rewrite
##                             Version 1.0.0

*note- some items and monsters were implemented in older versions of splicehack.*
*information about those older versions can be found in oldChangelog.txt*

### Species Changes
- Different species have different night vision ranges.
- Maximum Dexterity is now 20 for Elves, and 18 for Dwarves.
#### Drow
  - Male drow are referred to as "hedrow."
  - Potions of sickness in the starting inventories of drow are replaced by potions of sleeping.
  - The unarmed attacks of drow no longer inflict sleep.
  - All weapons in the starting inventory of drow are automatically drugged.
  - Drow automatically worship the goddess Lolth.
#### Infernal
  - Infernals no longer receive hungerless regeneration.
  - Infernals are automatically hated by all humans (aside from quest monsters).
  - Infernals automatically recognize all demons.
#### Vampire
  - Vampires no longer feed by draining corpses. Instead, they gain a larger amount of nutrition
    from draining the blood of living monsters. This change is due to player dissatisfaction with
    the tedium of draining blood from corpses, as well as the large number of bugs that the corpse
    draining code introduced to the game.

### Role Changes
#### Multiclass System
  - The player is no longer limited to only a single role. Every time they level up, they may instead
    choose to switch to and level up in another valid role.
  - While this system is designed for interesting builds and powergaming, there are a few caveats:
    - When hit by a monster with a level-draining attack, if you have only a single level of experience
      in all of your roles, you die. As such, spreading yourself too thin can be dangerous, particularly
      if you lack drain resistance.
    - For each role in addition to your main role, the experience required to reach subsequent levels
      will be higher.
#### Dragon Rider
  - Rename dragonmasters to dragon riders. This name change puts greater emphasis on the bond the
    character has with dragons.
  - Allow baby black dragons as starting pets.
  - Dragon Riders now tame dragons by chatting with them, as convicts do. Their chances of success are
    determined by dragon hit dice and their level in the dragon tamer skill. At high level, they are
    capable of taming elder dragons.
#### Priest
  - Priests can be of any species.
#### Cartomancer
  - Summoned monsters attack monsters of any level and remain forever, but leave no corpse and do
    not regenerate health. They also lose health very slowly over time.
#### Cave Dwellers
  - T-Rexes and Velociraptors only randomly generate when playing this role.
- Added a few new role/species/alignment combinations.
#### Kicking & Punching
- Martial artists and players wearing kicking boots can destroy most dungeon features with a kick.
- Martial artists and players wearing kicking boots can't have clumsy kicks.
- Kicking a secret door doesn't injure the character.
- The enchantment value of gloves is added to unarmed attacks.

### Object Changes
- Zapping a wand of water at an item will extinguish it.
- Masks last longer and give an indication that they are wearing out.
- Coffins are always trapped, and looting them will occasionally produce vampires.
- New Object: Executioner's Mace.
  - Does not generate randomly. Dropped only by Worms that Walk.
- New Artifact: Shamblestick
  - Has stats randomly determined at the beginning of the game, like a shambling horror.
- New Materials:
  - Orichalcum
    - Can be safely enchanted to higher values.
    - Stolen by gold-stealing monsters, since it is an alloy of a number of metals.
    - If an orichalcum item is disenchanted, all of its enchantment instantly disappears,
      since it is such a superb magical conductor.

### Skill System
- Rather than techniques, SpliceHack uses a skill system.
- In addition to the regular skills offered in NetHack, roles and species provide access to their
  own sets of skills. By investing points in these skills, a character can use unique abilities,
  or increase the power of their existing special abilities.
- Ideally, this should open the way for numerous diverse character builds, as well as help to
  offset the increased difficulty of new features.
- Tourists are unique in that they have no special skills of their own, but can attain basic
  levels in numerous skills from other roles.
- A full list of skills and what they do can be found in an attached text document.

### Combat System
- Luck no longer gives a to-hit bonus.
- Ported EvilHack / SporkHack partial resistances.
- Ammo gains a bonus to damage equal to its own enchantment bonus or the enchantment bonus of
  the launcher it was fired from, whichever is larger. Currently only implemented for players.
- Base attack bonus is partially determined by the role one is playing.
- Whenever a non-tame monster kills another monster, it will automatically grow up.
- Monsters gain a large bonus to hit when flanking the player (located on opposite sides of
  the player's position),
- Power regen is based on role.
- Weapons have gone through a rebalance.
  -Many weapons now have bonuses or penalties to hit, and can also influence AC when wielded.
  - Given the emphasis on to-hit bonus, these small bonuses and penalties are now much more
    important than they would otherwise be.
  - [PLANNED] These values can be influenced by the material of the weapon.
- [PLANNED] AC and DR have been split.

### QOL
- Added several QOL fixes to the wish parser. Many of these came from the NetHack YANI archive.
  - Wishing for a common community abbreviation, such as comr, boh, or gdsm will result in the
    appropriate item.
  - "Blessed greased fixed" can be abbreviated as simply "bgf."
  - "Scroll of recharging" is a valid alternate spelling for scrolls of charging.
  - Wishing for "anything" or "surprise me" results in a totally random object.
  - Several small easter eggs when wishing for things like "world peace," or "truth."
- In most situations, there is now a message for when a sleeping monster wakes up. Additionally,
  looking at a monster will tell you whether it is sleeping.
- Added some additional messages for dodging attacks in order to spice up combat logs.
- The skill training menu correctly displays the maximum training possible in a skill.
- Made unique death messages slightly less silly.
- Added the monkeyname configuration option for those who want a default name for pet monkeys.
- Added several small easter egg pet names for players who have not set a default pet name.
- Sabers always display the material they are made from, to prevent confusion for new players.
- Gods can rarely grant the player a minion. This feature is similar to the one in SLASH'EM, but
  much more balanced.
- Added Heaven or Hell mode from AceHack. Enable it by adding "heaven_or_hell" to your config file.
- The grim reaper can no longer appear in bones files.
- Wands of wonder now automatically identify themselves when used, and notify the player
  with a message.
- Dexterity improves hit chance starting at 12 dex, instead of 16 dex.
- Dexterity of 18 or higher improves hit chance with wand zaps.

### Dungeon Changes

#### General
One goal of this release of SpliceHack is to make regular dungeon levels more interesting and
dynamic to explore. Each level should present unique challenges and be interesting to explore
in its own way.
- New Dungeon Feature: Vents
  - Emit clouds of gas at a predictable interval, allowing players to plan around them or use them
    to their advantage.
  - Vents can emit poison gas or harmless mist. This is random, but influenced by the dungeon level.
- New Dungeon Feature: Rope Bridges
  - Rope bridges are vulnerable to fire, and can be destroyed by exposing them to it.
  - When a tile of a rope bridge is destroyed, a countdown begins for all adjacent bridge tiles.
    When this countdown ends, that tile will collapse as well.
- Many levels generate with rope bridges. This replaces the underground rivers patch.
- All rooms are dark by default, but generate with a torch sconce that helps to light them up.
  As depth increases, sconces become less and less common.
- Ported the Rat King level from Slash'Em, with some alterations.
  - The Rat King is a valid polymorph form and has hands.
  - SpliceHack pack rats are used, rather than Slash'Em pack rats.
  - Black rats cannot be genocided.
  - The rat king level generates in 25% of games, rather than 50%.
  - Contains a guaranteed bag of rats.
- Added a flag to dungeon generation that allows the disabling of food in specific branches. This
  will allow for adding an arbitrary number of branches in the future, since exploring a branch
  will now have an associated cost (the user's hunger).
- Food items generate significantly less frequently in Gehennom than in the main dungeon. In Gehennom,
  food items are generated as frequently as amulets are in the main dungeon. Hopefully this makes
  the food stash at the castle much more important.
- Ported the Lost Tomb from SLASH'EM. It appears in the DNetHack dungeon range.
- New Branch: The Bar
  - Inspired by the Guild of Disgruntled Adventurers, as well as conversations on IRC.
  - Replaces the banquet hall.
- Juiblex's lair has a 50% chance of containing Juiblex and a 50% chance of containing
  Zuggotomoy.
- Levels have dynamically generated names.
- While there are no variant castle levels, several minor features of the castle level are
  randomly generated. For example, the moat may take a slightly different shape, or there may
  be iron bars from which the soldiers can attack.
- Occasionally, mines level will generate with several trees in them.
- The orcs in orctown have built a kitchen, complete with furnace, sink, and icebox!
- Two Oracle levels arrived from xNetHack, and the standard level varies a bit.
- Secret corridors no longer generate; secret doors still exist.
#### Furnaces
- Furnaces can be used to combine items. While at a furnace, the player can use the #forge command
  to combine two items into one more powerful item.
  - Certain artifacts are only obtainable via furnaces:
    - Frostburn: Deals double damage to all monsters that are not both cold and fire resistant.
      created by fusing Frost Brand and Fire Brand.
    - Mortality Dial: Prevents trolls from reviving. While wielded, monsters do not regenerate.
    - Squall: Deals double sonic damage, like a brand, and also fires lightning bolts.
- By combining armor, weapon, or a weptool with a corpse or tin, you can imbue that item with its
  essence.
  - Imbued weapons deal damage depending on the attack of the monster that was imbued. For example,
    a long sword imbued with blue dragon essence will shock enemies.
  - When polymorphed while wearing imbued body armor, you will polymorph into whatever monster that
    armor is imbued with. This includes not normally polymorphable monsters.
  - Imbuing an item at a furnace may cause the furnace to power down.
- Furnaces generate below level 15 in the dungeon.


#### Wands of Wishing
- Use XNetHack's wand of wishing changes.
  - There is a guaranteed wand of wishing at the castle with 2 charges.
  - There is a guaranteed wand in Vlad's coffin with 1 charge.
  - There is a guaranteed wand with the Book of the Dead with 1 charge.
  - Wands of wishing cannot be recharged, and instantly dust upon reaching zero charges.
  - Wands of wishing do not generate randomly.


### Monster Changes
- Gnolls have been reduced to medium size so that they can wear the armor they spawn with.
- Monster fleeing AI has been altered.
  - When a monster turns to flee, it immediately gains a turn of movement points.
  - Fleeing monsters gain bonus movement points every turn, allowing them to flee more quickly.
- Certain monsters are classed as supporters. These monsters can heal their compatriots, and
  will attempt to hang back slightly from the player.
- Monsters that small in small groups can spawn with leaders or supporting monsters.
- New Yendorian Army Member: The General
  - Upgraded form of the captain. Highly dangerous, and very rare to encounter.
- New Monster: The Slumber Hulk
  - A hulk that puts people to sleep with its gaze.
  - Very good AC.
  - Falls asleep randomly.
- New Monster: Eye of Fear and Flame
  - L-class monster.
  - Two gaze attacks: One deals fire damage, and the other inflicts fear.
- New Monster: Bodak
  - Fear-inflicting gaze attack.
  - Dying while under the effect of a bodak's gaze will cause the player to rise as a bodak.
  - Attempt to avoid the player unless the player has less than one quarter of their hp remaining.
  - Peaceful to neutral characters.
- New Monsters: Zoo Bat and Gaol Bat
  - Bats with confusing attacks.
  - Extremely annoying.
- New Adult Monsters: Killer Croc, Diamond Piercer
  - Not randomly generated.
  - Only appear when a lower level monster grows up.
- New Monster: Adherer
  - M-class monster.
  - Weapons stick to it.
- Ported UnnetHack Aleaxes: Aleaxes are generated with copies of the player's items.
- Dragons have been significantly altered.
  - Dragons have adjectives attached to their names that describe their age categories. the level of
    a dragon determines its age category.
  - The higher level a dragon is, the more damage its breath weapon will deal.
  - Blue dragons butt with a horn rather than using claws, and are slightly faster.
  - Black dragons are treated as having a pair of horns, which they can butt with.
  - Green dragons stalk the player.
  - Dragons have a chance of roaring at the player. This roar can inflict the afraid status effect,
    making the player flee from the dragon.
  - In order to offset many of their more powerful abilities, dragons periodically fall asleep and
    wake up. Running from a dragon and hoping it falls asleep is a valid strategy.
  - When dragons age up, they may invoke the right to name themselves. Dragons encountered in the
    dungeon have an age-category-based chance to be named.
- Demons that the player has not yet learned about are simply referred to as "demons" and have
  a generic appearance. As soon as the player learns the identity of a demon, the demon will be
  identified and will have the correct tile.
  - The rationale for this feature is that it helps ensure that the late game still has some sort of
    identification and undertainty mechanics. Gehennom doesn't have to be the end of discovery!
- Templated Monsters
  - Monsters can spawn with templates applied to them, such as "fiendish," "elven," or
    "half-illithid." these templates modify the data of the monster, making them more dangerous.
  - Your starting pet can rarely spawn with a template applied to it.
  - Many traditionally human monsters can have their species randomly altered.
  - Templated monsters grant extra experience, and are guaranteed to have a death drop.
  - TODO: Update visual indicator for templated mons in windows ports using certain files.
- Brood Wasp Changes
  - Brood wasps have been renamed to Ichneumon. Their larva is no longer a curable trouble.
  - Having larvae hatch inside you deals 1d5 damage, then halves your hit points.
  - Drinking a potion of sickness kills all larvae.
- Worms that Walk Changes
  - When a worm that walk kills a player, that player will only arise as a WtW if they are a wizard.
  - Worms that walk wield executioner's maces.
  - When a worm that walks dies, it dissolves into maggots. If one of these maggots infests a
    corpse, that corpse has the potential to arise as another worm that walks.
- Hundred Handed One Changes
  - Renamed to Hecatoncheire.
  - Attack for a mere 1d1 damage, but may continue attacking until their attack misses, or 100
    attacks have elapsed.
  - Have +100 to multishot.

### Display Changes
- Ridden monsters are highlighted in bright magenta.
- The floor of the gnomish mines is rendered in the same color as the walls.
- The walls of the black market have unique tiles in graphical builds.

### Balancing
- Potions of paralysis injected via dipped weapons no longer paralyze monsters for rnd(25) turns.
  While no one has abused this yet, the potential for stunlock was pretty crazy. Even now, this
  remains a very strong option.
- Increased generation of items that have been dipped in random potions from one in 10000 to one
  in 800 poisonable objects.
- Converting an altar will ALWAYS result in a minion of that deity being summoned.
- *Very* rarely, objects in the player's starting inventory may be of an odd material.
- A user can pray to reduce their hunger normally once. Every subsequent prayer used to reduce
  their hunger increases the total time of their prayer timeout. This is meant to eliminate slow,
  degenerate play, and should not affect regular players much.
- While the player is level one, they get hungry much more slowly.
- Excalibur's and Snickersnee's artifact attack/damage bonuses have been swapped, so
that Excalibur doesn't crowd out all the other artifact weapons as much.

### YAFM
- Whenever you are polymorphed into a bear, all instances of the word "bare" are replaced
  with the word "bear."
- Chatting with a troll will yield one of several classic "flame bait" messages.

### Misc/Minor Changes
- The Dark One is no longer a human.
- Allow grid bugs to grow up into more powerful electric bugs.
- Piercers can grow up into more powerful piercers. This includes god piercers, which
  have been significantly altered.
- Dust vorticies can grow up into dust devils.
- Polymorphing into a nosferatu drops your charisma to 3.
- Malcanthet's gender and associated tile oscillate constantly.
- Hydras are lower level, deal more damange, and have been moved to the lizard monster class.
- Crystal golems change color every turn.
- Many monsters have been renamed.
- Spiked monsters always deal passive damage, instead of only 50% of the time.
- Many monsters have gender-variant names. For example, female pigs are sows.
- Cows can be tamed again. No idea why this was removed, since they are so slow that
  they are not very practical pets anyway.
- Werebears generate peaceful.
- Altered the tiles for many existing monsters in order to improve visual clarity.
- Renamed Avatars of Akasha to Hearth Archons.
- Monsters summoned by the Wizard of Yendor appear at the upstairs of a level, rather than surrounding
  the player.
- While flying, you are unable to attack Pazuzu.
- Due to expanded object materail lists, transmuters are much more dangeorus, since they can
  transmute metal into stone, potentially overloading the player.
- Removing a mask no longer causes you to instantly rehumanize.

### Removed Content
Since this release is a rewrite, several pieces of existing content have been heavily altered
or outright removed. Rationale can be provided for removed content upon request.
- Removed the following monsters: Anubites, Nuckelavees, Plant Monsters, Lords of Worms, Penguins,
  Mystic Scarabs, Memory Hounds, Goblin Windmages, Walruses, Werephants, Vent Wurms, Crevasse Wurms,
  Sludge Golems, Myconids, Legendary Lichens, Amalagamations, Bad Clones, Cerastes.
- Removed the following objects:
  - Razor whip.
  - Robe of the blood magus.
  - Robe of stasis.
  - Ring of memory.
  - Ring of blood magic.
  - Moonstone.
  - Scroll of web.
- The intelligent pet patch from GruntHack has been removed. This patch introduced an incredible
  number of bugs in monster AI, and made the monster AI code nigh unreadable.
  Additionally, many of the changes made by it were supersceded by later vanilla changes.
- The Dancer role has been removed. Many of its features were poorly implemented, leading to
  confusion for players. If there is interest in the dancer role being added again, I am open
  to discussion.
- Now, for what may be the most controversial change: Techniques have been entirely removed.
  I have a few reasons for making this change:
  - The technique code is extremely difficult to maintain, and only grows worse the more techniques
    that are added.
  - Most players are able to complete the game without so much as touching the techniques menu.
  - Timed cooldowns for abilities do not mesh with the pace of NetHack. NetHack is a game that often
    lacks time pressure (the food clock all but disappears past the early game) and so techniques
    incentivize slow, passive play while waiting for used techniques to recharge.
  - Techniques have been replaced with the skill system, which should allow for much greater build
    variety and character customization.
- Removed the monster conversation feature. It was exceedingly poorly implemented.
- Removed the statuary level. Overtaken by theme rooms.
- Removed aligned glyph traps. They were more dangerous and less interesting than hoped.

### Bug Fixes
- While porting the previous SpliceHack code, numerous bugs were discovered and fixed. The full
  scope of these bugs exceeds the capacity of this changelog, but suffice to say several
  crashes and instances of odd behavior that previously went unnoticed have been fixed.
- Graphical tiles builds work once more! Rejoice!
- Fixed lighting shops randomly generating throughout the dungeon.
- Fixed parrots not using the birdname option from a config file.
- Fixed grenade explosions being incorrectly blamed on the player.

### Known Bugs
- Phoenix egg revival via fire is very buggy.
- Rare write_ls: can't find
- Hand grenade explosions are magical, but only when hurled by an enemy, and only when using a frag grenade.
- Failed mon sanity checks with werecreatures.
- Moldiers and other infesting mons spawn adjacent to player.
