@echo off
echo %DATE% > %cd%\output.txt
set m=some new message
echo %m%
echo %PATH% > %cd%\output.txt
echo %cd% > %cd%\output.txt