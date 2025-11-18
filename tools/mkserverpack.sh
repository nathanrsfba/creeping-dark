#!/bin/sh

# Pack name
PACKNAME="Creeping-Dark-Server"
# Pack version
PACKVER="1.6.2"
# Server pack version
SERVERVER="1"
# Name of directory within zip to place files
SERVERDIR="cdserver"

# Folders to package
FOLDERS="config mods resources scripts structures"
# Mods to exclude
EXCLUDE="CTM Controlling DefaultOptions Ding JustEnoughResources LLOverlayReloaded MouseTweaks ReAuth ResourceLoader ThaumicJEI Toast fancymenu jeiintegration moreoverlays"
# Path to mods
MODDIR="./mods"
# Staging directory
TMP="./tmp"

if [ -e serverfiles/options.sh ]; then
    . serverfiles/options.sh
fi

main() {
    while getopts "m:kzn:v:s:f:x:t:hd:" arg; do
        case $arg in
            m) MODDIR="$OPTARG" ;;
            k) KEEPSTAGE=1 ;;
            z) NOZIP=1 ;;
            n) PACKNAME="$OPTARG" ;;
            v) PACKVER="$OPTARG" ;;
            s) SERVERVER="$OPTARG" ;;
            d) SERVERDIR="$OPTARG" ;;
            f) FOLDERS="$OPTARG" ;;
            x) EXCLUDE="$OPTARG" ;;
            t) TMP="$OPTARG" ;;
            h) help ;;
            *) exit 1 ;;
        esac
    done

    # Zip file to create
    PACKFILE=${PACKFILE:-"$PACKNAME-$PACKVER-v$SERVERVER.zip"}

    shift $((OPTIND - 1))
    if [ "$1" != "" ]; then
        if [ -d "$1" ]; then
            PACKFILE="$1/$PACKFILE"
        else
            PACKFILE="$1"
        fi
    fi
    # echo "$MODDIR - $KEEPSTAGE - $NOZIP - $PACKFILE"
    # exit

    if [ `ls "$MODDIR" | wc -l` -le 1 ]; then
        echo "Mods dir is not populated. Use the -m option to specify the path"
        echo "to the mods folder."
        exit 1
    fi

    STAGE="$TMP/$SERVERDIR"
    mkdir -p "$STAGE" || exit 1

    for f in $FOLDERS; do
        if [ "$f" != "mods" ]; then
            echo "Copying $f..."
            cp -a $f "$STAGE" || exit 1
        fi
    done
    
    echo "Copying mods..."
    mkdir -p "$STAGE/mods" || exit 1
    modlist | while read f; do
        cp "$MODDIR/$f" "$STAGE/mods" || exit 1
        chmod a-x "$STAGE/mods/$f" > /dev/null 2>&1
    done
    
    echo "Copying server pack files..."
    for f in serverfiles/*; do
        base="`basename "$f"`"
        if [ $base == "README.txt" ]; then
            grep -v "^!" "$f" > "$STAGE/$base"
        elif [ $base != 'options.sh' ]; then
            cp -a $f "$STAGE"
        fi
    done

    if [ $NOZIP ]; then
        return
    fi

    echo "Creating $PACKFILE..."
    fullpack="`realpath "$PACKFILE"`"
    (cd $TMP; zip -r "$fullpack" *)

    if [ $KEEPSTAGE ]; then
        return
    fi
    echo "Cleaning up..,"
    rm -rf "$TMP"
}

# Get a list of mods
modlist() {
    (
    cd "$MODDIR"
    declare -A xfiles

    for x in $EXCLUDE; do
        for f in "$x"[-_\ ]*.jar; do
            xfiles["$f"]=1
        done
    done

    for x in *.jar; do
        if [ ! ${xfiles["$x"]} ]; then
            echo "$x"
        fi
    done
    )
}

# Help screen
help() {

    cat <<-END
	Usage:
	$0 [-m MODDIR] [-n PACKNAME] [-v VERSION] [-s SERVERVERSION]
	  [-f FOLDERS] [-x EXCLUDE] [-t TMP] [-d INNERDIR] [-k] [-z] [output]

	MODDIR: Path to Minecraft mods
	PACKNAME: Name of pack
	VERSION: Pack version
	SERVERVERSION: Server pack version
	FOLDERS: Space-separated list of folders to include
	EXCLUDE: Space-separated list of mods to exclude
	TMP: Temporary direcory for staging
	INNERDIR: DIrectory to place files in within zip file

	output: Directory and/or filename of zip file

	-k: Keep temporary directory when done
	-z: No not create zip file
	END

    exit
}

main "$@"
