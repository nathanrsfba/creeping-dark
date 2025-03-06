@echo off

rem If you need to specify the path to java:
rem set JAVAEXE=c:\Program Files\Java\jdk1.8.0_191\bin\java.exe

rem Minecraft and Forge versions
set MCVER=1.12.2
set FORGEVER=14.23.5.2860
set FORGEURL=https://maven.minecraftforge.net/net/minecraftforge/forge/%MCVER%-%FORGEVER%/forge-%MCVER%-%FORGEVER%-installer.jar

if "%JAVAEXE%" == "" set JAVAEXE=java

set INSTALLER=forge-%MCVER%-%FORGEVER%-installer.jar
set SERVER=forge-%MCVER%-%FORGEVER%.jar

rem See if we need to run the installer
if exist %SERVER% goto run

rem See if we need to download the installer
if exist %INSTALLER% goto install

echo Downloading installer...
curl %FORGEURL% --output %INSTALLER%

if not errorlevel 1 goto install
echo Unable to download the Forge installer. Please download the following
echo file and place it in this folder:
echo %FORGEURL%
goto end

:install
echo Running installer...
"%JAVAEXE%" -jar %INSTALLER% --installServer .
if errorlevel 1 goto error

:run
echo Launching server...
"%JAVAEXE%" -jar %SERVER% nogui
if errorlevel 1 goto error
goto end

:error
echo An error occurred, exiting

:end
echo.
pause
