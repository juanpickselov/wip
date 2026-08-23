@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

ECHO OFF | clip
GOTO :EOF

:usage
ECHO ------------------------------
ECHO Usage       : clp
ECHO Description : empty clipboard
ECHO ------------------------------
EXIT /b 1
