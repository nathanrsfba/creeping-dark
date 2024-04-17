@echo off
if exist mods cd mods
if exist ..\mods cd ..\mods
if not exist ..\mods.txt goto err
dir /b *.jar > ..\mods.txt
goto end

:err
echo Can't find mods directory

:end
