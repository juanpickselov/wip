@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

CALL git checkout develop
GOTO :EOF

:usage
ECHO -----------------------------------
ECHO Usage       : gdv
ECHO Description : git checkout develop
ECHO -----------------------------------
EXIT /b 1
