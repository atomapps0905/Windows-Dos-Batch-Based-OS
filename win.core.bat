@echo off
color 0f
title Windows DOS 1
cls

:start
set /p "str=A > "
if %str%==ver goto strver
if %str%==win goto Boot

:strver
echo MS-DOS Version 3.30
goto start

:Boot
cd C_Drive
cd win.info
type win.info1001.info
cd ..\..\
timeout 10 >nul
goto Core

:Core
cls
cd C_Drive
cd win.graphics
type win.graphics1002.ghp
cd ..\..\
set /p "osf=Options : "
if %osd%==NOTEPAD.EXE goto Notepad.exe
if %osd%==TERMINAL.EXE goto Terminal.exe

:Terminal.exe
@echo off
color 0a

:zeusterm
set /p input=^[Win~Dos^] ^- %CD%^>
%input%
if %input%==exit goto Core
goto zeusterm

:Notepad.exe
@echo off
color 0a
set name=United
title %name% - Win Dos Notepads
:options
cls
echo ________________________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo - %name%
echo.
echo Press 0 to edit a document that already exists.
echo Press 1 to edit the name of your document.
echo Press 2 to edit the contents of your document.
echo Press 3 for help.
echo Press 4 to Core

set /p you=">"
if %you%==1 goto 1
if %you%==2 goto 2
if %you%==3 goto help
if %you%==4 goto 4
if %you%==0 goto 0

cls
echo *********************************
echo sorry invalid number!
echo *********************************
ping localhost -n 2 >nul
goto options

:1
cls
echo ________________________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo - %name%
echo. 
echo Name Your Document .. eg. 'hello.txt' or 'hello.bat'
set /p name=">"
title %name% - Win Dos Notepad

goto options

:2
cls
echo ________________________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo - %name%
echo. 
echo  
echo Click on '>' to Quit
echo.
echo.
set /p content=">"
echo %content%>>%name%
cls
echo Save Successful!
ping localhost -n 2 >nul
goto 2

:help
cls
echo ________________________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo - %name%
echo. 
echo If you are having trouble with Win Dos Notepad please pm me in instructables ...
echo Also please tell me what you think =]
echo.
pause
goto options

:4
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo __Made by Win Dos_________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo.
ping localhost -n 5 >nul
cd ..\..\


:0
cls
echo ________________________________________
echo.
echo             Win Dos Notepad
echo ________________________________________
echo - %name%
echo. 
echo Type in the name eg. 'hello.txt' or 'hello.bat'
echo The file has to be in the same directory as my notpad!
set /p edit=">"
edit %edit%
goto options
