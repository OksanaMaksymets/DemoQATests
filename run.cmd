@echo off
echo %DATE% > %cd%\build\output.txt
echo %m%
echo %PATH% >> %cd%\build\output.txt
echo %cd% >> %cd%\build\output.txt

set loop=0
:loop
echo %Text% >> %cd%\build\parameters.txt
set /a loop=%loop%+1
if "%loop%"=="%Count%" goto next
call :loop
:next

