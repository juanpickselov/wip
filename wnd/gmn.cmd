@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

CALL git checkout main
GOTO :EOF

:usage
ECHO --------------------------------
ECHO Usage       : gmn
ECHO Description : git checkout main
ECHO --------------------------------
EXIT /b 1
