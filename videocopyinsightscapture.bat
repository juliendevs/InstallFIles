@echo off 				

Rem Ce programme permet la copie de videos depuis le disque E:\ vers le server TRUENAS.
Rem En parallèle un fichier log liste les fichiers copiés ainsi que les erreurs. 

echo Debut de copie des videos Insights Capture. 

ECHO Date: %DATE%
ECHO Time: %TIME%

SET _datetime=%DATE:~7,2%-%DATE:~4,2%-%DATE:~10,4%
ECHO %_datetime%


robocopy "E:\Insights Capture" "\\TRUENAS\faab\Insights Capture" /XO /UNILOG+:"\\TRUENAS\faab\mirrorlogs\%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%.log" /V /TS /NC /NP 


echo Fin de copie des videos Insights Capture. 

exit


