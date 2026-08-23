@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

CD & CLS
GOTO :EOF

:usage
ECHO ----------------------------------
ECHO Usage       : clear
ECHO Description : cls ^& errorlevel 0
ECHO ----------------------------------
EXIT /b 1
