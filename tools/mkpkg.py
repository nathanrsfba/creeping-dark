import json
import sys
import argparse
import os
from zipfile import ZipFile, ZIP_DEFLATED

def main():
    args = getArgs()
    with open( 'config.json' ) as f:
        config = json.load( f )
    if( os.path.exists( 'manifest.json' )):
        with open( 'manifest.json' ) as f:
            manifest = json.load( f )
    else:
        manifest = createManifest()

    modFiles = {}

    print( "Getting mod info from instance config..." )
    # Find mods that were installed from Curse
    for mod in config['mods']:
        if( 'projectID' in mod ):
            modFiles[mod['fileName']] = mod

    print( "Updating manifest info from config..." )
    loader = config['loader']
    manifest['minecraft']['version'] = loader['mcVersion']
    (mcver, ldver) = loader['loaderVersion'].split( '-' )
    loaderStr = f"{loader['loaderType']}-{ldver}"
    manifest['minecraft']['modLoaders'][0]['id'] = loaderStr
    manifest['version'] = args.version
    if( ('author' not in manifest and args.author == None) or
            ('name' not in manifest and args.name == None) ):
        raise RuntimeError( "Must specify a pack name and author when creating a new pack file" )

    if args.author: manifest['author'] = args.author
    if args.name: manifest['name'] = args.name 

    manifest['files'] = []
    overrides = []
    
    print( "Gathering list of files..." )
    for f in fileList( *(args.overrides )):
        (_, fn) = os.path.split( f )
        if fn in modFiles:
            cModInfo = modFiles[fn]
            mModInfo = {
                    'projectID': cModInfo['projectID'],
                    'fileID': cModInfo['fileID'],
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

    print( "Creating archive..." )
    packFN = f"{manifest['name']}-{manifest['version']}.zip"
    with ZipFile( packFN, 'w', compression=ZIP_DEFLATED ) as z:
        z.write( 'manifest.json' )
        for f in overrides:
            print( f"Adding {f}..." )
            z.write( f, os.path.join( 'overrides', f ))

    print( f"Created {packFN}" )

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
    parser.add_argument( 'version', type=str,
            help='Version of the pack' )
    parser.add_argument( '-n', '--name', nargs='?', default=None,
            help='Name of the pack' )
    parser.add_argument( '-a', '--author', nargs='?', default=None,
            help='Author of the pack' )
    parser.add_argument( 'overrides', nargs='+',
            help='Folders/files to include in the pack' )

    return parser.parse_args()





if __name__ == '__main__':
    sys.exit( main() )
