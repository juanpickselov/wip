@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

SET "_datenoslash=%date:/=%"
SET "_dateplain=%_datenoslash: =%"
ECHO %_dateplain%
GOTO :EOF

:usage
ECHO ---------------------
ECHO Usage       : plndte
ECHO Description : date
ECHO ---------------------
EXIT /b 1
