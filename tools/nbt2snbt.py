import nbtlib
import argparse

parser = argparse.ArgumentParser( 
    description='Convert between NBT and SNBT files'
    )
parser.add_argument( 'input', type=str,
                   help='input file' )
parser.add_argument( 'output', type=str,
                   help='output file' )
parser.add_argument( '-s', '--serialize', 
        action='store_true', help='convert from NBT to SNBT' )
parser.add_argument( '-d', '--deserialize', 
        action='store_true', help='convert from SNBT to NBT' )

args = parser.parse_args()
# print( args )

if args.serialize:
    nbt = nbtlib.load( args.input )
    snbt = nbtlib.serialize_tag( nbt, indent="\t" )
    with open( args.output, "wt" ) as f: 
        f.write( snbt )
elif args.deserialize:
    with open( args.input, "rt" ) as f:
        snbt = f.read()
    nbt = nbtlib.parse_nbt( snbt )
    nbtlib.File( nbt ).save( args.output )


