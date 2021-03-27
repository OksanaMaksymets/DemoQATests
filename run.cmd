@echo off

del %cd%\Build\parameters.txt

echo %DATE% > %cd%\Build\output.txt
echo %PATH% >> %cd%\Build\output.txt
echo %cd% >> %cd%\Build\output.txt

set loop=0
:loop
echo %Text% >> %cd%\Build\parameters.txt
set /a loop=%loop%+1
if "%loop%"=="%Count%" goto next
call :loop
:next

