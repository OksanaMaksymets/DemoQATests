@echo off

del %cd%\Build\parameters.txt 2>nul

echo %DATE% > %cd%\Build\output.txt
echo %PATH% >> %cd%\Build\output.txt

set loop=0
:loop
echo %Text% >> %cd%\Build\parameters.txt 2>nul
set /a loop=%loop%+1
if "%loop%"=="%Count%" goto next
call :loop
:next

