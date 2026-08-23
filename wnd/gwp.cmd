@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

CALL git checkout wip
GOTO :EOF

:usage
ECHO -------------------------------
ECHO Usage       : gwp
ECHO Description : git checkout wip
ECHO -------------------------------
EXIT /b 1
