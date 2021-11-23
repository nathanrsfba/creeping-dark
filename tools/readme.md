This directory is a place to collect up the various tools I've thrown together
in the process of making this pack, so they're not cluttering up the actual
config directories

custweap.pl
-----------
A script for generating an Epic Fight Mod configuration file from a simpler
configuration language.

Edit the configuration options within the file, then run it to generate a
suitable epicfight.cfg to stdout

nbt2snbt.py
----------- 
A small script to convert between NBT files and SNBT (stringified -- i.e. text
format NBT) files. Requires nbtlib. 

To convert NBT to SNBT:

    nbt2snbt -s <INPUT> <OUTPUT>

To convert SNBT to NBT:

    nbt2snbt -d <INPUT> <OUTPUT>

rendim.py
---------
A script to mass-rename dimensions in a generated Just Enough Resource
profile.

To use, first run the JER profiler, then run rendim on world-gen.json to
create a list of dimensions:

    rendim world-gen.json > dimensions.json

Then edit the resulting file: The keys are the names of the dimensions as
generated my JER, the values are the names you want to change them to. Then
update the world-gen.json file:

    mv world-gen.json world-gen-old.json
    rendim -d dimensions.json world-gen-old.json > world-gen.json

updatemods.bat
--------------
A simple batch file to update mods.txt from the content of the mods directory.
Superceded by modmg.pl.

modmg.pl
--------
A Perl script that updates the mods.txt file based on the mods in the mods/
folder, and vice-versa. Mods removed from the mods/ folder are stored in the
modrepo directory, to facilitate the switching of mod versions when checking
out difrerent branches. 

To update mods.txt from mods/:

    modmg save

To update mods/ from mods.txt and modrepo/:

    modmg load

To compare the two and display status:

    modmg

pre-commit
----------
A shell script that runs modmg before commit, and aborts the commit if mods.txt
is out of sync with the mods/ folder. Copy or link it in .git/hooks to have it
automatically run on commit

post-checkout
-------------
A shell script that runs modmg to switch out mods when checking out a branch.
Copy or link it in .git/hooks to have it automatically run on checkout
