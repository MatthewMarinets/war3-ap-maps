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

## No-builds
No-builds get kind of samey if you start with vanilla units, as that's enough to beat the mission.
To integrate with items, the baseline should be lowered and items used to bring the mission back
to baseline power level.

### Proposal 1: Irregulars
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

### Proposal 2: Captains
Some starting units are replaced with a captain.
Captains are unlocked on a per-mission basis with an item.
Example: item for "Human02: Captain".

How should the game handle getting a captain mid-mission?
* Upgrade a random unit?
* Spawn a new unit? (at hero1 location)
* Allow irregulars to upgrade to a captain?

What captains are there?
* Human
  * Captain
  * Blood Elf Lieutenant
  * Emissary/Chaplain
  * Hydromancer
  * Marine
* Undead
  * Sylvanas Windrunner (Banshee)
* Orc
  * Space Fel Orc
  * Orc Warchief
* Night Elf
  * Shandris
  * Naisha
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

## Shopsanity
* Allow buying checks from goblin merchants

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
