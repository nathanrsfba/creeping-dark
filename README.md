Creeping Dark
=============

A standard kitchen-sink tech mod pack. With a bit of exploration. And a bit of
progression. And an artifact hunt quest. But mostly a standard
kitchen-sink tech mod pack.

Also, the sun is slowly being blotted out.

Welcome to Creeping Dark, a mod pack about saving the world. It contains many
of your standard tech, magic, and dimension mods, with a twist. A plague is
slowly covering the sky, blocking the sun. You must find the Sixteen keys to
the end, retrieve the Dragon's egg, and bring it back to the Earth to cure
it. Each tier of technology unlocks a new dimension, and each dimension
unlocks a new tier of technology... and one of the Keys.

While there is a progression mechanic, the recipes are unchanged, with a few
exceptions. Once you've "unlocked" a mod, it works the way it always has.

Installation
------------

Creeping Dark officially supports GDLauncher as the preferred launcher
platform, though it can be installed with the official Curse launcher as well.

To install with GDLauncher:

1. Install and launch [GDLauncher](https://gdevs.io/)
2. Click the [+] button
3. Select "Import Zip"
4. Copy the URL of the latest version of the .zip file from the
   [releases](https://github.com/nathanrsfba/creeping-dark/releases) 
   page, and paste it in to GDLauncher
5. GDLauncher may need to go through a few extra steps to install a few mods.
   Just follow the prompts and let it do its thing.

To install with the Curse launcher:

1. Install and launch the [CurseForge App](https://download.curseforge.com/)
2. Download one of the files from the 
   [releases](https://github.com/nathanrsfba/creeping-dark/releases) page
3. Click the "Create Custom Profile" button
4. Click "import a previously created profile"
5. Point it to the file you downloaded in step 2

Server Installation
-------------------

1. Download Minecraft Forge v14.23.5.2860 and install it into a folder
2. From the command line, run the server and accept the EULA.
   The command will look something like the following:
   ```java -jar forge-1.12.2-14.23.5.2860 nogui```
   The 'nogui' part is important. For some reason, the GUI will slow the
   server to a crawl
3. Run the server again to generate the needed files and folders, then
   shut it down
4. In the server.properties file, set "enable-command-block" to "true".
   (And adjust any other options to taste. It might be a good idea to
   set allow-flight=true, as there are legit flight items in the pack)
5. From a Creeping Dark client install, copy the following folders into
   the server folder:

   * config
   * mods
   * resources
   * scripts
   * structures
   
   Remove the following mods from the 'mods' folder as they're client side
   only, and not required on the server:

   * Controlling
   * CTM
   * Ding
   * jeiintegration
   * JustEnoughResources
   * LLOverlayReloaded
   * moreoverlays
   * MouseTweaks
   * ReAuth
   * ThaumicJEI
   * Toast Control

6. If you want to use Biomes O' Plenty or Realistic Terrain Generation, go into
   the config/defaultworldgenerator-port folder, delete the default
   `worldsettings.data` file, and rename either `worldsettings.data.bop` or
   `worldsettings.data.rtg` to `worldsettings.data`.

   There's also copies of the configuration for some of the other world types
   in this folder as well.
7. Start the server, or upload the folder to your hosting platform and run it

Questions
---------

Q: My money disappeared!
A: This seems to happen when changing dimensions. Completing a quest that gives
money seems to restore it. It's similar to the glitch where all your XP
disappears when you change dimensions, but magically comes back when you pick
up more XP. I've added a quest to the opening questline that gives you 0 money,
which causes the missing money to reappear. Also, signing out of the
world/server and signing back in seems to restore it, so it should never be
truly 'gone'.

Q: I see a console message about objects being summoned?  
A: That's a redstone mechanism I have hidden away in a utility dimension that
recreates certain objects. You can just ignore the message.

Q: The Blaze boss spatial IO isn't loading or regenerating, or the 
'Swamp Magic' frequency isn't showing up in the entangloporter  
A: Apparently my utility dimension gets nuked sometimes. Why? Haven't
a goddamn clue. To fix this, try exiting your world/restarting the server a
couple times. It should get regenerated every time the world loads.

Q: RFTools dimensions don't seem to be generating dimensional shard ore  
A: If the base block of the dimension isn't plain stone, ore generation won't
occur. (This is part of Minecraft's own oregen mechanics.) Try generating
more dimensions until you get one with a base material of stone.

Q: The rocket assembler does nothing when I try to scan or build a rocket  
A: I ran into this once... try making the structure tower a little taller,
even if it looks like you have enough.

Q: When I try to run a standalone server, it runs obscenely slowly  
A: Try adding the 'nogui' option. The GUI really fucks everything up
for god knows what reason

Q: Minibosses aren't spawning when running a standalone server  
A: Edit your server.properties and enable command blocks

Changes in v1.6.1.1
-------------------

* Arc furnace electrodes made using the metal press now count for the quest
* Arc fucnace electrodes quest no longer requires the blueprint
* Tweaked AE2 quests to fix issues with items being craftable before quests
  unlock
* Questline will now accept creosote oil being made from the Thermal Expansion
  pyrolytic converter
* Added some configuration files so alternate world types can now be selected.

Changes in v1.6.1
-----------------

* Some new mods, including:
  * Simply Light, which gives you some new lighting options
  * Aqua Acrobatics: Aquatic Update-style swimming
  * Debark: Stripped logs
  * Farming for Blockheads: Among other things, a much nicer market for Pams
    crops
  * Some Macaw's decorative mods
* Removed LagGoggles and TickCentral for now, due to a conflict with
  AquaAcrobatics. If you need to use LagGoggles and/or TickCentral on your
  server, disable bubble columns in aquaacrobatics.cfg, and disable mixins in
  aquaacrobatics_core.cfg
* Updated mods, as usual
* Advanced Rocketry has had a few gameplay updates, including different types
  of rocket engines
* You can now blast away small patches of sky plague using beacons
* Added some more weapons to the shop
* Added a bit more mad science to the mad science lab
* Nerfed creepers even harder
* Miscellaneous minor tweaks and bugfixes


Changes in v1.6
---------------

* New Void City dungeon

  No longer will you summon a blaze out of a spatial storage unit... instead
  you'll zap yourself *into* a spatial storage unit. Inside you'll find a city
  yoinked wholesale from the End, with the gold key, and some end resources
  (including an Elyra)

* Added Prefab. Now you can summon prebuilt houses instead of building your
  own, if you're so inclined

* Added XNet, an advanced system for transporting resources from Point A to
  Point B

Changes in v1.5.5
-----------------

* Converted the quest system to FTB Quests.

  One notable change is that FTB Quests doesn't have the option to recognize
  progress on quests that are still locked. Some minor reworking of the quest
  lines has been done to minimize the impact of this, but you may occasionally
  find yourself having to 'redo' some task in order for it to be recognized. If
  you find any particularly egregious examples, please report them as issues.

* Added Epic Fight Mod, which gives you some new melee combat mechanics.

  I've added configurations for most modded weapons and armors. Some items may
  glitch out visually in combat mode, and some of the weapon types don't 100%
  match with their EFM types, but everything should at least have reasonable
  values.

* Added Akashic Tome, which lets you combine most of your guidebooks into
  a single item

* Added Tinkers Tool Leveling, which gives your tools extra modifier slots
  as you use them

* Added Nature's Compass, which can be used to find specific biomes

* Creeper damage has been severly reduced, thanks to Environmental Creepers. No
  more getting one-shot at full health and full armor! And no more damage to
  your base!

* Fixed the recipes for marble bricks only giving one block of bricks instead
  of four

* Tweaked the dependencies for some of the questlines, so less chance of a
  quest still being locked despite being completable. Some other minor
  questline tweaks as well.

* Tweaked the default keybindings a bit

Changes in v1.5.4.1
-------------------

Fixed some recipe conflicts:

* Quark vs. Agricraft trowel
* Sound box vs. stained planks
* Iron ladder vs. rusty ladder
* Bibliocraft vs. Random Things golden compass
* RandomThings ID card vs. EnderIO black paper
* Respawn obelisk vs. Minecraft chest
* Multiple variants of marble bricks
* Multiple variants of bronze tools
* Malisis curtains vs. Aether capes
* Multiple variantes of sickles
* Scaffolding vs. Block of Sticks

Changes in v1.5.4
-----------------

* The Water Key is now reconstituted using the Smeltery
* You can now choose between HWYLA and TheOneProbe, with HWYLA being
  the default. Go into the keybinds and bind keys to hide one, and 
  enable the other
* The custom main menu is now implemented using FancyMenu. No real
  chagne to the end user, except now Ding works again
* Updated mods

Changes in v1.5.3
-----------------

* Updated mods
* A few minor tweaks for ProjectE. While it's not actually part of the pack,
  players that choose to add it manually will have a slightly better time.
  (Put another way: I played through the pack with ProjectE for shits and
  giggles, and squashed a few minor bugs along the way.)
* Added a custom end message at the credits screen. So stick around for a
  minute when you come back from the End.

Changes in v1.5.2
-----------------

* Added some new content mods: Modular Powersuits, Construct's Armory,
  Decocraft, MrCrayfish's Furniture Mod, Blockcraftery, and Gas Conduits
* Added some new behind-the-scenes mods: AttributeFix, Dupefix Project, UniDict
  and FoamFix
* Updated a number of mods
* Some minor tweaks to accomodate new mods and mod updates
* Updated the Plagued Skies mod to fix a problem with plague not being seeded
  properly when the player changes worlds
* The Ghast holding the Fire Key Core now has a rather large amount of health
  (thanks to AttributeFix). You can still kill it with weapons, but it's much
  easier to reflect its fireballs back at it.
* Now has a crappy, low-effort custom menu screen, just on general principles.

Changes in v1.5.1
-----------------

* Updated EnderIO which resolved the issues I was having with running a server

Changes in v1.5
---------------

* Due to drama involving LandMaster, LandCraft has been removed from the pack.
  PlusTiC has been replaced by a third-party fork.
* To replace Landia, TropiCraft and Atum2 have been added to the pack.
* TropiCraft can be accessed after either the Mining Dimension or the Hunting
  Dimension
* TropiCraft leads to Atum, using bits from Immersive Engineering and Extra
  Utilities.
* The Deep Dark portal is now created using Khnumite from Atum
* The water key is now reconstituted using the AA empowerer
* Mods have been updated
* Various tweaks, integrations and bugfixes
* Updated Forge to a slightly newer version

Changes in v1.4.4
-----------------

Made some changes to deal with some dumbassery on the part of
LandMaster.

1. Replaced PlusTiC with MoreToolMats, a fork by a third party
2. LandCraft and LandCore are now included in the pack file, instead of
   downloaded from Curse, from which they are now banned. This is a far from
   ideal solution (as nobody has really properly audited the code for either
   mod) but will have to serve until I can figure out a suitable replacement
   (or somebody forks the code). The malicious code that was inserted into
   PlusTTic does not appear to be in either LandCraft or LandCore, but I
   haven't looked too deeply into the code.

Changes in v1.4.3
-----------------

* Updated the Plagued Skies mod. It should cause dragonskin to decay
  in 'patches', instead of individual blocks. Still somewhat untested.

Changes in v1.4.2
-----------------

* The weedwood quest should recognize all forms of weedwood now
* Updated the gecko quest to accomodate changes in Betweenlands
* Enabled Mekanism recipes for Open Modular Turrets
* Liquid oil pools now generate in desert biomes
* Immersive Petroleum can now process Thermal Expansion oil
* Updated mods
* Miscellaneous cleanup

About This Repository
---------------------

This repository contains the files that make the pack, minus the mods. This
includes configuration, scripts, custom assets, and worldgen structures. This
also includes the [Plagued Skies](https://github.com/nathanrsfba/plagued-skies)
mod, designed specifically for this pack. Also included is a `manifest.json`
file, which is used to build the pack file in the form of a CurseForge pack.

As of version 1.6.1.1, the pack can now be "built" from the repository using
the included `mkpkg.py` tool in the `tools` directory. The command to build it
will look something like this:

```
tools/mkpkg.py -M [version] mods config resources scripts structures
```

This should still be considered experimental and untested.

See `tools/readme.md` for more information about `mkpkg.py`.

License
-------

This pack and its assets (not including the mods, which are copyright their
respective authors) are released under the MIT license:

Copyright 2021 Nathan Roberts

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.


