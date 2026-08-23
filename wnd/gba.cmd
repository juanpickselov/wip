@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage
IF [%1] NEQ [] GOTO usage

CALL git branch -a
GOTO :EOF

:usage
ECHO ----------------------------
ECHO Usage       : gba
ECHO Description : git branch -a
ECHO ----------------------------
EXIT /b 1
