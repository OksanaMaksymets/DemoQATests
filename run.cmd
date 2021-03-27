@echo off

del %cd%\parameters.txt

echo %DATE% > %cd%\output.txt
echo %PATH% >> %cd%\output.txt

set loop=0
:loop
echo %Text% >> %cd%\parameters.txt
set /a loop=%loop%+1
if "%loop%"=="%Count%" goto next
call :loop
:next

