@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git remote prune %*
GOTO :EOF

:usage
ECHO ------------------------------------
ECHO Usage       : grp [args]
ECHO Description : git remote prune args
ECHO ------------------------------------
EXIT /b 1
