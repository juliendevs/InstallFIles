@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

echo Stockage des adresses necessaires au fonctionnement de videocopyinsightcapture.bat.

REM Set env variables pour videocopyinsightcapture.bat

REM Read .env file line by line
for /f "tokens=1,* delims==" %%a in ('type .env') do (
    set "%%a=%%b"
)

REM Après lecture les variables sont utilisables
echo diskFile is %diskFile%
echo networkAdd is %networkAdd%
echo logAdd is %logAdd% 

