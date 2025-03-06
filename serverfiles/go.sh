#!/bin/sh

# If you need to specify the path to java:
# JAVAEXE="/usr/lib64/openjdk8/bin/java"

# Minecraft and Forge versions
MCVER=1.12.2
FORGEVER=14.23.5.2860
FORGEURL="https://maven.minecraftforge.net/net/minecraftforge/forge/$MCVER-$FORGEVER/forge-$MCVER-$FORGEVER-installer.jar"

INSTALLER="forge-$MCVER-$FORGEVER-installer.jar"
SERVER="forge-$MCVER-$FORGEVER.jar"

JAVAEXE=${JAVAEXE:-java}

if ! which "$JAVAEXE" > /dev/null 2>&1; then
    echo "Couldn't find a Java exeutable. Try setting JAVAEXE to the full path"
    echo "of a Java 8 executable before running this script"
    exit 1
fi

# See if we need to run the installer
if [ ! -e "$SERVER" ]; then
    # See if we need to download the installer
    if [ ! -e "$INSTALLER" ]; then
        if which wget > /dev/null 2>&1; then
            echo "Downloading installer using wget..."
            wget "$FORGEURL" || noinstall=1
        elif which curl > /dev/null 2>&1; then
            echo "Downloading installer using curl..."
            curl "$FORGEURL" --output "$INSTALLER" || noinstall=1
        else
            noinstall=1
        fi
        if [ $noinstall ]; then
            echo "Couldn't download the Forge installer"
            echo "Please download the following file and place it in this directory:"
            echo "$FORGEURL"
            exit 1
        fi
    fi
    echo "Running installer..."
    "$JAVAEXE" -jar forge-$MCVER-$FORGEVER-installer.jar --installServer . || exit 1
fi

# Run the server
echo "Starting server..."
"$JAVAEXE" -jar forge-$MCVER-$FORGEVER.jar nogui

echo ""
echo "Server exited. To restart, run:"
echo "$0"
