@echo off
:: https://github.com/wellsilver/EZServer/tree/main/lite
if exist %APPDATA%/EZServerlite/serv/lol.jar del %APPDATA%/EZServerlite/serv/lol.jar
:home
cls
:hom
echo Type in a version to download:
set /p w=$ 


:: Ifs
if %w%==1.18 goto 1.18
if %w%==P1.18 goto P1.18
goto error



::versions

:1.18
bitsadmin /transfer "Download Mojang 1.18" /download /priority foreground https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar %APPDATA%/EZServerlite/serv/lol.jar
goto eof

:P1.18
bitsadmin /transfer "Download paper 1.18#177" /download /priority foreground https://papermc.io/api/v2/projects/paper/versions/1.18.1/builds/177/downloads/paper-1.18.1-177.jar %APPDATA%/EZServerlite/serv/lol.jar
goto eof




::eg
:error
cls
echo This is an invalid version-
pause
goto home
