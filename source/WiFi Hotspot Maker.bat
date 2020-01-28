@echo off
:aaaaaaaaaaaaaaaaa
title WiFi Hotspot Maker
if not exist "wifi_status.inf" echo set ststatus=off>"wifi_status.inf"
if exist "wifi_status.inf" copy "wifi_status.inf" "ws.bat" >nul
if exist "wifi_status.inf" call ws.bat
if exist "wifi_status.inf" del /f /q "ws.bat" >nul

if not exist "hotspot_info.inf" goto noexistingfile
:ghjjghj
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
if "%sss%" == "" (
echo set sss=Hotspot %username%>"hotspot_info.inf"
echo set kkk=keys%random%word>>"%hotspot_info.inf"
)
del /f /q "hi.bat" >nul


copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul


call :strn "%kkk%"
set tempnnn=%errolev%
if %tempnnn% lss 8 (
echo set sss=%sss%>"hotspot_info.inf"
echo set kkk=keys%random%word>>"%hotspot_info.inf"
call data\ppp.dll "The key was less than 8 digits, therefore it has been changed. Click on [Click to view the current key] to view the changed key." "Information" 0 64 0
)

copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul


if "%ststatus%" == "on" goto work2
if "%ststatus%" == "off" goto work
goto work

:makenew
echo set sss=Hotspot %username%>"hotspot_info.inf"
echo set kkk=key%random%word>>"%hotspot_info.inf"

:noexistingfile
echo set sss=Hotspot %username%>"hotspot_info.inf"
echo set kkk=keys%random%word>>"%hotspot_info.inf"
goto noex

:work
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul
set xyx=1
cls
data\abtf.dll FR1.dll
cls
call out.bat
del /f /q out.bat >nul

if %button% == 1 goto ld1

if %button% == 2 goto ld2

if %button% == 3 goto nxlll

if %button% == 4 goto noex

cls
echo Error!
pause >nul
cls
goto work

:hdpt

goto rad

:ld1
goto showkey

:ld2
goto showssid

:work2
goto stopp

:work3
goto noex

:showkey

call data\ppp.dll "%kkk%" "Key" 0 64 0
cls
if %xyx% == 1 goto work
if %xyx% == 2 goto work2
if %xyx% == 3 goto work3

:showssid


call data\ppp.dll "%sss%" "S. S. I. D." 0 64 0
cls
if %xyx% == 1 goto work
if %xyx% == 2 goto work2
if %xyx% == 3 goto work3

:nxlll
call :refstats

netsh wlan set hostednetwork mode=allow ssid="%sss%" key=%kkk% >nul

netsh wlan start hostednetwork >nul
echo set ststatus=on>"wifi_status.inf"
call :refstats
cls
echo Started!
cls
goto stopp

:nxll2
call :refstats

netsh wlan stop hostednetwork >nul
cls
echo set ststatus=off>"wifi_status.inf"
call :refstats
cls
echo Stopped!
cls
goto work

:noex
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul
set xyx=3
cls
data\abtf.dll FR3.dll
cls
call out.bat
del /f /q out.bat >nul
cls

if %button% == 1 goto ld1

if %button% == 2 goto ld2

if %button% == 3 goto noex1

if %button% == 4 goto work

cls
echo Error!
pause >nul
cls
goto noex

:handler2
cls
if exist "wifi_status.inf" copy "wifi_status.inf" "ws.bat" >nul
if exist "wifi_status.inf" call ws.bat
if exist "wifi_status.inf" del /f /q "ws.bat" >nul
if "%ststatus%" == "on" goto stopp
if "%ststatus%" == "off" goto work

:stopp
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul
set xyx=2
cls
data\abtf.dll FR2.dll
cls
call out.bat
del /f /q out.bat >nul

if %button% == 1 goto ld1

if %button% == 2 goto ld2

if %button% == 3 goto nxll2

if %button% == 4 goto noex

cls
echo Error!
pause >nul
cls
goto stopp


::Nothing

:noex1
cls
call :strn "%skeyk%"
set tempnnn=%errolev%
if %tempnnn% lss 8 goto error1
set ssdd1=%ssidkk%
set key1=%skeyk%
echo set sss=%ssidkk%>"hotspot_info.inf"
echo set kkk=%skeyk%>>"hotspot_info.inf"
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul
cls
echo File edited!
cls
goto work

:error1
call data\ppp.dll "The key should be of at least 8 digits." "Error" 0 64 0
cls
goto noex

:handler3
call :refstats
if "%ststatus%" == "on" goto stopp
if "%ststatus%" == "off" goto work

:nx1

copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul

netsh wlan set hostednetwork mode=allow ssid="%sss%" key=%kkk% >nul

netsh wlan start hostednetwork >nul
cls
echo Started!
goto work

:nx2
netsh wlan stop hostednetwork >nul
cls
echo Stopped!
goto work

:refstats
if exist "wifi_status.inf" copy "wifi_status.inf" "ws.bat" >nul
if exist "wifi_status.inf" call ws.bat
if exist "wifi_status.inf" del /f /q "ws.bat" >nul
if not exist "hotspot_info.inf" goto noex
copy "hotspot_info.inf" "hi.bat" >nul
call hi.bat
del /f /q "hi.bat" >nul


:strn
if exist length.inf del /f /q length.inf >nul
data\str.dll -c %1>length.inf
set /p errolev=<length.inf
del /f /q length.inf >nul

