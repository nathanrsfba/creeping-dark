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
**Depricated.** modmg.pl performs this task now.

A simple batch file to update mods.txt from the content of the mods directory.
Superceded by modmg.pl.

modmg.pl
--------
**Mostly depricated.** Mods are now tracked via the 'manifest.json' file. This
tool may still be useful in combination with `pre-commit` and/or
`post-checkout` when dealing with multiple branches with differing mod lists.

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
from the instance's configuration, and from the existing manifest.json (if
available), generates an updated manifest, and a new .zip of the pack.

The script expects to be passed a version number, followed by a list of
`overrides` directories; this specifies the directories to be included in the
pack. This should include the `mods` directory; the script will look for mods
in the CurseForge library, and reference them in the manifest, rather than
include them directly. Mods *not* listed on CurseForge will be included in the
.zip file.

This is expected to be run in the main "instance" directory; the one containing
the `mods` and `config` directories etc.

For Creeping Dark, this command usually is something line the following:

    tools/mkpkg.py 1.6 mods config scripts structures resources 

You can also pass the -m option to update the manifest.json file without
creating a pack file. This can be useful if you're committing the manifest to
git to manage mods. In this instance, you don't need to specify any
`overrides`, nor a version number. It will check the `mods` folder implcitly,
and the existing manifest, if they aren't specified.

You can specify the `-n` and `-a` options to set the pack name and author in
the manifest file.

You can specify the `-M` option to build a pack file from the manifest file,
without an installed instance present. This is mainly intended for building the
pack fresh from the repo without having to install it first -- is it not
intended to be used on an installed instance. It will not attempte to update
the manifest from either the content of the `mods` folder, nor the GDLauncher
config.  With this option, the `mods` folder should be empty, except for mods
that are intended to be included in the built pack file. 

You can explicitly specify the path to the `config.json` file (for GDLauncher
Legacy), or the `instance.json` and `gdl_conf.db` files (for GDLauncher
Carbon), using the `--config-json`, `--instance-json`, and `--db-path` options.
Normally mkpkg will find these on its own if launched from the instance
directory.

If a `.mkpkg` file is found in the current directory, it will be used to set
default values for `mkpkg`. It is expected to be in JSON format: Passing the
`-C` option to `mkpkg` will dump the current configuration (including that
specified on the command line) to stdout in the appropriate format.

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

The script takes several options to control what steps are performed. By
default, all aforementioned functions will be performed. The options will let
you specify which ones to perform. This can be useful for, for example,
recovering from a partially-failed publish operation. Run `publish` without
options to see the list.

The script also takes some other options::

`-t` does not create the pack, but shows what would have been done.

`-M` passes the `-M` option to mkpkg, which will create a pack file from the
`manifest.json` file, without attepmting to inspect the gdlauncher config. This
will publish the pack from a "fresh" clone of the repo.


mkserverpack.sh
---------------

This tool will create the official server pack for uploading to CurseForge.

This requires a populated `mods` folder, so it can't build a pack fresh out of
the repository. This can be provided by passing the path to the `mods` folder
in a client install using the `-m` option. Copying this script and the
`serverfiles` directory to a fresh client install and running it there should
work as well.

The script will copy all the required server files to a staging directory and
then zip them up. The files copied include everything in the `serverfiles`
directory, the folders required for the pack, and the mods, excluding mods that
are client-side only. The `serverfiles/options.sh` will control various aspects
of this process.

Usage:
```
$0 [-m MODDIR] [-n PACKNAME] [-v VERSION] [-s SERVERVERSION]
          [-f FOLDERS] [-x EXCLUDE] [-t TMP] [-d INNERDIR] [-k] [-z] [output]
```

* MODDIR: Path to a populated Creeping Dark mods folder. Defaults to `./mods`.
* PACKNAME: Name of pack. This should be `Creeping-Dark` (the default), unless
  you're repurposing this script for your own use.
* VERSION: Pack version. The default should match the version of the pack
  represented by the repository.
* SERVERVERSION: Server pack version. Bump this when a new server pack is
  released for the same Creeping Dark version.
* FOLDERS: Space-separated list of folders to include. This is the same set as
  used when generating the CurseForge clientside pack, which is the default.
* EXCLUDE: Space-separated list of mods to exclude. This will exclude any mod
  whose filename starts with one of these strings followed by a space, hyphen,
  or underscore. The default settings should normally contain the appropriate
  set for the current version of the pack.
* TMP: Temporary direcory for staging. Default is `./tmp`
* INNERDIR: Directory to place files in. The `zip` file created by this tool
  will contain a single folder, with this name, containing all the files.
  Default is `cdserver`.
* output: Directory and/or filename where `zip` file will be saved. If this
  exists and is a directory, the file will be placed in that directory, with a
  filename generated from the values of PACKNAME, VERSION, and SERVERVERSION.
  Otherwise, the file will be created at the given path. Default is the current
  directory.

* `-k`: Keep temporary directory when done.
* `-z`: Stage the files in the temporary directory but don't zip them up.
  Implies `-k`
