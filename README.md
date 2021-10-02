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

About v1.5
----------

Due to the drama surrounding LandMaster mods, LandCraft has been removed
from the pack. In its place have been inserted TropiCraft and Atum. Other
recipes involving Landia have been altered to reflect this change.

See the changelog below for the full details.

Installation
------------

As of 1.5 Beta 8, Twitch no longer supports Minecraft mods, and its replacement
isn't ready yet, so I'm now targetting GDLauncher. It's supposed to create
CurseForge compatible packs, so feel free to use the official launcher
(whenever it gets its shit together), but from now on GDLauncher will be the
official platform for this pack.

To install the pack in GDLauncher, click the [+] button, select "Import Zip",
then navigate to the Creeping Dark .zip file.

Server Installation
-------------------

1. Download Minecraft Forge v14.23.5.2854 and install it into a folder
   (The standalone server doesn't seem to like v2847, even though it works on
   the client just file)
2. From the command line, run the server and accept the EULA.
   The command will look something like the following:
   ```java -jar forge-1.12.2-14.23.5.2854 nogui```
   The 'nogui' part is important. For some reason, the GUI will slow the
   server to a crawl
3. Run the server again to generate the needed files and folders, then
   shut it down
4. In the server.properties file, set "enable-command-block" to "true".
   (And adjust any other options to taste)
5. From a Creeping Dark client install, copy the following folders into
   the server folder:

   * config
   * mods
   * resources
   * scripts
   * structures
   
   Remove the following mods from the 'mods' folder as they're client side
   only, and not required on the server:

   * controlling
   * ctgui
   * ctm
   * ding
   * jeiintegration
   * jeresources
   * llor
   * moreoverlays
   * mousetweaks
   * thaumicjei
   * toastcontrol
   * reauth

6. Start the server, or upload the folder to your hosting platform and run it

Questions
---------

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

Changes in v1.5.5
-----------------

Converted the quest system to FTB Quests.

One notable change is that FTB Quests doesn't have the option to recognize
progress on quests that are still locked. Some minor reworking of the quest
lines has been done to minimize the impact of this, but you may occasionally
find yourself having to 'redo' some task in order for it to be recognized. If
you find any particularly egregious examples, please report them as issues.

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

This repository contains the files that make the pack, minus ths mods. This
includes configuration, scripts, custom assets, and worldgen structures. The
'mods.txt' file contains a list of the mod files used by the pack, though
normally these would be downloaded and installed as part of a Curse pack
file.

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


