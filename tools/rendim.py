import json
import argparse

def main():
    parser = argparse.ArgumentParser( 
            description='Rename dimensions in world-gen.json file',
            epilog='If a dimension file is not specified, the dimensions ' +
            'in the worldgen-file will be read and a JSON file will be ' +
            'generated and printed to stdout, containing a list of all ' +
            'dimensions found in the worldgen file. This file may be edited ' +
            'and used as input for the -d option. ' +
            'If a dimension file is specified, the worldgen file will be ' +
            'read and dimensions renamed according to the dimension file. ' +
            'The result will be output to stdout.'
            )
    parser.add_argument( 'worldgen_file',
            help='Path to the world-gen.json file'
            )
    parser.add_argument( '-d', '--dimension_file',
            help='Path to json file of dimension mappings'
            )

    args = parser.parse_args()
    with open( args.worldgen_file ) as f:
        worldgen = json.load( f )

    if not args.dimension_file:
        dumpDimensions( worldgen )

    else:
        with open( args.dimension_file ) as f:
            dimensions = json.load( f )

        renameDimensions( worldgen, dimensions )

def dumpDimensions( worldgen ):
    dims = {}
    for block in (worldgen):
        dim = block['dim']
        dims[dim] = dim

    print( json.dumps( dims, indent=2 ))

def renameDimensions( worldgen, dimensions ):
    for block in (worldgen):
        dim = block['dim']
        if dim in dimensions:
            block['dim'] = dimensions[dim]

    i = 0
    orders = {}
    for dim in (dimensions):
        orders[dimensions[dim]] = i
        i += 1

    worldgen.sort( key=lambda e: orders[e['dim']] )

    print( json.dumps( worldgen, indent=2 ))

main()
