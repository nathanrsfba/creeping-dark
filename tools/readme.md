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

conflictfinder.zs
-----------------
A CraftTweaker script that can find potential recipe conflicts. To use it, drop
it in scripts, load a world, and issue the command "/ct findconflict". The
report will be sent to the CraftTweaker log file

mkpkg.py
--------
A Python script to create a pack .zip files automatically. Takes information
from the instance's config.json, and from the existing manifest.json (if
available), generates an updated manifest, and a new .zip of the pack.

For Creeping Dark, this command usually is something line the following:

    mkpkg.py -n "Creeping Dark" -a NathanRsfba 1.6 mods config scripts structures resources 

pre-commit
----------
A shell script that runs modmg before commit, and aborts the commit if mods.txt
is out of sync with the mods/ folder. Copy or link it in .git/hooks to have it
automatically run on commit

post-checkout
-------------
A shell script that runs modmg to switch out mods when checking out a branch.
Copy or link it in .git/hooks to have it automatically run on checkout

publish
-------
A shell script that automates the process of pushing a release onto GitHub, in
conjunction with mkpkg.py. It depends on the GitHub CLI client being installed.

The script will:

1) Run an editor for the user to write some release notes
2) Run mkpkg.py to create the package file
3) Rename the pack file to the desired format
4) Apply an appropriate tag to the head of the repo
5) Push the current branch and the newly created tag to the remote repo
6) Create a new release on GitHub with the pack file as an asset

The top of the script contains configuration data, in both variables and
functions to control the process.

The script takes a single parameter, which is the version to tag the release
as. It should be specified as a version number, with no 'v' prefix or anything
of the sort. Alpha or Beta versions can be specified by appending an 'a' or 'b'
to the end, following by the alpha/beta number.

For example:

For a release version:

```
tools/publish 1.6.1
```

For a beta version:
```
tools/publish 1.6.1b1
```

The configuration functions will translate the given version number into the
appropriate options, including release title, filename, pack metadata, Git tag,
and prerelease status.

The script also takes one option: '-t' does not create the pack, but shows
what would have been done.

