@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

ECHO:%PATH:;= & ECHO:%
GOTO :EOF

:usage
ECHO -------------------
ECHO Usage       : pth
ECHO Description : path
ECHO -------------------
EXIT /b 1
