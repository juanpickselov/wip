@ECHO OFF
IF /I "%1" == "-h" GOTO usage
IF /I "%1" == "/?" GOTO usage

CALL git pull %*
GOTO :EOF

:usage
ECHO ----------------------------
ECHO Usage       : gpl [args]
ECHO Description : git pull args
ECHO ----------------------------
EXIT /b 1
