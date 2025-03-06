Creeping Dark Server Pack
=========================

This server pack should have everything you need to run a Creeping Dark
server. It includes:

* A batch file (for Windows) and a shell script (for Unix) that will
  run the server
* The mods and configuration required to run the pack
* A default server.properties file

To use it, do the following:

1. Install Java 8 if you don't already have it.
2. If Java isn't in your path (or you need to run a specific version), you can
   set an environnent variable called JAVAEXE to point to the proper Java
   executable.

   On Windows this looks something like:
   ```
   set JAVAEXE=c:\Program Files\Java\jdk1.8.0_191\bin\java.exe
   ```

   On Unix this looks something like:
   ```
   JAVAEXE=/usr/lib64/openjdk8/bin/java ./go.sh
   ```

   Adjust the paths as appropriate to your installation. You can also edit the
   go.bat or go.sh file to set it.
3. From the command line, run go.bat or go.sh. On the first run, this will
   download and install a Forge server in the current directory. Once that's
   done, edit the `eula.txt` file and accept the EULA.
4. If you want to use Biomes O' Plenty or Realistic Terrain Generation, go into
   the config/defaultworldgenerator-port folder, delete the default
   `worldsettings.data` file, and rename either `worldsettings.data.bop` or
   `worldsettings.data.rtg` to `worldsettings.data`.

   There's also copies of the configuration for some of the other world types
   in this folder as well.
5. Run the server again. Once the server has finished starting up, check the
   server.properties file for any changes you want to make.

   In particular make sure "enable-command-block" is set to "true", or the
   custom dungeons in the pack won't work. It might also be a good idea to set
   allow-flight=true, as there are legit flight items in the pack.

   The server pack contains a copy of server.properties with these changes
   made, but it's good to verify that Minecraft hasn't mangled them.

   Shutdown and restart the server if you make any changes.
7. The server is now ready for use, or to upload to your hosting platform.

Manual Setup
------------

If for some reason the batch or shell script doesn't work, you can install and
launch the server as following:

First of all, download a copy of the Forge installer from
files.minecraftforge.net, and place it in this directory. You'll need Forge
for Minecraft 1.12.2, version 14.23.5.2860. Later versions for 1.12.2 may also
work, but this is the one the pack was tested with.

The Forge installer can be run on the command line as follows:

```
java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer .
```

This will install the server in the current directory. You can also run the
installer in GUI mode (if your system is appropriately equipped) by omitting
the options after the .jar file above, or in most cases just double-clicking
the .jar in your file manager.

Once the server is installed, the server can be started as follows:

```
java -jar forge-1.12.2-14.23.5.2860.jar nogui
```

If for some reason the .jar file is named differently (perhaps you've chosen
to install a newer version of Forge, or maybe I updated it and was an idiot
and forgot to update this document), be sure to adjust the above commands
accordingly.

The rest of the setup continues as described in the previous section.

