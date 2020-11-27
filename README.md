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

Notes about v1.5 Beta
----------------------

Due to the drama surrounding LandMaster mods, LandCraft has been removed
from the pack. In its place have been inserted TropiCraft and Atum. Other
recipes involving Landia have been altered to reflect this change.

I feel like some 'progression' has been lost, but there doesn't really seem to
be anything that really *properly* fills the hole left by Landia.

See the changelog below for the full details.

Installation
------------

This pack is meant to be installed using the Twitch launcher, or other launcher
that has the ability to install Curse mod packs.

To install the pack file in the Twitch launcher: Click Mods, then Minecraft,
click 'Create Custom Profile', then click "Import a previously created
profile". Then select the pack zipfile.

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

Changes in v1.5-beta.7
----------------------

* Updated EnderIO to fix an incompatibility with LagGoggles

Changes in v1.5-beta.6
----------------------

* Added recipes for Advanced Generators advanced pressure valve
  and gold turbine. (AG appears to not be properly registering Induction
  Smelter recipes)

Changes in v1.5-beta.5
----------------------

* Fixed the jetpack item in the shop that broke due to an update to 
  Simply Jetpacks

Changes in v1.5-beta.4
----------------------

* Fixed a recipe conflict that prevented the crafting of Advanced Generators
  iron frames

Changes in v1.5-beta.3
----------------------

* Re-ran the Just Enough Resources profiler. New blocks that generate in the
  world in the latest version should now show up in JEI

Changes in v1.5-beta.2
----------------------

* Removed TheOneProbe, added HWYLA and WAWLA
  (For reasons that are not clear to me, I somehow had both TOP and HWYLA in
  the pack at the same time. I've decided to go with HWYLA, at least for now.)
* Removed most TropiCraft worldgen from the overworld. It just seemed to 
  'clutter' the overworld quite a bit. You can make the required materials from
  HarvestCraft coconuts and pineapples. Bamboo still generates.

Changes in v1.5-beta.1
----------------------

* Added TropiCraft to the progression, leading into Atum
* Pina Colada (necessary to enter the Tropics) must now be made with the
  drink mixer
* The drink mixer can now be made using porphyry (from Atum) in addition
  Chunk'O'Head
* Porphyry can now be found in the Mining and Hunting dimensions. It
  generates similarly to andesite
* The Tropis portal enchanter wand now uses a piece of chunk to craft
  (just to provide slightly more to do in the dimension)
* The golden scarab (for opening the Atum portal) is now made using the
  Tropics portal wand in the resonator
* Mods have been updated to latest versions
* Some minor tweaks and integrations

Changes in v1.5-alpha
---------------------

* Removed LandCraft; added Atum
* Relic ore is found in the Mining/Hunting dimensions (instead of Tungsten)
* The portal scarab is made by putting a golden brooch into the resonator
* The resonator requires an IE circuit board (instead of the board being used
  directly in the creation of the portal, which felt a bit contrived)
* The amethyst key is found in the Pharaoh's sarcophagus after killing him
* The Deep Dark portal is now created using Khnumite
* The water key is now reconstituted using the AA empowerer
* Slightly adjusted the food section in the shop

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

Copyright 2020 Nathan Roberts

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

