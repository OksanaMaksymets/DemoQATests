@echo off
echo %DATE% > %cd%\output.txt
echo %m%
echo %PATH% > %cd%\output.txt
echo %cd% > %cd%\output.txt

set loop=0
:loop
echo %Text%
set /a loop=%loop%+1
if "%loop%"=="%Count%" goto next
call :loop
:next

