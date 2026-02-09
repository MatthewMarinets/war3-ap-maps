# Design Ideas
## TODO
* Test saving
* Implement the rest of the missionss

## Text
When getting a location check that isn't an item, it can be good to send a message.

Format: `call DisplayTextToPlayer(GetLocalPlayeR(), 0, 0, "Got an |cffee1166Archipelago location|r (<info>)")`

## Next mission
* Currently, next mission is set to the `Maps/Archipelago` folder
* It would be good to have a "home base" mission similar to the ship in Stormgate that allows:
  * Restocking / re-arranging heroes
  * Storing items
  * Checking progress / selecting next level

## Mercenary Camps
Some missions have mercenary camps (see [mercenary_camps.md](./mercenary_camps.md)).
It would be nice to itemize mercenaries somehow,
but that runs the risk of those items being very rarely useful.
Players have also shown interest in more general usefulness for mercs
outside the limited missions they appear in.

### Unlock methods
There were a few ideas on how to organize the items that unlock mercenaries
* One item per merc unit type
* One item per mercenary camp slot (unlocks whatever merc is in that slot on that mission)
* Progressive item types for each merc species (e.g. Progressive Forest Troll, Progressive Revenant)

**I chose to go for the first option, one item per merc unit type.**

Progressive per species would mean that there would be no way to get a higher-tier unit
without first unlocking an earlier one.
As most merc types appeared on only one mission in vanilla, this would mean higher-tier mercs would be
very uncommon.
Getting lower-tier mercenaries after higher-tier ones would still be helpful given how slow cooldown times
are.
It's also unclear how this option would behave in the context of adding non-vanilla mercs to a species,
such as baseline Forest Trolls.

Items per slot could work, with missions with multiple merc camps simply unlocking the slot at all camps.
Adding mercenaries to camps via triggers tends to put them at the first available slot,
so the UI may not be very clear here.

### Proposal 1: Option to include bonus mercs
* yaml option
* Include more mercs per camp
* Include additional merc species
* Option can choose vanilla + new mercs, or replace mercs
* Limit: 10 mercs per camp (2 slots for merc camp location item + change item sell target)

### Proposal 2: Bonus merc camps
* yaml option
* Spawn merc camps in build missions that didn't have them in vanilla
* Using `nmrd` (Icecrown Glacier mercenary camp), as that is never used in the campaign
  * Clear units sold lost
  * Add "Sell Units" (`Asud`) ability
    * Final list looks like `Asud,Ane2,Avul`, + `Asid` if vanilla selling location items

#### Possible locations
Noting possible locations, including rejected ones.
In case I want to allow multiple bonus camps per mission or randomize merc camp locations.

* H2
  * [Implemented] Orc Campfire (-960, -832)
  * Murloc area entrance (-3200, 640)
  * Black Dragon entrance (3136, -3264)
* H4
  * [Implemented] High ground east of Murloc Nightcrawlers (-960, -896)
* H5
  * [Implemented] Gap in trees north of base (4864, -1984)
    * Defended by creep camp: Brigand, Ogre Warrior
  * East of Murloc ramp (896, -4160)
  * High ground east of Green base, west of zombie farm (64.0, -7616.0)
* H6
  * [Implemented] Bandit camp west of base (2496, 7488)
  * Center-east plaza (7934, -2880)
  * South city trees (8384, -7424)
    * Replace trees YTct_3178, YTct_3177
* H7
  * [Implemented] No-build troll camp (2176, -4672)
  * Wendigo camp (64, 1024)
  * Purple Undead base (2688, 3968)

## No-builds
No-builds get kind of samey if you start with vanilla units, as that's enough to beat the mission.
To integrate with items, the baseline should be lowered and items used to bring the mission back
to baseline power level.

### Proposal 1: Irregulars (implemented)
Replace some starting units with "irregulars", which have lower stats but may be upgraded to other units.

What units work as an irregular?
* Militia
* Bandit
* Villagers (non-combat irregulars)
* Zombie
* Skeleton
* Ghost
* Kel'Thuzad (Ghost)
* Night Elf Runner

What additional units can be accessed?
* Human
  * Militia
  * Blood Elf Archer
  * Emissary/Chaplain
  * Swordsman
  * Bandits (Bandit, Brigand, Rogue, Assassin, Enforcer, Bandit Lord)
  * Wizards (Apprentice Wizard, Rogue Wizard, Renegade Wizard, Dark Wizard)
* Undead
  * Skeleton Warrior, Skeleton Mage
  * Skeletons (Skeleton Archer, Burning Archer, Skeleton Warrior, Giant Skeleton Warrior)
  * Skeletal Orcs (Skeletal Orc, Skeletal Orc Grunt, Skeletal Orc Champion)
  * Zombie, Dalaran Mutant
  * Ghosts (Ghost, Wraith)
  * Fel beasts (Fel Beast, Fel Stalker, Fel Ravager)
  * Heretics (Fallen Priest, Deceiver, Heretic)
  * Ice Revenants (Frost Revenant, Ice Revenant)
  * Dungeon Revenants (Fire Revenant, Lightning Revenant, Death Revenant)
  * Water Revenants (Revenant of the Tides, Revenant of the Seas, Revenant of the Depths, Deeplord Revenant)
* Orc
  * Orc Warlock
  * Spirit Wolf
  * Forest Trolls (Forest Troll, FT Shadow Priest, FT Trapper, FT Berserker, FT High Priest, FT Warlord)
  * Ogres (Ogre Warrior, Ogre Magi, Ogre Mauler, Ogre Lord)
  * Stormreavers (Stormreaver Apprentice, Stormreaver Hermit, Stormreaver Necrolyte, Stormreaver Warlock)
* Night elf
  * Sentry
  * Warden
  * Treant
  * Furbolgs (Furbolg, Furbolg Shaman, Furbolg Tracker, Furbolg Champion, Furbolg Elder Shaman, Furbolg Ursa Warrior)
  * Wildkins (Wildkin, Enraged Wildkin, Berserk Wildkin)
* Naga
  * Murlocs (Murloc Tiderunner, Murloc Huntsman, Murloc Nightcrawler)
  * Mur'gul (Mur'gul Cliffrunner, Mur'gul Blood-gill, Mur'gul Tidewarrior, Mur'gul Snarecaster, Mur'gul Marauder, Mur'gul Shadowcaster)
  * Sea Turtles (Sea Turtle Hatchling, Sea Turtle , Sea Turtle, Giant Sea Turtle, Gargantuan Sea Turtle, Dragon Turtle)
  * Makrura (Markrura Prawn, Markrura Pooldweller, Markrura Tidecaller, Makrura Deepseer, Makrura Snapper, Makrura Tidal Lord)
  * Draenei (Draenei Guardian, Draenei Disciple, Draenei Protector, Draenei Watcher, Draenei Harbinger, Draenei Darkslayer, Draenei Seer)

### Proposal 2: Captains (implemented)
Starting captains are removed.

Footmen and irregulars gain the ability to upgrade to a captain.

What captains are there?
* Human
  * Captain
  * Blood Elf Lieutenant
  * Emissary/Chaplain
  * Hydromancer
  * Marine
* Undead
  * Sylvanas Windrunner (Banshee)
  * Skeletal Orc Champion?
* Orc
  * Space Fel Orc
  * Orc Warchief
  * Orc Warlock
* Night Elf
  * Shandris
  * Naisha
* Blood Elves
  * Blood Elf Lieutenant (from Hx3)
* Naga
  * Naga Royal Guard

## Heroes
### Abilities
Possibilities:
* Each ability is assigned to a random hero, only useful in the missions that hero appears
* Abilities are assignable to heroes
* Abilities are locked to a hero, but when you get them, they are assignable to a mission
* Items are general (ie "ability 2") and all heroes benefit from it
* Assignable ability points that must be allocated in special UI

### Hero slots
#### Consistent slots
* Each hero slot gets randomized. So if Arthas gets rando'd to Tyrande, he will be Tyrande in all human campaign missions
* Alternate: hero slot rando. So Arthas can be Tyrande in Hu1 and Illidan in Hu2. Hero inventories are locked to slot (inspired by Arithon89 in GGG's Twitch chat)

#### Settings
> I would make the ability setting akin to:
> Vanilla: abilities are not random on your heroes
> Shuffle: Every hero gets 1 ultimate, and no more than one passive.
> Powerful: Each hero gets 5 slots instead of 4, otherwise similar to Shuffle. (I would make it 1 ultimate, 1 passive, 1 support, and 2 primary/secondary)
> Chaos: Anything is possible. 4 ultimates on one hero? 4 passives on another?
> Chaos+: Why not 5 ultimates on one hero?

--Sraw

### Chaos heroes
There are 3 points in the RoC campaign where a hero gets corrupted, with an accompanying chas damage type buff
* H9: Arthas claims Frostmourne
* O5: Grom drinks from the well
* N6: Illidan consumes the Skull of Gul'dan

Illidan's morph takes the place of his ultimate ability,
so when generalizing it may be better to use the TFT Illidan unit as a base instead.

The stat changes:
* Arthas (Hart -> Harf):
  * Base HP: 100 -> 150 (modified from 100)
  * Start AGI: 13 -> 15 (modified from 13)
  * Start INT: 17 -> 19 (modified from 17)
  * Start STR: 22 -> 24 (modified from 22)
  * Damage Base: 0 -> 12 (modified from 22)
  * Damage Type: normal -> chaos
* Grom (Ogrh -> Opgh):
  * Damage Base: 0 -> 12
  * Damage type: normal -> chaos
* Illidan (Eill -> Eidm):
  * HP Regen: 0.5 -> 1
  * Start STR: 21 -> 26
  * Start AGI: 22 -> 20
  * Damage Base: 0 -> 12
  * Damage Type: normal -> chaos
  * Changes to a missile attack / can target air
* Illidan RoC -> TFT (Eill -> Eevi):
  * Attack Type: normal -> hero
  * Build time: 55 -> 40
  * No more Ultravision

The consistent points are that a chaos hero gains +12 base damage and changes their attack type to chaos.

It would be nice to switch to alternative models or retexture heroes for their chaos counterparts.
That's a lot of work for 57 units, though.
Until then I think I'll fall back to scaling up by 20%, darkening, and applying a red hue.
Note Grom scales up by 20% when he gets corrupted.

When making custom models, note many of the campaign-specific heroes have subtly different models.
Still, it may be expedient to have corrupted heroes share some models.

In vanilla, no Undead heroes are ever corrupted.
It would be funny if corruption instead "un-corrupted" them,
giving them a more light/living aesthetic.

#### Visuals
* Jaina
  * Robe changed purple -> dark red
  * Highlights changed golden -> sickly green
  * Eyes changed blue -> pink
  * Red stain added to sleeves
* Muradin / Mountain King
  * Eyes changed sclerae white -> black, irises blue -> orange
  * Beard changed blond -> brown with red/orange streaks
  * Bloodstain added to horns
  * Bloodstain added to axe
  * Hammer darkened, highlights hue shifted teal -> red/orange

## Shopsanity
* Allow buying checks from goblin merchants
* Allow buying checks from mercenary camps
* Allow buying checks from goblin laboratories

Note scripts should probably be updated to support custom check item costs per-location.

## Mission Unlocks
* Human 1: "It is a father's right to dream, isn't it?"
* Human 2: "Vengeance cannot be a part of what we must do."
  * Human 2: "If we allow our passions to turn to bloodlust, we will become as vile as the orcs."
  * Human 2: "We defeated their demons a long time ago."
* Human 3: "It's been a long time since a prince escorted me anywhere."
  * Human 3: "Undead, milord! This whole village has gone mad!"
  * Human 3: "I'm sorry I can't stay and chat, but duty calls."
* Human 4: "Your curiosity will be the death of you."
* Human 6: "This entire city must be purged."
  * Human 6: "You may be the prince, but I'm still your superior as a paladin"
  * Human 6: "Then I must consider this an act of treason."
  * Human 6: "Treason? Have you lost your mind, Arthas?"
* Human 8: "The ships must be burned before the men reach the shore."
* Human 9: "I will give anything or pay any price, if only you will help me save my people." 
* Undead 8: "Tremble, mortals, and despair. Doom has come to this world."
* Orc 1: "Is there nothing in this land but dust and carngage?"
* Orc 3: "I can wait no longer. The humans must be slaughtered!"
* Human x02: "Am I to assault the undead base with nothing but sticks and harsh language?"

## Difficulty challenges (tentative)
* Human 01: Slay Menag without letting him run away
* Human 02: Win without losing a building?
* Human 03: Don't kill a skeleton after you've killed a necromancer?
* Human 04: 
* Human 05: Kill an undead base
* Human 06: Kill 3 undead buildings
* Human 06: Win without killing Mal'Ganis more than once

## ROC Balance
RoC maps use 1.01 balance, TFT campaign maps use 1.07. There are several differences between the versions, noted in [roc_vs_tft](./roc_vs_tft.md). The main ones are:
* New units in TFT
* A complete overhaul of the damage-type system
  * Casters all switch from piercing to magic attack type
  * Heroes get a hero damage type
  * Unarmoured armour type added
* Several new models and some unit renames
* Upkeep / max food boundaries 40/70/90 -> 50/80/100
* Many unit, ability, item, and building cost rebalances
* Caster adept/mastery training reworked

I've chosen to only port a subset of these changes for RoC maps; otherwise, they'll use TFT balance.

Reverted:
* Upkeep / max food boundaries
* Magic attack types switched to piercing attacks (to ensure they can still hit magic-immune enemies)
* Unit models and names
  * Keeping hotkeys on TFT standards for consistency
  * Note the Steam Tank gets updated to the Siege Engine when researching barrage

I generally find most of the balance adjustments appealing:
* Brilliance aura is less OP
* Ancient Protectors lose their minimum range
* Many caster buff/debuffs cost less mana and so can be used more
* Long-range siege units have slightly more range (1000 -> 1150)
* Many ultimates are easier to use, except NE
* The absolutely OP NE ultimates are less spammable
* Cyclone no longer lasts 70 years

## Art
There are many possible icons for the randomized items. Noting good options here:
* Items -> Secret Level Powerup
* Items -> Cheese
* Items -> Mogrin's Report
* Items -> Magic Key Chain
* Items -> Blood Key
* Items -> Ghost Key
* Items -> Moon Key
* Items -> Sun Key
* Items -> Orc Flag
* Units -> Wyvern Cage
* Units -> Vulture
* Units -> Stag
* Units -> Skink
* Units -> Snowy Owl
* Units -> Raccoon
* Units -> Penguin
* Units -> Magic Vault
* Units -> Icy Treasure Box
* Units -> Frog
* Units -> Dog
* Units -> Chicken
* Units -> Book of Summoning Pedestal
* Units -> Arcane Vault
