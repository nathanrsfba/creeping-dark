#!/usr/bin/env python3

import json
import sys
import argparse
import os
from zipfile import ZipFile, ZIP_DEFLATED
from pathlib import Path
from collections import namedtuple
import sqlite3

def main():
    args = getArgs()
    keep = args.from_manifest

    if( os.path.exists( 'manifest.json' )):
        with open( 'manifest.json' ) as f:
            manifest = json.load( f )
    else:
        manifest = createManifest()

    if not args.overrides:
        args.overrides = ['mods']

    if not keep:
        (config, modFiles) = getConfig( args )

        print( "Updating manifest info from config..." )
        manifest['minecraft']['version'] = config.mcVersion
        manifest['minecraft']['modLoaders'][0]['id'] = config.loader
        if( ('author' not in manifest and args.author == None) or
                ('name' not in manifest and args.name == None) or
                ('version' not in manifest and args.version == None) ):
            raise RuntimeError( "Must specify a pack name, author, " +
                               "and version when creating a new pack file" )

        manifest['files'] = []

    if args.author: manifest['author'] = args.author
    if args.name: manifest['name'] = args.name 
    if args.version: manifest['version'] = args.version
        
    print( "Gathering list of files..." )
    overrides = fileList( *(args.overrides ))

    if not keep:
        files = overrides
        overrides = []
        for f in files:
            (_, fn) = os.path.split( f )
            if fn in modFiles:
                cModInfo = modFiles[fn]
                mModInfo = {
                        'projectID': cModInfo.projectID,
                        'fileID': cModInfo.fileID,
                        'required': True
                        }
                manifest['files'].append( mModInfo )
                # print( f'M {f}' )
            else:
                # print( f'O {f}' )
                overrides.append( f )

    print( "Writing manifest..." )
    with open( 'manifest.json', 'w' ) as f:
        json.dump( manifest, f, indent=2 )

    if args.manifest_only:
        print( 'Overrides:' )
        for f in overrides:
            print( f )
    else:
        print( "Creating archive..." )
        packFN = f"{manifest['name']}-{manifest['version']}.zip"
        with ZipFile( packFN, 'w', compression=ZIP_DEFLATED ) as z:
            z.write( 'manifest.json' )
            for f in overrides:
                print( f"Adding {f}..." )
                z.write( f, os.path.join( 'overrides', f ))

        print( f"Created {packFN}" )

def getConfig( args ):
    """Get the GDLauncher instance configuration.

    Gets the relevant information about the instance from GDLauncher
    configuration, based on command line arguments, whether it's
    Cabon or Legacy.
    """

    ModInfo = namedtuple( 'ModInfo', ('fileName', 'projectID', 'fileID') )
    ConfigInfo = namedtuple( 'ConfigInfo', ('mcVersion', 'loader') )
    modFiles = {}

    if args.config_json:
        with open( args.config_json ) as f:
            config = json.load( f )

        for mod in config['mods']:
            if( 'projectID' in mod ):
                modInfo = ModInfo(
                        mod['fileName'], mod['projectID'], mod['fileID'] )
                modFiles[modInfo.fileName] = modInfo

        loader = config['loader']
        (mcver, ldver) = loader['loaderVersion'].split( '-' )
        loaderStr = f"{loader['loaderType']}-{ldver}"
        config = ConfigInfo( mcver, loaderStr )
    else:
        with open( args.instance_json ) as f:
            config = json.load( f )
        loader = config["game_configuration"]["version"]["modloaders"][0]
        (mcver, ldver) = loader['version'].split( '-' )
        loaderStr = f"{loader['type'].lower()}-{ldver}"
        config = ConfigInfo( mcver, loaderStr )

        # A note on how GDLauncher Carbon stores mod information:
        # Under Legacy, the list of mods was stored in the config.json file.
        # This included the filename, project ID and file ID for each mod.
        # In Carbon, this is stored in the GDLauncher config, which is in
        # `gdl_conf.db` in the `data` directory.
        #
        # This is a sqlite3 database which contains most of the GDL config.
        # Of note here is the `ModFileCache` table, which lists each mod file,
        # along with a metadata ID. Also of note is the `CurseForgeModCache`
        # table, which contains the project ID and file ID of the mod on
        # curseforge; it also contains a metadata ID entry, which will match
        # the entry in ModFileCache.
        #
        # We use the following SQL query to grab the information out of these
        # tables, and build a list of all mod files that the GDL install is
        # aware of -- basically every file in every installed instance.
        #
        # The rest of the configuration for individual instances is stored in
        # the `instance.json` file in individual instance folders.

        con = sqlite3.connect( args.db_path )
        cur = con.cursor()
        res = cur.execute( """
                          SELECT ModFileCache.filename,
                          CurseForgeModCache.projectId,
                          CurseForgeModCache.fileId
                          FROM ModFileCache
                          JOIN CurseForgeModCache
                          ON ModFileCache.metadataId = CurseForgeModCache.metadataId;
                          """ )
        for data in res:
            info = ModInfo( *data )
            modFiles[info.fileName] = info

    return (config, modFiles)

def createManifest():
    manifest = {
            "minecraft": {
                "version": None,
                "modLoaders": [
                    {
                        "id": None,
                        "primary": True
                    }
                ]
            },
            "manifestType": "minecraftModpack",
            "overrides": "overrides",
            "manifestVersion": 1
    }

    return manifest

def fileList( *args ):
    files = []
    for arg in args:
        if( os.path.isdir( arg )):
            for d in os.walk( arg ):
                for f in d[2]:
                    files.append( os.path.join( d[0], f ))
        else:
            files.append( arg )

    return files

def getArgs():
    parser = argparse.ArgumentParser(
            description='Create a curse pack package from GDLauncher instance config' )
    parser.add_argument( 'version', type=str, nargs='?',
            help='Version of the pack' )
    parser.add_argument( '-n', '--name', nargs='?', default=None,
            help='Name of the pack' )
    parser.add_argument( '-a', '--author', nargs='?', default=None,
            help='Author of the pack' )
    parser.add_argument( '-m', '--manifest-only', action='store_true',
            help='Generate the manifest.json, but not the archive' )
    parser.add_argument( '-M', '--from-manifest', action='store_true',
            help='Build from manifest without installed instance' )
    parser.add_argument( '-C', '--dump-config', action='store_true',
            help='Dump JSON of current options to stdout' )
    parser.add_argument( '--config-json',
            help='Path to config.json (for GDLaucher Legacy).' )
    parser.add_argument( '--instance-json',
            help='Path to instance.json (for GDLaucher Carbon).' )
    parser.add_argument( '--db-path',
            help='Path to gdl_conf.db (for GDLaucher Carbon).' )
    parser.add_argument( 'overrides', nargs='*',
            help='Folders/files to include in the pack' )

    cfg = Path( '.mkpkg' )
    if cfg.exists() and cfg.stat().st_size != 0:
        with open( cfg ) as f:
            try:
                cfgs = json.load( f )
            except json.decoder.JSONDecodeError as e:
                print( "Error in .mkpkg:", file=sys.stderr )
                print( e, file=sys.stderr )
                exit( 1 )

            parser.set_defaults( **cfgs )
    args = parser.parse_args()

    if args.dump_config:
        v = vars( args )
        del v['dump_config']
        print( json.dumps( v, indent=2 ))
        exit( 0 )


    # The following probably ought to be done in getConfig(), but oh well
    if( (args.db_path == None or args.instance_json == None) and
       args.config_json == None and not args.from_manifest ):
        print( "Attempting to autodetect config" )
        db = Path( '../../../gdl_conf.db' )
        instance = Path( '../instance.json' )
        config = Path( 'config.json' )

        if db.exists() and instance.exists():
            print( "Detected GDL Carbon" )
            args.instance_json = instance
            args.db_path = db
        elif config.exists():
            print( "Detected GDL Legacy" )
            args.config_json = config
        else:
            print( "Couldn't find GDLauncher configs" )
            exit( 1 )

    return args

if __name__ == '__main__':
    sys.exit( main() )
